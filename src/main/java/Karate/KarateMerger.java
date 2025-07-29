package Karate;

import FileChooser.MultiFileChooser.FileData;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ai.openai.OpenAiChatModel;

import Karate.tools.KarateFileSaver;
import Karate.tools.KarateContentExtractor;
import Karate.tools.KarateExecutor;
import Karate.tools.TestCaseVerification; // 🆕 更新為統一的驗證服務

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Karate檔案合併服務
 * 提供兩個Karate檔案的智能合併功能，確保合併後的內容符合Karate設計規範
 *
 * @author StaticBlackbox Team
 * @version 2.0 - Updated to use unified TestCaseVerification
 */
@Service
public class KarateMerger {

    private final KarateContentExtractor contentExtractor;
    private final KarateExecutor executor;
    private final TestCaseVerification verificationService; // 🆕 統一的驗證和質量保證服務
    private final KarateFileSaver fileSaver;

    /**
     * 合併配置類
     */
    public static class MergeConfig {
        private String mergedFeatureName = "MergedFeature";
        private String mergedFeatureDescription = "Merged from multiple Karate files";
        private boolean enableScenarioRenumbering = true;
        private boolean enableQualityCheck = true;
        private boolean enableSyntaxValidation = true;
        private boolean preserveOriginalComments = true;
        private boolean mergeDuplicateBackgrounds = true;
        private ScenarioNamingStrategy scenarioNamingStrategy = ScenarioNamingStrategy.KEEP_ORIGINAL_WITH_PREFIX;
        private ConflictResolutionStrategy conflictResolution = ConflictResolutionStrategy.MERGE_ALL;

        // Getters and Setters
        public String getMergedFeatureName() { return mergedFeatureName; }
        public void setMergedFeatureName(String mergedFeatureName) { this.mergedFeatureName = mergedFeatureName; }

        public String getMergedFeatureDescription() { return mergedFeatureDescription; }
        public void setMergedFeatureDescription(String mergedFeatureDescription) { this.mergedFeatureDescription = mergedFeatureDescription; }

        public boolean isEnableScenarioRenumbering() { return enableScenarioRenumbering; }
        public void setEnableScenarioRenumbering(boolean enableScenarioRenumbering) { this.enableScenarioRenumbering = enableScenarioRenumbering; }

        public boolean isEnableQualityCheck() { return enableQualityCheck; }
        public void setEnableQualityCheck(boolean enableQualityCheck) { this.enableQualityCheck = enableQualityCheck; }

        public boolean isEnableSyntaxValidation() { return enableSyntaxValidation; }
        public void setEnableSyntaxValidation(boolean enableSyntaxValidation) { this.enableSyntaxValidation = enableSyntaxValidation; }

        public boolean isPreserveOriginalComments() { return preserveOriginalComments; }
        public void setPreserveOriginalComments(boolean preserveOriginalComments) { this.preserveOriginalComments = preserveOriginalComments; }

        public boolean isMergeDuplicateBackgrounds() { return mergeDuplicateBackgrounds; }
        public void setMergeDuplicateBackgrounds(boolean mergeDuplicateBackgrounds) { this.mergeDuplicateBackgrounds = mergeDuplicateBackgrounds; }

        public ScenarioNamingStrategy getScenarioNamingStrategy() { return scenarioNamingStrategy; }
        public void setScenarioNamingStrategy(ScenarioNamingStrategy scenarioNamingStrategy) { this.scenarioNamingStrategy = scenarioNamingStrategy; }

        public ConflictResolutionStrategy getConflictResolution() { return conflictResolution; }
        public void setConflictResolution(ConflictResolutionStrategy conflictResolution) { this.conflictResolution = conflictResolution; }

        public static MergeConfig defaultConfig() {
            return new MergeConfig();
        }

        public static MergeConfig quickMerge() {
            MergeConfig config = new MergeConfig();
            config.setEnableQualityCheck(false);
            config.setEnableSyntaxValidation(false);
            return config;
        }
    }

