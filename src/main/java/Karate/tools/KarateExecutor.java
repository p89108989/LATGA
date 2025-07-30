package Karate.tools;

import java.io.*;
import java.nio.file.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 改進版 Karate測試執行器
 * 解決了JAR路徑問題，提供多種執行方式
 *
 * @author StaticBlackbox
 * @version 2.0
 */
public class KarateExecutor {

    private static final String TEMP_DIR_PREFIX = "karate_syntax_check_";
    private static final int DEFAULT_TIMEOUT_SECONDS = 30;

    private final ExecutorConfig config;

    /**
     * 執行器配置類（改進版）
     */
    public static class ExecutorConfig {
        private String karateJarPath = ""; // 默認為空，自動偵測
        private int timeoutSeconds = DEFAULT_TIMEOUT_SECONDS;
        private boolean cleanupTempFiles = true;
        private boolean verboseOutput = false;
        private String javaCommand = "java";
        private List<String> additionalJvmArgs = new ArrayList<>();
        private ExecutionMode executionMode = ExecutionMode.AUTO_DETECT; //  執行模式

        public ExecutorConfig() {
            // 添加一些常用的JVM參數
            additionalJvmArgs.add("-Xmx512m");
            additionalJvmArgs.add("-Dfile.encoding=UTF-8");
        }

        // Builder methods
        public ExecutorConfig karateJarPath(String path) { this.karateJarPath = path; return this; }
        public ExecutorConfig timeoutSeconds(int seconds) { this.timeoutSeconds = seconds; return this; }
        public ExecutorConfig cleanupTempFiles(boolean cleanup) { this.cleanupTempFiles = cleanup; return this; }
        public ExecutorConfig verboseOutput(boolean verbose) { this.verboseOutput = verbose; return this; }
        public ExecutorConfig javaCommand(String command) { this.javaCommand = command; return this; }
        public ExecutorConfig addJvmArg(String arg) { this.additionalJvmArgs.add(arg); return this; }
        public ExecutorConfig executionMode(ExecutionMode mode) { this.executionMode = mode; return this; }

        // Getters
        public String getKarateJarPath() { return karateJarPath; }
        public int getTimeoutSeconds() { return timeoutSeconds; }
        public boolean isCleanupTempFiles() { return cleanupTempFiles; }
        public boolean isVerboseOutput() { return verboseOutput; }
        public String getJavaCommand() { return javaCommand; }
        public List<String> getAdditionalJvmArgs() { return new ArrayList<>(additionalJvmArgs); }
        public ExecutionMode getExecutionMode() { return executionMode; }

        public static ExecutorConfig defaultConfig() { return new ExecutorConfig(); }
        public static ExecutorConfig quickCheck() {
            return new ExecutorConfig().timeoutSeconds(15).cleanupTempFiles(true).verboseOutput(false);
        }
    }

    /**
     *  執行模式枚舉
     */
    public enum ExecutionMode {
        AUTO_DETECT,    // 自動偵測最佳執行方式
        CLASSPATH,      // 使用classpath上的Karate類
        EXTERNAL_JAR,   // 使用外部JAR文件
        MAVEN_EXEC      // 使用Maven執行（如果可用）
    }

    /**
     * 執行結果類（保持不變）
     */
    public static class ExecutionResult {
        private final boolean syntaxValid;
        private final boolean executionSuccessful;
        private final String standardOutput;
        private final String errorOutput;
        private final int exitCode;
        private final long executionTimeMillis;
        private final List<String> syntaxErrors;
        private final List<String> warnings;
        private final String tempDirectoryPath;
        private final ExecutionMode usedExecutionMode; //  實際使用的執行模式

        private ExecutionResult(Builder builder) {
            this.syntaxValid = builder.syntaxValid;
            this.executionSuccessful = builder.executionSuccessful;
            this.standardOutput = builder.standardOutput;
            this.errorOutput = builder.errorOutput;
            this.exitCode = builder.exitCode;
            this.executionTimeMillis = builder.executionTimeMillis;
            this.syntaxErrors = Collections.unmodifiableList(builder.syntaxErrors);
            this.warnings = Collections.unmodifiableList(builder.warnings);
            this.tempDirectoryPath = builder.tempDirectoryPath;
            this.usedExecutionMode = builder.usedExecutionMode;
        }

