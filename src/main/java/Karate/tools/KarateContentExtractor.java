package Karate.tools;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Enhanced Karate 內容提取器
 * 負責從 AI 回應或文本中提取有效的 Karate Feature 內容
 * 支援質量保證系統處理後的混合格式內容
 */
public class KarateContentExtractor {

    /**
     * 提取結果封裝類
     */
    public static class ExtractionResult {
        private final List<KarateFeature> features;
        private final boolean success;
        private final String message;
        private final List<String> warnings; // 🆕 新增警告訊息

        public ExtractionResult(List<KarateFeature> features, boolean success, String message) {
            this(features, success, message, new ArrayList<>());
        }

        public ExtractionResult(List<KarateFeature> features, boolean success, String message, List<String> warnings) {
            this.features = features != null ? features : new ArrayList<>();
            this.success = success;
            this.message = message;
            this.warnings = warnings != null ? warnings : new ArrayList<>();
        }

        public List<KarateFeature> getFeatures() { return features; }
        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public int getFeatureCount() { return features.size(); }
        public List<String> getWarnings() { return warnings; } // 🆕
        public boolean hasWarnings() { return !warnings.isEmpty(); } // 🆕
    }

    /**
     * Karate Feature 封裝類
     */
    public static class KarateFeature {
        private final String content;
        private final String featureName;
        private final String cleanFileName;
        private final boolean wasContentCleaned; // 🆕 是否經過內容清理

        public KarateFeature(String content, String featureName, String cleanFileName) {
            this(content, featureName, cleanFileName, false);
        }

        public KarateFeature(String content, String featureName, String cleanFileName, boolean wasContentCleaned) {
            this.content = content;
            this.featureName = featureName;
            this.cleanFileName = cleanFileName;
            this.wasContentCleaned = wasContentCleaned;
        }

        public String getContent() { return content; }
        public String getFeatureName() { return featureName; }
        public String getCleanFileName() { return cleanFileName; }
        public boolean wasContentCleaned() { return wasContentCleaned; } // 🆕

        public int getScenarioCount() {
            return countScenarios(content);
        }

        private int countScenarios(String content) {
            Pattern scenarioPattern = Pattern.compile("Scenario(?:\\s+Outline)?:", Pattern.CASE_INSENSITIVE);
            Matcher matcher = scenarioPattern.matcher(content);
            int count = 0;
            while (matcher.find()) {
                count++;
            }
            return count;
        }
    }

    /**
     * 🆕 內容清理結果類
     */
    public static class ContentCleaningResult {
        private final String originalContent;
        private final String cleanedContent;
        private final boolean wasModified;
        private final List<String> warnings;

        public ContentCleaningResult(String originalContent, String cleanedContent, boolean wasModified, List<String> warnings) {
            this.originalContent = originalContent;
            this.cleanedContent = cleanedContent;
            this.wasModified = wasModified;
            this.warnings = warnings != null ? warnings : new ArrayList<>();
        }

        public String getOriginalContent() { return originalContent; }
        public String getCleanedContent() { return cleanedContent; }
        public boolean wasModified() { return wasModified; }
        public List<String> getWarnings() { return warnings; }
        public boolean hasWarnings() { return !warnings.isEmpty(); }
    }

    // 🆕 配置選項
    private boolean enableAdvancedCleaning = true;
    private boolean strictValidation = true;

    /**
     * 從 AI 回應中提取 Karate Feature 內容（增強版）
     *
     * @param aiResponse AI 的回應文本
     * @return 提取結果
     */
    public ExtractionResult extractKarateFeatures(String aiResponse) {
        return extractKarateFeatures(aiResponse, enableAdvancedCleaning);
    }