    /**
     * Scenario命名策略
     */
    public enum ScenarioNamingStrategy {
        KEEP_ORIGINAL,                    // 保持原始名稱
        KEEP_ORIGINAL_WITH_PREFIX,        // 原始名稱加前綴 (File1_原始名稱)
        RENUMBER_SEQUENTIALLY,            // 重新編號 (Scenario_001, Scenario_002)
        COMBINE_WITH_SOURCE_INFO          // 結合來源資訊 (原始名稱_來源檔案)
    }

    /**
     * 衝突解決策略
     */
    public enum ConflictResolutionStrategy {
        MERGE_ALL,                        // 合併所有內容
        FIRST_FILE_PRIORITY,              // 第一個檔案優先
        SECOND_FILE_PRIORITY,             // 第二個檔案優先
        INTERACTIVE_RESOLVE               // 互動式解決（暫未實現）
    }

    /**
     * 合併結果類
     */
    public static class MergeResult {
        private final String mergedContent;
        private final boolean success;
        private final String message;
        private final List<String> warnings;
        private final List<String> errors;
        private final MergeStatistics statistics;
        private final KarateExecutor.ExecutionResult syntaxValidationResult;
        private final TestCaseVerification.AnalysisResult qualityAssuranceResult; // 🆕 更新類型

        public MergeResult(Builder builder) {
            this.mergedContent = builder.mergedContent;
            this.success = builder.success;
            this.message = builder.message;
            this.warnings = Collections.unmodifiableList(builder.warnings);
            this.errors = Collections.unmodifiableList(builder.errors);
            this.statistics = builder.statistics;
            this.syntaxValidationResult = builder.syntaxValidationResult;
            this.qualityAssuranceResult = builder.qualityAssuranceResult;
        }

        // Getters
        public String getMergedContent() { return mergedContent; }
        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public List<String> getWarnings() { return warnings; }
        public List<String> getErrors() { return errors; }
        public MergeStatistics getStatistics() { return statistics; }
        public KarateExecutor.ExecutionResult getSyntaxValidationResult() { return syntaxValidationResult; }
        public TestCaseVerification.AnalysisResult getQualityAssuranceResult() { return qualityAssuranceResult; } // 🆕 更新類型

        public boolean hasWarnings() { return !warnings.isEmpty(); }
        public boolean hasErrors() { return !errors.isEmpty(); }

        public String getSummary() {
            StringBuilder summary = new StringBuilder();
            summary.append("🔗 合併結果摘要:\n");
            summary.append(String.format("   狀態: %s\n", success ? "✅ 成功" : "❌ 失敗"));

            if (statistics != null) {
                summary.append(String.format("   總Scenario數: %d\n", statistics.getTotalScenarios()));
                summary.append(String.format("   合併來源: %d個檔案\n", statistics.getSourceFileCount()));
            }

            if (hasWarnings()) {
                summary.append(String.format("   警告: %d個\n", warnings.size()));
            }

            if (hasErrors()) {
                summary.append(String.format("   錯誤: %d個\n", errors.size()));
            }

            summary.append(String.format("   訊息: %s", message));

            return summary.toString();
        }

        public static class Builder {
            private String mergedContent = "";
            private boolean success = false;
            private String message = "";
            private List<String> warnings = new ArrayList<>();
            private List<String> errors = new ArrayList<>();
            private MergeStatistics statistics;
            private KarateExecutor.ExecutionResult syntaxValidationResult;
            private TestCaseVerification.AnalysisResult qualityAssuranceResult; // 🆕 更新類型

            public Builder mergedContent(String content) { this.mergedContent = content; return this; }
            public Builder success(boolean success) { this.success = success; return this; }
            public Builder message(String message) { this.message = message; return this; }
            public Builder addWarning(String warning) { this.warnings.add(warning); return this; }
            public Builder addError(String error) { this.errors.add(error); return this; }
            public Builder statistics(MergeStatistics stats) { this.statistics = stats; return this; }
            public Builder syntaxValidationResult(KarateExecutor.ExecutionResult result) { this.syntaxValidationResult = result; return this; }
            public Builder qualityAssuranceResult(TestCaseVerification.AnalysisResult result) { this.qualityAssuranceResult = result; return this; } // 🆕 更新類型