        // Getters
        public boolean isSyntaxValid() { return syntaxValid; }
        public boolean isExecutionSuccessful() { return executionSuccessful; }
        public String getStandardOutput() { return standardOutput; }
        public String getErrorOutput() { return errorOutput; }
        public int getExitCode() { return exitCode; }
        public long getExecutionTimeMillis() { return executionTimeMillis; }
        public List<String> getSyntaxErrors() { return syntaxErrors; }
        public List<String> getWarnings() { return warnings; }
        public String getTempDirectoryPath() { return tempDirectoryPath; }
        public ExecutionMode getUsedExecutionMode() { return usedExecutionMode; }

        public boolean hasErrors() { return !syntaxErrors.isEmpty() || !executionSuccessful; }
        public boolean hasWarnings() { return !warnings.isEmpty(); }

        public String getSummary() {
            String modeInfo = usedExecutionMode != null ? " [" + usedExecutionMode + "]" : "";
            if (syntaxValid && executionSuccessful) {
                return String.format(" 執行驗證通過 (執行時間: %dms)%s", executionTimeMillis, modeInfo);
            } else if (!syntaxValid) {
                return String.format(" 語法錯誤 (%d個錯誤)%s", syntaxErrors.size(), modeInfo);
            } else {
                return String.format(" 語法正確但執行失敗 (退出碼: %d)%s", exitCode, modeInfo);
            }
        }

        public static class Builder {
            private boolean syntaxValid = false;
            private boolean executionSuccessful = false;
            private String standardOutput = "";
            private String errorOutput = "";
            private int exitCode = -1;
            private long executionTimeMillis = 0;
            private List<String> syntaxErrors = new ArrayList<>();
            private List<String> warnings = new ArrayList<>();
            private String tempDirectoryPath = "";
            private ExecutionMode usedExecutionMode = ExecutionMode.AUTO_DETECT;

            public Builder syntaxValid(boolean valid) { this.syntaxValid = valid; return this; }
            public Builder executionSuccessful(boolean successful) { this.executionSuccessful = successful; return this; }
            public Builder standardOutput(String output) { this.standardOutput = output; return this; }
            public Builder errorOutput(String output) { this.errorOutput = output; return this; }
            public Builder exitCode(int code) { this.exitCode = code; return this; }
            public Builder executionTime(long millis) { this.executionTimeMillis = millis; return this; }
            public Builder addSyntaxError(String error) { this.syntaxErrors.add(error); return this; }
            public Builder addWarning(String warning) { this.warnings.add(warning); return this; }
            public Builder tempDirectoryPath(String path) { this.tempDirectoryPath = path; return this; }
            public Builder usedExecutionMode(ExecutionMode mode) { this.usedExecutionMode = mode; return this; }

            public ExecutionResult build() { return new ExecutionResult(this); }
        }
    }

    /**
     * 建構子
     */
    public KarateExecutor() { this(ExecutorConfig.defaultConfig()); }

    public KarateExecutor(ExecutorConfig config) { this.config = config; }

    /**
     * 驗證單個Karate測試腳本的語法正確性
     */
    public ExecutionResult validateSyntax(String karateContent) {
        return validateSyntax(karateContent, "syntax_check");
    }

    /**
     * 驗證Karate測試腳本的語法正確性
     */
    public ExecutionResult validateSyntax(String karateContent, String testName) {
        Path tempDir = null;
        long startTime = System.currentTimeMillis();

        try {
            tempDir = createTempDirectory(testName);
            Path featureFile = writeKarateFile(tempDir, karateContent, testName);

            //  選擇最佳的執行模式
            ExecutionMode selectedMode = selectExecutionMode();
            ExecutionResult result = executeKarateTest(tempDir, featureFile, selectedMode);

            long executionTime = System.currentTimeMillis() - startTime;
            return new ExecutionResult.Builder()
                    .syntaxValid(result.isSyntaxValid())
                    .executionSuccessful(result.isExecutionSuccessful())
                    .standardOutput(result.getStandardOutput())
                    .errorOutput(result.getErrorOutput())
                    .exitCode(result.getExitCode())
                    .executionTime(executionTime)
                    .tempDirectoryPath(tempDir.toString())
                    .usedExecutionMode(selectedMode)
                    .build();

        } catch (Exception e) {
            long executionTime = System.currentTimeMillis() - startTime;
            return new ExecutionResult.Builder()
                    .syntaxValid(false)
                    .executionSuccessful(false)
                    .errorOutput("執行過程發生異常: " + e.getMessage())
                    .exitCode(-1)
                    .executionTime(executionTime)
                    .addSyntaxError("系統錯誤: " + e.getMessage())
                    .tempDirectoryPath(tempDir != null ? tempDir.toString() : "")
                    .usedExecutionMode(ExecutionMode.AUTO_DETECT)
                    .build();
        } finally {
            if (config.isCleanupTempFiles() && tempDir != null) {
                cleanupTempDirectory(tempDir);
            }
        }
    }