    /**
     * 🆕 從 AI 回應中提取 Karate Feature 內容（支援進階清理）
     *
     * @param aiResponse AI 的回應文本
     * @param enableAdvancedCleaning 是否啟用進階內容清理
     * @return 提取結果
     */
    public ExtractionResult extractKarateFeatures(String aiResponse, boolean enableAdvancedCleaning) {
        if (aiResponse == null || aiResponse.trim().isEmpty()) {
            return new ExtractionResult(null, false, "AI 回應內容為空");
        }

        List<String> warnings = new ArrayList<>();
        List<KarateFeature> features = new ArrayList<>();
        String processedContent = aiResponse;

        // 🆕 Step 1: 進階內容清理（如果啟用）
        if (enableAdvancedCleaning) {
            ContentCleaningResult cleaningResult = performAdvancedCleaning(aiResponse);
            processedContent = cleaningResult.getCleanedContent();

            if (cleaningResult.wasModified()) {
                warnings.add("內容已進行進階清理處理");
            }
            warnings.addAll(cleaningResult.getWarnings());
        }

        // Step 2: 標準提取流程
        features.addAll(performStandardExtraction(processedContent, warnings));

        // Step 3: 如果標準提取失敗，嘗試更寬鬆的提取
        if (features.isEmpty()) {
            features.addAll(performLenientExtraction(processedContent, warnings));
        }

        if (features.isEmpty()) {
            return new ExtractionResult(null, false,
                    "無法在 AI 回應中找到有效的 Karate Feature 內容。請確認回應包含 Feature、Scenario 等 Karate 語法。",
                    warnings);
        }

        return new ExtractionResult(features, true,
                String.format("成功提取 %d 個 Karate Feature，共包含 %d 個 Scenario",
                        features.size(), features.stream().mapToInt(KarateFeature::getScenarioCount).sum()),
                warnings);
    }

    /**
     * 🆕 執行進階內容清理
     */
    public ContentCleaningResult performAdvancedCleaning(String rawContent) {
        List<String> warnings = new ArrayList<>();
        String originalContent = rawContent;
        String processedContent = rawContent;

        // 1. 移除常見的AI回應前綴
        String[] commonPrefixes = {
                "以下是生成的Karate測試案例：",
                "生成的Karate測試內容：",
                "補充後的Karate內容：",
                "完整的Karate feature文件內容：",
                "根據以下分析結果，請補充和完善Karate測試內容：",
                "```karate",
                "```gherkin",
                "```"
        };

        for (String prefix : commonPrefixes) {
            if (processedContent.contains(prefix)) {
                int startIndex = processedContent.indexOf(prefix) + prefix.length();
                processedContent = processedContent.substring(startIndex);
                warnings.add("移除了內容前綴: " + prefix);
                break;
            }
        }

        // 2. 移除常見的AI回應後綴
        String[] commonSuffixes = {
                "```",
                "以上是完整的測試案例",
                "希望這些測試案例符合您的要求",
                "請確認以上內容是否符合需求"
        };

        for (String suffix : commonSuffixes) {
            if (processedContent.contains(suffix)) {
                int endIndex = processedContent.lastIndexOf(suffix);
                processedContent = processedContent.substring(0, endIndex);
                warnings.add("移除了內容後綴: " + suffix);
                break;
            }
        }

        // 3. 移除分析報告區塊
        processedContent = removeAnalysisBlocks(processedContent, warnings);

        // 4. 標準清理
        processedContent = cleanKarateContent(processedContent);

        boolean wasModified = !processedContent.trim().equals(originalContent.trim());

        return new ContentCleaningResult(originalContent, processedContent, wasModified, warnings);
    }

    /**
     * 🆕 移除分析報告區塊
     */
    private String removeAnalysisBlocks(String content, List<String> warnings) {
        // 移除檢查結果區塊
        Pattern analysisPattern = Pattern.compile(
                "檢查結果：.*?(?=Feature:|$)",
                Pattern.DOTALL | Pattern.CASE_INSENSITIVE
        );

        Matcher matcher = analysisPattern.matcher(content);
        if (matcher.find()) {
            content = matcher.replaceAll("");
            warnings.add("移除了分析報告區塊");
        }

        // 移除建議改進區塊
        Pattern suggestionPattern = Pattern.compile(
                "建議改進：.*?(?=Feature:|$)",
                Pattern.DOTALL | Pattern.CASE_INSENSITIVE
        );

        matcher = suggestionPattern.matcher(content);
        if (matcher.find()) {
            content = matcher.replaceAll("");
            warnings.add("移除了建議改進區塊");
        }

        return content;
    }