            public MergeResult build() { return new MergeResult(this); }
        }
    }

    /**
     * 合併統計資訊
     */
    public static class MergeStatistics {
        private final int sourceFileCount;
        private final int totalScenarios;
        private final int mergedBackgrounds;
        private final int duplicatesSolved;
        private final Map<String, Integer> scenariosBySource;

        public MergeStatistics(int sourceFileCount, int totalScenarios, int mergedBackgrounds,
                               int duplicatesSolved, Map<String, Integer> scenariosBySource) {
            this.sourceFileCount = sourceFileCount;
            this.totalScenarios = totalScenarios;
            this.mergedBackgrounds = mergedBackgrounds;
            this.duplicatesSolved = duplicatesSolved;
            this.scenariosBySource = scenariosBySource != null ? new HashMap<>(scenariosBySource) : new HashMap<>();
        }

        // Getters
        public int getSourceFileCount() { return sourceFileCount; }
        public int getTotalScenarios() { return totalScenarios; }
        public int getMergedBackgrounds() { return mergedBackgrounds; }
        public int getDuplicatesSolved() { return duplicatesSolved; }
        public Map<String, Integer> getScenariosBySource() { return new HashMap<>(scenariosBySource); }
    }

    /**
     * 建構子
     */
    public KarateMerger() {
        this.contentExtractor = new KarateContentExtractor();
        this.executor = new KarateExecutor();
        this.verificationService = null; // 需要OpenAI模型時再初始化
        this.fileSaver = new KarateFileSaver();
    }

    /**
     * 建構子（含AI模型）
     */
    @Autowired(required = false)
    public KarateMerger(OpenAiChatModel chatModel) {
        this.contentExtractor = new KarateContentExtractor();
        this.executor = new KarateExecutor();
        // 🆕 使用統一的 TestCaseVerification 服務
        this.verificationService = chatModel != null ? new TestCaseVerification(chatModel) : null;
        this.fileSaver = new KarateFileSaver();
    }

    /**
     * 🌟 主要合併方法 - 合併兩個Karate檔案
     */
    public MergeResult mergeKarateFiles(String firstFileContent, String secondFileContent) {
        return mergeKarateFiles(firstFileContent, secondFileContent, MergeConfig.defaultConfig());
    }

    /**
     * 🌟 主要合併方法 - 合併兩個Karate檔案（含配置）
     */
    public MergeResult mergeKarateFiles(String firstFileContent, String secondFileContent, MergeConfig config) {
        System.out.println("\n" + "=".repeat(60));
        System.out.println("🔗 開始Karate檔案合併流程");
        System.out.println("=".repeat(60));

        MergeResult.Builder resultBuilder = new MergeResult.Builder();

        try {
            // 1. 驗證輸入
            if (!validateInputs(firstFileContent, secondFileContent, resultBuilder)) {
                return resultBuilder.build();
            }

            // 2. 提取兩個檔案的內容
            List<KarateFeatureInfo> features = extractFeatureInfo(firstFileContent, secondFileContent, resultBuilder);
            if (features.isEmpty()) {
                return resultBuilder.message("無法提取有效的Karate Feature內容").build();
            }

            // 3. 執行合併
            String mergedContent = performMerge(features, config, resultBuilder);
            if (mergedContent == null || mergedContent.trim().isEmpty()) {
                return resultBuilder.message("合併過程產生空內容").build();
            }

            resultBuilder.mergedContent(mergedContent);

            // 4. 語法驗證（如果啟用）
            if (config.isEnableSyntaxValidation()) {
                performSyntaxValidation(mergedContent, resultBuilder);
            }

            // 5. 質量保證（如果啟用且有AI模型）
            if (config.isEnableQualityCheck() && verificationService != null) {
                performQualityAssurance(mergedContent, resultBuilder);
            }

            // 6. 生成統計資訊
            MergeStatistics statistics = generateStatistics(features, mergedContent);
            resultBuilder.statistics(statistics);

            // 7. 最終結果
            resultBuilder.success(true);
            resultBuilder.message("成功合併2個Karate檔案，共" + statistics.getTotalScenarios() + "個Scenario");

            System.out.println("✅ 合併完成！");
            return resultBuilder.build();

        } catch (Exception e) {
            System.err.println("❌ 合併過程發生錯誤：" + e.getMessage());
            return resultBuilder
                    .success(false)
                    .message("合併過程發生錯誤：" + e.getMessage())
                    .addError("系統錯誤：" + e.getMessage())
                    .build();
        }
    }