    /**
     *  選擇最佳的執行模式
     */
    private ExecutionMode selectExecutionMode() {
        if (config.getExecutionMode() != ExecutionMode.AUTO_DETECT) {
            return config.getExecutionMode();
        }

        // 自動偵測邏輯
        if (isKarateOnClasspath()) {
            return ExecutionMode.CLASSPATH;
        }

        if (isExternalJarAvailable()) {
            return ExecutionMode.EXTERNAL_JAR;
        }

        if (isMavenAvailable()) {
            return ExecutionMode.MAVEN_EXEC;
        }

        // 默認嘗試外部JAR模式（即使可能失敗）
        return ExecutionMode.EXTERNAL_JAR;
    }

    /**
     *  檢查Karate是否在classpath上
     */
    private boolean isKarateOnClasspath() {
        try {
            Class.forName("com.intuit.karate.core.Feature");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /**
     *  檢查外部JAR是否可用
     */
    private boolean isExternalJarAvailable() {
        if (config.getKarateJarPath().isEmpty()) {
            // 嘗試常見的位置
            String[] commonPaths = {
                    "target/lib/karate.jar",
                    "lib/karate.jar",
                    "karate.jar"
            };

            for (String path : commonPaths) {
                if (Files.exists(Paths.get(path))) {
                    return true;
                }
            }
            return false;
        } else {
            return Files.exists(Paths.get(config.getKarateJarPath()));
        }
    }

    /**
     *  檢查Maven是否可用
     */
    private boolean isMavenAvailable() {
        try {
            Process process = new ProcessBuilder("mvn", "--version").start();
            boolean finished = process.waitFor(5, TimeUnit.SECONDS);
            return finished && process.exitValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * 批量驗證多個Karate測試腳本
     */
    public List<ExecutionResult> validateMultipleSyntax(List<String> karateContents) {
        List<ExecutionResult> results = new ArrayList<>();

        for (int i = 0; i < karateContents.size(); i++) {
            String content = karateContents.get(i);
            String testName = "batch_test_" + (i + 1);

            ExecutionResult result = validateSyntax(content, testName);
            results.add(result);

            if (config.isVerboseOutput()) {
                System.out.println(String.format("完成測試 %d/%d: %s",
                        i + 1, karateContents.size(), result.getSummary()));
            }
        }

        return results;
    }

    /**
     * 檢查Karate環境是否可用
     */
    public boolean isKarateAvailable() {
        ExecutionMode mode = selectExecutionMode();

        switch (mode) {
            case CLASSPATH:
                return isKarateOnClasspath();
            case EXTERNAL_JAR:
                return isExternalJarAvailable();
            case MAVEN_EXEC:
                return isMavenAvailable();
            default:
                return isKarateOnClasspath() || isExternalJarAvailable() || isMavenAvailable();
        }
    }

    /**
     * 獲取環境資訊
     */
    public String getEnvironmentInfo() {
        StringBuilder info = new StringBuilder();
        info.append("🔧 Karate執行器環境資訊\n");
        info.append("=".repeat(40)).append("\n");
        info.append("Java命令: ").append(config.getJavaCommand()).append("\n");
        info.append("執行超時: ").append(config.getTimeoutSeconds()).append("秒\n");
        info.append("清理臨時檔案: ").append(config.isCleanupTempFiles() ? "是" : "否").append("\n");
        info.append("詳細輸出: ").append(config.isVerboseOutput() ? "是" : "否").append("\n");

        //  檢查各種執行模式的可用性
        info.append("\n 執行模式檢查:\n");
        info.append("   Classpath模式: ").append(isKarateOnClasspath() ? " 可用" : " 不可用").append("\n");
        info.append("   外部JAR模式: ").append(isExternalJarAvailable() ? " 可用" : " 不可用").append("\n");
        info.append("   Maven執行模式: ").append(isMavenAvailable() ? " 可用" : " 不可用").append("\n");

        ExecutionMode selectedMode = selectExecutionMode();
        info.append("\n 選定執行模式: ").append(selectedMode).append("\n");
        info.append(" 整體可用性: ").append(isKarateAvailable() ? " 可用" : " 不可用").append("\n");

        return info.toString();
    }

    // ==================== 私有方法 ====================

    private Path createTempDirectory(String testName) throws IOException {
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
        String dirName = TEMP_DIR_PREFIX + testName + "_" + timestamp;

        Path tempDir = Paths.get(System.getProperty("java.io.tmpdir"), dirName);
        Files.createDirectories(tempDir);

        if (config.isVerboseOutput()) {
            System.out.println("創建臨時目錄: " + tempDir);
        }

        return tempDir;
    }

    private Path writeKarateFile(Path tempDir, String karateContent, String testName) throws IOException {
        String fileName = testName.endsWith(".feature") ? testName : testName + ".feature";
        Path featureFile = tempDir.resolve(fileName);

        Files.write(featureFile, karateContent.getBytes("UTF-8"));

        if (config.isVerboseOutput()) {
            System.out.println("寫入測試檔案: " + featureFile);
        }

        return featureFile;
    }

    /**
     *  根據執行模式執行Karate測試
     */
    private ExecutionResult executeKarateTest(Path tempDir, Path featureFile, ExecutionMode mode)
            throws IOException, InterruptedException {

        List<String> command;

        switch (mode) {
            case CLASSPATH:
                command = buildClasspathCommand(featureFile);
                break;
            case EXTERNAL_JAR:
                command = buildExternalJarCommand(featureFile);
                break;
            case MAVEN_EXEC:
                command = buildMavenCommand(featureFile);
                break;
            default:
                throw new IllegalStateException("不支援的執行模式: " + mode);
        }

        if (config.isVerboseOutput()) {
            System.out.println("執行命令 [" + mode + "]: " + String.join(" ", command));
        }

        ProcessBuilder processBuilder = new ProcessBuilder(command);
        processBuilder.directory(tempDir.toFile());
        processBuilder.redirectErrorStream(false);

        Process process = processBuilder.start();

        StringBuilder stdout = new StringBuilder();
        StringBuilder stderr = new StringBuilder();

        Thread stdoutReader = new Thread(() -> readStream(process.getInputStream(), stdout));
        Thread stderrReader = new Thread(() -> readStream(process.getErrorStream(), stderr));

        stdoutReader.start();
        stderrReader.start();

        boolean finished = process.waitFor(config.getTimeoutSeconds(), TimeUnit.SECONDS);

        if (!finished) {
            process.destroyForcibly();
            throw new RuntimeException("測試執行超時 (" + config.getTimeoutSeconds() + "秒)");
        }

        stdoutReader.join(1000);
        stderrReader.join(1000);

        int exitCode = process.exitValue();
        String standardOutput = stdout.toString();
        String errorOutput = stderr.toString();

        return analyzeExecutionResult(exitCode, standardOutput, errorOutput);
    }

    /**
     *  構建classpath執行命令
     */
    private List<String> buildClasspathCommand(Path featureFile) {
        List<String> command = new ArrayList<>();
        command.add(config.getJavaCommand());
        command.addAll(config.getAdditionalJvmArgs());
        command.add("-cp");
        command.add(System.getProperty("java.class.path"));
        command.add("com.intuit.karate.Main");
        command.add(featureFile.toString());
        command.add("--dryrun");

        return command;
    }

    /**
     *  構建外部JAR執行命令
     */
    private List<String> buildExternalJarCommand(Path featureFile) {
        List<String> command = new ArrayList<>();
        command.add(config.getJavaCommand());
        command.addAll(config.getAdditionalJvmArgs());
        command.add("-jar");

        // 尋找JAR文件
        String jarPath = findKarateJar();
        command.add(jarPath);

        command.add(featureFile.toString());
        command.add("--dryrun");

        return command;
    }

    /**
     *  構建Maven執行命令
     */
    private List<String> buildMavenCommand(Path featureFile) {
        List<String> command = new ArrayList<>();
        command.add("mvn");
        command.add("exec:java");
        command.add("-Dexec.mainClass=com.intuit.karate.Main");
        command.add("-Dexec.args=" + featureFile.toString() + " --dryrun");

        return command;
    }

    /**
     *  尋找Karate JAR文件
     */
    private String findKarateJar() {
        if (!config.getKarateJarPath().isEmpty()) {
            return config.getKarateJarPath();
        }

        // 嘗試常見的位置
        String[] commonPaths = {
                "target/lib/karate.jar",
                "lib/karate.jar",
                "karate.jar"
        };

        for (String path : commonPaths) {
            if (Files.exists(Paths.get(path))) {
                return path;
            }
        }

        throw new RuntimeException("找不到Karate JAR文件。請檢查路徑配置或將JAR文件放置在以下位置之一: " +
                Arrays.toString(commonPaths));
    }

    private void readStream(InputStream inputStream, StringBuilder output) {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }
        } catch (IOException e) {
            output.append("讀取輸出時發生錯誤: ").append(e.getMessage());
        }
    }

    private ExecutionResult analyzeExecutionResult(int exitCode, String stdout, String stderr) {
        ExecutionResult.Builder builder = new ExecutionResult.Builder()
                .exitCode(exitCode)
                .standardOutput(stdout)
                .errorOutput(stderr)
                .executionSuccessful(exitCode == 0);

        List<String> syntaxErrors = parseSyntaxErrors(stderr, stdout);
        for (String error : syntaxErrors) {
            builder.addSyntaxError(error);
        }

        List<String> warnings = parseWarnings(stderr, stdout);
        for (String warning : warnings) {
            builder.addWarning(warning);
        }

        boolean syntaxValid = syntaxErrors.isEmpty() && !containsKnownSyntaxErrorPatterns(stderr, stdout);
        builder.syntaxValid(syntaxValid);

        return builder.build();
    }

    private List<String> parseSyntaxErrors(String stderr, String stdout) {
        List<String> errors = new ArrayList<>();

        String[] errorPatterns = {
                "SyntaxError.*",
                "ParseException.*",
                ".*syntax error.*",
                ".*unexpected token.*",
                ".*invalid syntax.*",
                ".*compilation failed.*"
        };

        String combinedOutput = stderr + "\n" + stdout;

        for (String pattern : errorPatterns) {
            Pattern p = Pattern.compile(pattern, Pattern.CASE_INSENSITIVE | Pattern.MULTILINE);
            Matcher m = p.matcher(combinedOutput);

            while (m.find()) {
                String error = m.group().trim();
                if (!error.isEmpty() && !errors.contains(error)) {
                    errors.add(error);
                }
            }
        }

        return errors;
    }

    private List<String> parseWarnings(String stderr, String stdout) {
        List<String> warnings = new ArrayList<>();

        String[] warningPatterns = {
                "WARNING.*",
                "WARN.*",
                ".*deprecated.*"
        };

        String combinedOutput = stderr + "\n" + stdout;

        for (String pattern : warningPatterns) {
            Pattern p = Pattern.compile(pattern, Pattern.CASE_INSENSITIVE | Pattern.MULTILINE);
            Matcher m = p.matcher(combinedOutput);

            while (m.find()) {
                String warning = m.group().trim();
                if (!warning.isEmpty() && !warnings.contains(warning)) {
                    warnings.add(warning);
                }
            }
        }

        return warnings;
    }

    private boolean containsKnownSyntaxErrorPatterns(String stderr, String stdout) {
        String combinedOutput = (stderr + "\n" + stdout).toLowerCase();

        String[] fatalPatterns = {
                "fatal error",
                "compilation failed",
                "could not compile",
                "syntax is invalid"
        };

        for (String pattern : fatalPatterns) {
            if (combinedOutput.contains(pattern)) {
                return true;
            }
        }

        return false;
    }

    private void cleanupTempDirectory(Path tempDir) {
        try {
            Files.walk(tempDir)
                    .sorted(Comparator.reverseOrder())
                    .map(Path::toFile)
                    .forEach(File::delete);

            if (config.isVerboseOutput()) {
                System.out.println("清理臨時目錄: " + tempDir);
            }
        } catch (IOException e) {
            System.err.println("清理臨時目錄失敗: " + e.getMessage());
        }
    }
}