    /**
     * 🆕 執行標準提取流程
     */
    private List<KarateFeature> performStandardExtraction(String content, List<String> warnings) {
        List<KarateFeature> features = new ArrayList<>();

        // 方法1：尋找 ```karate...``` 或 ```gherkin...``` 代碼區塊
        extractFromCodeBlocks(content, features, "(?:karate|gherkin)");

        // 方法2：如果沒找到，尋找一般的 ``` 代碼區塊
        if (features.isEmpty()) {
            extractFromCodeBlocks(content, features, "");
        }

        // 方法3：如果還是沒找到，尋找 Feature: 開頭的內容區塊
        if (features.isEmpty()) {
            extractFromFeatureBlocks(content, features);
        }

        return features;
    }

    /**
     * 🆕 執行寬鬆提取（容錯模式）
     */
    private List<KarateFeature> performLenientExtraction(String content, List<String> warnings) {
        List<KarateFeature> features = new ArrayList<>();

        // 嘗試將整個內容作為單一Feature
        String cleanedContent = cleanKarateContent(content);
        if (isValidKarateContent(cleanedContent, false)) { // 使用寬鬆驗證
            String featureName = extractFeatureName(cleanedContent);
            if (featureName == null) {
                featureName = "GeneratedTest";
            }
            features.add(new KarateFeature(cleanedContent, featureName, cleanFileName(featureName), true));
            warnings.add("使用寬鬆模式提取整個內容作為單一Feature");
        }

        return features;
    }

    /**
     * 從對話歷史中取得最新的 AI 回應
     */
    public String getLatestAiResponse(String conversationHistory) {
        if (conversationHistory == null || conversationHistory.trim().isEmpty()) {
            return null;
        }

        String[] parts = conversationHistory.split("AI：");
        if (parts.length > 1) {
            // 取得最後一個 AI 回應
            String lastAiResponse = parts[parts.length - 1];
            // 移除後續的使用者輸入（如果有的話）
            int nextUserInput = lastAiResponse.indexOf("你：");
            if (nextUserInput != -1) {
                lastAiResponse = lastAiResponse.substring(0, nextUserInput);
            }
            return lastAiResponse.trim();
        }
        return null;
    }

    /**
     * 從代碼區塊中提取 Karate 內容
     */
    private void extractFromCodeBlocks(String response, List<KarateFeature> features, String language) {
        String patternStr = language.isEmpty() ?
                "```\\s*\\n(.*?)```" :
                "```" + language + "\\s*\\n(.*?)```";

        Pattern pattern = Pattern.compile(patternStr, Pattern.DOTALL);
        Matcher matcher = pattern.matcher(response);

        while (matcher.find()) {
            String content = matcher.group(1).trim();
            if (isValidKarateContent(content)) {
                String featureName = extractFeatureName(content);
                if (featureName == null) {
                    featureName = "GeneratedTest_" + (features.size() + 1);
                }
                features.add(new KarateFeature(content, featureName, cleanFileName(featureName)));
            }
        }
    }

    /**
     * 從 Feature 區塊中提取內容
     */
    private void extractFromFeatureBlocks(String response, List<KarateFeature> features) {
        Pattern featurePattern = Pattern.compile("(Feature:.*?)(?=Feature:|$)", Pattern.DOTALL);
        Matcher featureMatcher = featurePattern.matcher(response);

        while (featureMatcher.find()) {
            String content = featureMatcher.group(1).trim();
            if (isValidKarateContent(content)) {
                String featureName = extractFeatureName(content);
                if (featureName == null) {
                    featureName = "GeneratedTest_" + (features.size() + 1);
                }
                features.add(new KarateFeature(content, featureName, cleanFileName(featureName)));
            }
        }
    }

    /**
     * 檢查內容是否為有效的 Karate Feature
     */
    public boolean isValidKarateContent(String content) {
        return isValidKarateContent(content, strictValidation);
    }

    /**
     * 🆕 檢查內容是否為有效的 Karate Feature（支援嚴格/寬鬆模式）
     */
    public boolean isValidKarateContent(String content, boolean strict) {
        if (content == null || content.trim().isEmpty()) {
            return false;
        }

        String lowerContent = content.toLowerCase();

        // 必須包含 Feature 聲明
        boolean hasFeature = lowerContent.contains("feature:");

        if (strict) {
            // 嚴格模式：必須包含 Scenario 和 Gherkin 關鍵字
            boolean hasScenario = lowerContent.contains("scenario:") || lowerContent.contains("scenario outline:");
            boolean hasGherkinKeywords = lowerContent.contains("given") ||
                    lowerContent.contains("when") ||
                    lowerContent.contains("then") ||
                    lowerContent.contains("and") ||
                    lowerContent.contains("but");
            return hasFeature && hasScenario && hasGherkinKeywords;
        } else {
            // 寬鬆模式：只要有 Feature 即可
            return hasFeature;
        }
    }