    /**
     * 🌟 便利方法 - 從FileData合併
     */
    public MergeResult mergeKarateFiles(FileData firstFile, FileData secondFile) {
        return mergeKarateFiles(firstFile.getContent(), secondFile.getContent());
    }

    /**
     * 🌟 便利方法 - 從FileData合併（含配置）
     */
    public MergeResult mergeKarateFiles(FileData firstFile, FileData secondFile, MergeConfig config) {
        return mergeKarateFiles(firstFile.getContent(), secondFile.getContent(), config);
    }

    /**
     * 🌟 合併多個檔案（擴展功能）
     */
    public MergeResult mergeMultipleKarateFiles(List<String> fileContents, MergeConfig config) {
        if (fileContents.size() < 2) {
            return new MergeResult.Builder()
                    .success(false)
                    .message("至少需要兩個檔案進行合併")
                    .build();
        }

        // 逐步合併
        String currentMerged = fileContents.get(0);
        for (int i = 1; i < fileContents.size(); i++) {
            MergeResult stepResult = mergeKarateFiles(currentMerged, fileContents.get(i), config);
            if (!stepResult.isSuccess()) {
                return stepResult;
            }
            currentMerged = stepResult.getMergedContent();
        }

        return new MergeResult.Builder()
                .success(true)
                .mergedContent(currentMerged)
                .message("成功合併" + fileContents.size() + "個檔案")
                .build();
    }

    // ==================== 私有方法 ====================

    /**
     * 驗證輸入
     */
    private boolean validateInputs(String firstContent, String secondContent, MergeResult.Builder builder) {
        if (firstContent == null || firstContent.trim().isEmpty()) {
            builder.success(false).message("第一個檔案內容為空").addError("第一個檔案內容不能為空");
            return false;
        }

        if (secondContent == null || secondContent.trim().isEmpty()) {
            builder.success(false).message("第二個檔案內容為空").addError("第二個檔案內容不能為空");
            return false;
        }

        return true;
    }

    /**
     * 提取Feature資訊
     */
    private List<KarateFeatureInfo> extractFeatureInfo(String firstContent, String secondContent,
                                                       MergeResult.Builder builder) {
        List<KarateFeatureInfo> features = new ArrayList<>();

        // 提取第一個檔案
        KarateContentExtractor.ExtractionResult firstResult = contentExtractor.extractKarateFeatures(firstContent);
        if (firstResult.isSuccess()) {
            for (KarateContentExtractor.KarateFeature feature : firstResult.getFeatures()) {
                features.add(new KarateFeatureInfo(feature, "File1"));
            }
        } else {
            builder.addError("第一個檔案提取失敗：" + firstResult.getMessage());
        }

        // 提取第二個檔案
        KarateContentExtractor.ExtractionResult secondResult = contentExtractor.extractKarateFeatures(secondContent);
        if (secondResult.isSuccess()) {
            for (KarateContentExtractor.KarateFeature feature : secondResult.getFeatures()) {
                features.add(new KarateFeatureInfo(feature, "File2"));
            }
        } else {
            builder.addError("第二個檔案提取失敗：" + secondResult.getMessage());
        }

        // 合併警告
        if (firstResult.hasWarnings()) {
            firstResult.getWarnings().forEach(builder::addWarning);
        }
        if (secondResult.hasWarnings()) {
            secondResult.getWarnings().forEach(builder::addWarning);
        }

        return features;
    }

