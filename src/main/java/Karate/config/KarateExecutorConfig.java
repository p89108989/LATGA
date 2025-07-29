package Karate.config;

import Karate.tools.KarateExecutor;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * 簡化版Karate執行器配置類
 * 自動處理JAR路徑問題，支援多種執行模式
 */

@ConfigurationProperties(prefix = "karate.executor")
public class KarateExecutorConfig {

    private String jarPath = ""; // 默認為空，自動偵測
    private int timeoutSeconds = 300;
    private boolean cleanupTempFiles = true;
    private boolean verboseOutput = false;
    private String javaCommand = "java";
    private String executionMode = "AUTO_DETECT"; // AUTO_DETECT, CLASSPATH, EXTERNAL_JAR, MAVEN_EXEC

    // Getters and Setters
    public String getJarPath() {
        return jarPath;
    }

    public void setJarPath(String jarPath) {
        this.jarPath = jarPath;
    }

    public int getTimeoutSeconds() {
        return timeoutSeconds;
    }

    public void setTimeoutSeconds(int timeoutSeconds) {
        this.timeoutSeconds = timeoutSeconds;
    }

    public boolean isCleanupTempFiles() {
        return cleanupTempFiles;
    }

    public void setCleanupTempFiles(boolean cleanupTempFiles) {
        this.cleanupTempFiles = cleanupTempFiles;
    }

    public boolean isVerboseOutput() {
        return verboseOutput;
    }

    public void setVerboseOutput(boolean verboseOutput) {
        this.verboseOutput = verboseOutput;
    }

    public String getJavaCommand() {
        return javaCommand;
    }

    public void setJavaCommand(String javaCommand) {
        this.javaCommand = javaCommand;
    }

    public String getExecutionMode() {
        return executionMode;
    }

    public void setExecutionMode(String executionMode) {
        this.executionMode = executionMode;
    }

    /**
     * 轉換為KarateExecutor.ExecutorConfig
     */
    public KarateExecutor.ExecutorConfig toExecutorConfig() {
        KarateExecutor.ExecutorConfig config = KarateExecutor.ExecutorConfig.defaultConfig()
                .karateJarPath(jarPath)
                .timeoutSeconds(timeoutSeconds)
                .cleanupTempFiles(cleanupTempFiles)
                .verboseOutput(verboseOutput)
                .javaCommand(javaCommand);

        // 解析執行模式
        try {
            KarateExecutor.ExecutionMode mode = KarateExecutor.ExecutionMode.valueOf(executionMode.toUpperCase());
            config.executionMode(mode);
        } catch (IllegalArgumentException e) {
            // 默認使用AUTO_DETECT
            config.executionMode(KarateExecutor.ExecutionMode.AUTO_DETECT);
        }

        return config;
    }

    @Override
    public String toString() {
        return String.format("KarateExecutorConfig{jarPath='%s', timeoutSeconds=%d, cleanupTempFiles=%s, verboseOutput=%s, javaCommand='%s', executionMode='%s'}",
                jarPath, timeoutSeconds, cleanupTempFiles, verboseOutput, javaCommand, executionMode);
    }
}