    /**
     * 清理 Karate 內容，移除不必要的格式（增強版）
     */
    public String cleanKarateContent(String content) {
        if (content == null) {
            return "";
        }

        // 移除 markdown 格式標記
        content = content.replaceAll("```[a-zA-Z]*\\s*\\n", "");
        content = content.replaceAll("```\\s*$", "");

        // 🆕 移除HTML標記（如果有）
        content = content.replaceAll("<[^>]+>", "");

        // 🆕 移除行號（如果有）
        content = content.replaceAll("^\\d+\\s*[:|.]\\s*", "");

        // 移除過多的空行
        content = content.replaceAll("\\n{3,}", "\n\n");

        // 🆕 移除行首尾多餘的空白字符
        String[] lines = content.split("\n");
        StringBuilder cleanedContent = new StringBuilder();
        for (String line : lines) {
            cleanedContent.append(line.trim()).append("\n");
        }

        return cleanedContent.toString().trim();
    }

    /**
     * 從 Karate Feature 中提取 Feature 名稱
     */
    public String extractFeatureName(String karateContent) {
        if (karateContent == null) {
            return null;
        }

        Pattern featurePattern = Pattern.compile("Feature:\\s*(.+)", Pattern.CASE_INSENSITIVE);
        Matcher matcher = featurePattern.matcher(karateContent);

        if (matcher.find()) {
            return matcher.group(1).trim();
        }

        return null;
    }

    /**
     * 清理檔名，移除不合法字符
     */
    public String cleanFileName(String fileName) {
        if (fileName == null || fileName.trim().isEmpty()) {
            return "UnknownFeature";
        }

        // 移除或替換不合法的檔名字符
        return fileName.replaceAll("[<>:\"/\\\\|?*]", "_")
                .replaceAll("\\s+", "_")
                .replaceAll("_{2,}", "_")
                .replaceAll("^_|_$", "")
                .trim();
    }

    /**
     * 驗證並統計 Karate 內容的詳細信息
     */
    public String analyzeKarateContent(String content) {
        if (!isValidKarateContent(content)) {
            return "無效的 Karate Feature 內容";
        }

        StringBuilder analysis = new StringBuilder();

        // 統計 Feature 數量
        Pattern featurePattern = Pattern.compile("Feature:", Pattern.CASE_INSENSITIVE);
        Matcher featureMatcher = featurePattern.matcher(content);
        int featureCount = 0;
        while (featureMatcher.find()) featureCount++;

        // 統計 Scenario 數量
        Pattern scenarioPattern = Pattern.compile("Scenario(?:\\s+Outline)?:", Pattern.CASE_INSENSITIVE);
        Matcher scenarioMatcher = scenarioPattern.matcher(content);
        int scenarioCount = 0;
        while (scenarioMatcher.find()) scenarioCount++;

        // 統計步驟數量
        Pattern stepPattern = Pattern.compile("^\\s*(?:Given|When|Then|And|But)\\s+", Pattern.MULTILINE | Pattern.CASE_INSENSITIVE);
        Matcher stepMatcher = stepPattern.matcher(content);
        int stepCount = 0;
        while (stepMatcher.find()) stepCount++;

        analysis.append(String.format("Features: %d, Scenarios: %d, Steps: %d",
                featureCount, scenarioCount, stepCount));

        return analysis.toString();
    }

    // 🆕 配置方法
    public void setEnableAdvancedCleaning(boolean enableAdvancedCleaning) {
        this.enableAdvancedCleaning = enableAdvancedCleaning;
    }

    public void setStrictValidation(boolean strictValidation) {
        this.strictValidation = strictValidation;
    }

    public boolean isAdvancedCleaningEnabled() {
        return enableAdvancedCleaning;
    }

    public boolean isStrictValidationEnabled() {
        return strictValidation;
    }
}