    /**
     * 執行合併
     */
    private String performMerge(List<KarateFeatureInfo> features, MergeConfig config, MergeResult.Builder builder) {
        StringBuilder mergedContent = new StringBuilder();

        // 1. 建立Feature聲明
        mergedContent.append("Feature: ").append(config.getMergedFeatureName()).append("\n");
        if (config.getMergedFeatureDescription() != null && !config.getMergedFeatureDescription().trim().isEmpty()) {
            mergedContent.append("  ").append(config.getMergedFeatureDescription()).append("\n");
        }
        mergedContent.append("\n");

        // 2. 合併Background（如果有）- 修正版本
        List<String> backgrounds = extractBackgrounds(features);
        if (!backgrounds.isEmpty()) {
            if (config.isMergeDuplicateBackgrounds()) {
                String mergedBackground = mergeBackgrounds(backgrounds);
                mergedContent.append(mergedBackground).append("\n");
            } else {
                // 使用第一個Background
                mergedContent.append(backgrounds.get(0)).append("\n");
                if (backgrounds.size() > 1) {
                    builder.addWarning("檢測到多個Background，僅使用第一個");
                }
            }
        }

        // 3. 合併Scenarios
        List<String> scenarios = extractAndProcessScenarios(features, config, builder);
        for (String scenario : scenarios) {
            mergedContent.append(scenario).append("\n");
        }

        return mergedContent.toString();
    }

    /**
     * 提取Backgrounds - 保守版本（只提取真正屬於Background的內容）
     */
    private List<String> extractBackgrounds(List<KarateFeatureInfo> features) {
        List<String> backgrounds = new ArrayList<>();

        for (KarateFeatureInfo feature : features) {
            String content = feature.getFeature().getContent();

            // 找到Background開始位置
            Pattern backgroundStart = Pattern.compile("^Background:\\s*$", Pattern.MULTILINE);
            Matcher startMatcher = backgroundStart.matcher(content);

            if (startMatcher.find()) {
                int backgroundStartPos = startMatcher.end();
                String afterBackground = content.substring(backgroundStartPos);

                // 逐行分析，只保留真正屬於Background的內容
                StringBuilder validBackgroundContent = new StringBuilder();
                String[] lines = afterBackground.split("\n");

                for (String line : lines) {
                    String trimmedLine = line.trim();

                    // 遇到Scenario就停止
                    if (trimmedLine.matches("^Scenario\\s*:.*") ||
                            trimmedLine.matches("^#\\s*\\d+\\..*") ||
                            trimmedLine.matches("^#\\s*Scenario\\s*\\d+.*")) {
                        break;
                    }

                    // 排除明顯屬於Scenario邏輯的行
                    if (trimmedLine.contains("response.") ||
                            trimmedLine.contains("status ==") ||
                            trimmedLine.contains("method get") ||
                            trimmedLine.contains("method post") ||
                            trimmedLine.matches(".*When method.*") ||
                            trimmedLine.matches(".*Then status.*") ||
                            trimmedLine.matches(".*Given path.*")) {
                        continue; // 跳過這些行
                    }

                    // 包含有效的Background內容
                    if (!trimmedLine.isEmpty()) {
                        // 只保留變數定義、配置和其他Background應有的內容
                        if (trimmedLine.startsWith("*") ||
                                trimmedLine.startsWith("#") ||
                                trimmedLine.matches("^(url|def|configure|header).*")) {
                            validBackgroundContent.append(line).append("\n");
                        }
                    } else {
                        // 保留空行（但限制連續空行）
                        if (validBackgroundContent.length() > 0 &&
                                !validBackgroundContent.toString().endsWith("\n\n")) {
                            validBackgroundContent.append("\n");
                        }
                    }
                }

                if (validBackgroundContent.length() > 0) {
                    String backgroundStr = "Background:\n" + validBackgroundContent.toString().trim() + "\n";
                    backgrounds.add(backgroundStr);
                }
            }
        }

        return backgrounds;
    }

    /**
     * 合併Backgrounds - 修正版本（只修正這個方法）
     */
    private String mergeBackgrounds(List<String> backgrounds) {
        if (backgrounds.isEmpty()) return "";
        if (backgrounds.size() == 1) return backgrounds.get(0);

        StringBuilder merged = new StringBuilder();
        merged.append("Background:\n");

        // 用於儲存變數定義和步驟
        Set<String> uniqueVariables = new LinkedHashSet<>();
        Set<String> uniqueSteps = new LinkedHashSet<>();

        for (String background : backgrounds) {
            String[] lines = background.split("\n");

            for (String line : lines) {
                line = line.trim();
                if (line.isEmpty() || line.equals("Background:")) continue;

                // 檢查是否為變數定義
                if (line.matches("^\\*\\s+def\\s+.*") ||
                        line.matches("^\\*\\s+url\\s+.*") ||
                        line.matches("^\\*\\s+configure\\s+.*") ||
                        line.matches("^\\*\\s+header\\s+.*")) {
                    uniqueVariables.add("  " + line);
                }
                // 檢查是否為Given/When/Then/And/But步驟
                else if (line.matches("^(Given|When|Then|And|But)\\s+.*")) {
                    uniqueSteps.add("  " + line);
                }
                // 其他以*開頭的Karate語句
                else if (line.startsWith("*")) {
                    uniqueVariables.add("  " + line);
                }
            }
        }

        // 先添加變數定義
        for (String variable : uniqueVariables) {
            merged.append(variable).append("\n");
        }

        // 如果有變數定義和步驟，中間加個空行
        if (!uniqueVariables.isEmpty() && !uniqueSteps.isEmpty()) {
            merged.append("\n");
        }

        // 再添加步驟
        for (String step : uniqueSteps) {
            merged.append(step).append("\n");
        }

        return merged.toString();
    }

    /**
     * 提取並處理Scenarios
     */
    private List<String> extractAndProcessScenarios(List<KarateFeatureInfo> features, MergeConfig config,
                                                    MergeResult.Builder builder) {
        List<String> scenarios = new ArrayList<>();
        int scenarioCounter = 1;

        for (KarateFeatureInfo featureInfo : features) {
            String content = featureInfo.getFeature().getContent();

            // 提取Scenarios
            Pattern scenarioPattern = Pattern.compile("(Scenario(?:\\s+Outline)?:[^\\n]*\\n(?:(?!Scenario)[^\\n]*\\n)*)",
                    Pattern.MULTILINE | Pattern.DOTALL);
            Matcher matcher = scenarioPattern.matcher(content);

            while (matcher.find()) {
                String scenario = matcher.group(1).trim();

                // 處理Scenario名稱
                scenario = processScenarioName(scenario, featureInfo.getSource(), scenarioCounter, config);

                scenarios.add(scenario);
                scenarioCounter++;
            }
        }

        return scenarios;
    }

    /**
     * 處理Scenario名稱
     */
    private String processScenarioName(String scenario, String source, int counter, MergeConfig config) {
        Pattern namePattern = Pattern.compile("(Scenario(?:\\s+Outline)?):\\s*(.*)");
        Matcher matcher = namePattern.matcher(scenario);

        if (matcher.find()) {
            String scenarioType = matcher.group(1);
            String originalName = matcher.group(2).trim();

            String newName;
            switch (config.getScenarioNamingStrategy()) {
                case KEEP_ORIGINAL:
                    newName = originalName;
                    break;
                case KEEP_ORIGINAL_WITH_PREFIX:
                    newName = source + "_" + originalName;
                    break;
                case RENUMBER_SEQUENTIALLY:
                    newName = String.format("Scenario_%03d", counter);
                    break;
                case COMBINE_WITH_SOURCE_INFO:
                    newName = originalName + "_from_" + source;
                    break;
                default:
                    newName = originalName;
            }

            if (config.isEnableScenarioRenumbering()) {
                newName = String.format("#%03d - %s", counter, newName);
            }

            return scenario.replaceFirst("(Scenario(?:\\s+Outline)?):\\s*.*", scenarioType + ": " + newName);
        }

        return scenario;
    }

    /**
     * 執行語法驗證
     */
    private void performSyntaxValidation(String mergedContent, MergeResult.Builder builder) {
        System.out.println("🔍 執行語法驗證...");

        KarateExecutor.ExecutionResult validationResult = executor.validateSyntax(mergedContent, "merged_feature");
        builder.syntaxValidationResult(validationResult);

        if (!validationResult.isSyntaxValid()) {
            builder.addError("語法驗證失敗");
            validationResult.getSyntaxErrors().forEach(builder::addError);
        }

        if (validationResult.hasWarnings()) {
            validationResult.getWarnings().forEach(builder::addWarning);
        }

        System.out.println(validationResult.getSummary());
    }

    /**
     * 🆕 執行質量保證（更新為使用 TestCaseVerification）
     */
    private void performQualityAssurance(String mergedContent, MergeResult.Builder builder) {
        System.out.println("🔍 執行質量保證檢查...");

        try {
            // 🆕 使用統一的驗證服務進行靜態分析
            TestCaseVerification.AnalysisResult analysisResult =
                    verificationService.performStaticAnalysis(mergedContent, new ArrayList<>(), null);

            builder.qualityAssuranceResult(analysisResult);

            if (!analysisResult.isCompliant()) {
                builder.addWarning("質量保證檢查發現問題");
                analysisResult.getFailedItems().forEach(item -> builder.addWarning("QA: " + item));
            }

            System.out.println("✅ 質量保證檢查完成");

        } catch (Exception e) {
            builder.addWarning("質量保證檢查失敗：" + e.getMessage());
        }
    }

    /**
     * 生成統計資訊
     */
    private MergeStatistics generateStatistics(List<KarateFeatureInfo> features, String mergedContent) {
        Map<String, Integer> scenariosBySource = new HashMap<>();

        for (KarateFeatureInfo feature : features) {
            String source = feature.getSource();
            int scenarioCount = feature.getFeature().getScenarioCount();
            scenariosBySource.put(source, scenariosBySource.getOrDefault(source, 0) + scenarioCount);
        }

        int totalScenarios = scenariosBySource.values().stream().mapToInt(Integer::intValue).sum();

        return new MergeStatistics(
                features.size(),
                totalScenarios,
                0, // merged backgrounds (可以實現更詳細的統計)
                0, // duplicates solved
                scenariosBySource
        );
    }

    // ==================== 輔助類 ====================

    /**
     * Feature資訊封裝類
     */
    private static class KarateFeatureInfo {
        private final KarateContentExtractor.KarateFeature feature;
        private final String source;

        public KarateFeatureInfo(KarateContentExtractor.KarateFeature feature, String source) {
            this.feature = feature;
            this.source = source;
        }

        public KarateContentExtractor.KarateFeature getFeature() { return feature; }
        public String getSource() { return source; }
    }

    // ==================== 公用便利方法 ====================

    /**
     * 快速合併（無額外驗證）
     */
    public MergeResult quickMerge(String firstContent, String secondContent) {
        return mergeKarateFiles(firstContent, secondContent, MergeConfig.quickMerge());
    }

    /**
     * 檢查合併器是否就緒
     */
    public boolean isReady() {
        return contentExtractor != null && executor != null;
    }

    /**
     * 🆕 取得服務資訊（更新為使用 TestCaseVerification）
     */
    public String getServiceInfo() {
        StringBuilder info = new StringBuilder();
        info.append("🔗 Karate檔案合併服務資訊\n");
        info.append("=".repeat(40)).append("\n");
        info.append("內容提取器: ").append(contentExtractor != null ? "✅ 可用" : "❌ 不可用").append("\n");
        info.append("執行器: ").append(executor != null ? "✅ 可用" : "❌ 不可用").append("\n");
        info.append("驗證服務: ").append(verificationService != null ? "✅ 可用" : "❌ 不可用").append("\n"); // 🆕 更新說明
        info.append("檔案保存器: ").append(fileSaver != null ? "✅ 可用" : "❌ 不可用").append("\n");
        info.append("整體狀態: ").append(isReady() ? "✅ 就緒" : "❌ 未就緒").append("\n");

        return info.toString();
    }
}