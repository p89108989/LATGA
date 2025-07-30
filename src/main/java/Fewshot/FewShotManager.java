package Fewshot;

import FileChooser.MultiFileChooser.FileData;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * Few-shot 範例管理器 (簡化版) -  支援自定義 Prompt 整合
 * 負責載入固定路徑的 few-shot 範例檔案，並組合 few-shot prompt
 */
public class FewShotManager {

    /**
     * Few-shot 範例類型列舉
     */
    public enum ExampleType {
        SWAGGER("Swagger範例", "petstore_swagger.json"),
        DEPENDENCY("相依圖範例", "odg.dot"),
        KARATE("Karate範例", "petstore.feature");

        private final String description;
        private final String defaultFileName;

        ExampleType(String description, String defaultFileName) {
            this.description = description;
            this.defaultFileName = defaultFileName;
        }

        public String getDescription() { return description; }
        public String getDefaultFileName() { return defaultFileName; }
    }

    /**
     * Few-shot 載入結果
     */
    public static class LoadResult {
        private final boolean success;
        private final List<FileData> fewShotFiles;
        private final List<String> messages;

        public LoadResult(boolean success, List<FileData> fewShotFiles, List<String> messages) {
            this.success = success;
            this.fewShotFiles = fewShotFiles != null ? fewShotFiles : new ArrayList<>();
            this.messages = messages != null ? messages : new ArrayList<>();
        }

        public boolean isSuccess() { return success; }
        public List<FileData> getFewShotFiles() { return fewShotFiles; }
        public List<String> getMessages() { return messages; }
    }

    // 固定的 Few-shot 提示模板
    private static final String DEFAULT_FEWSHOT_PROMPT_TEMPLATE = """
            以下是一組範例，展示如何從swagger文件和操作相依圖生成karate測試文件：
            
            以這個swagger文件範例(.json)為例，透過操作附上的相依圖(.dot)，最終會產生這樣的karate測試文件(.feature)
            """;

    //  自定義 Prompt 分隔符
    private static final String CUSTOM_PROMPT_SEPARATOR = "=".repeat(80);

    private final String basePath;

    /**
     * 建構子 - 使用預設路徑
     */
    public FewShotManager() {
        this.basePath = "C:/Users/soselab707/Desktop/實驗Data/fewshot";
    }

    /**
     * 建構子 - 使用指定的基礎路徑
     * @param basePath few-shot 範例檔案的基礎路徑
     */
    public FewShotManager(String basePath) {
        this.basePath = basePath != null ? basePath : "C:/Users/soselab707/Desktop/實驗Data/fewshot";
    }

    /**
     * 載入所有 Few-shot 範例檔案
     * @return 載入結果
     */
    public LoadResult loadFewShotExamples() {
        List<FileData> fewShotFiles = new ArrayList<>();
        List<String> messages = new ArrayList<>();

        for (ExampleType type : ExampleType.values()) {
            String filePath = buildFilePath(type);

            try {
                Path path = Paths.get(filePath);
                if (Files.exists(path)) {
                    String content = Files.readString(path);
                    fewShotFiles.add(new FileData(filePath, content));
                    String message = " 載入 " + type.getDescription() + ": " + path.getFileName();
                    messages.add(message);
                } else {
                    String message = " " + type.getDescription() + " 檔案不存在: " + filePath;
                    messages.add(message);
                }
            } catch (IOException e) {
                String message = " 讀取 " + type.getDescription() + " 時發生錯誤: " + e.getMessage();
                messages.add(message);
            }
        }

        boolean success = !fewShotFiles.isEmpty();
        return new LoadResult(success, fewShotFiles, messages);
    }

    /**
     *  組合完整的 Few-shot Prompt（支援自定義 Prompt）
     * @param loadResult Few-shot 載入結果
     * @param mainPrompt 主要的 prompt 內容
     * @param userFiles 用戶選擇的檔案
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @return 組合後的完整 prompt
     */
    public String buildCompletePrompt(LoadResult loadResult, String mainPrompt, List<FileData> userFiles, String customPrompt) {
        StringBuilder combinedPrompt = new StringBuilder();

        // 1. 加入主要提示
        combinedPrompt.append(mainPrompt);

        //  2. 如果有自定義 prompt，優先加入並給予高權重
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(" 用戶自定義指令（優先級：高）:\n");
            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(customPrompt.trim());
            combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(" 重要提醒：請在處理時特別注意並優先遵循上述自定義指令，");
            combinedPrompt.append("將其整合到分析和生成過程的每個步驟中。\n");
            combinedPrompt.append("如果自定義指令與預設行為有衝突，請以自定義指令為準。\n");
            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");
        }

        // 3. 加入用戶檔案
        if (userFiles != null && !userFiles.isEmpty()) {
            combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(" 以下是需要處理的實際檔案：\n");
            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");

            for (int i = 0; i < userFiles.size(); i++) {
                FileData fileData = userFiles.get(i);
                combinedPrompt.append(String.format("\n=== 用戶檔案 %d: %s ===\n",
                        i + 1, fileData.getFileName()));
                combinedPrompt.append(fileData.getContent());
                combinedPrompt.append("\n");
            }
        }

        // 4. 加入 Few-shot 範例（保持原邏輯但加入自定義 prompt 提醒）
        if (loadResult.isSuccess() && !loadResult.getFewShotFiles().isEmpty()) {
            combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(" 參考範例（用於理解輸出格式和結構）:\n");
            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            combinedPrompt.append(DEFAULT_FEWSHOT_PROMPT_TEMPLATE).append("\n");
            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");

            // 加入 Few-shot 範例檔案
            for (int i = 0; i < loadResult.getFewShotFiles().size(); i++) {
                FileData fileData = loadResult.getFewShotFiles().get(i);
                combinedPrompt.append(String.format("\n=== 範例檔案 %d: %s ===\n",
                        i + 1, fileData.getFileName()));
                combinedPrompt.append(fileData.getContent());
                combinedPrompt.append("\n");
            }

            combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");

            //  根據是否有自定義 prompt 給出不同的最終指導
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                combinedPrompt.append(" 最終任務指導：\n");
                combinedPrompt.append("現在，請根據上述範例模式的結構和格式，");
                combinedPrompt.append("同時嚴格遵循前面提到的自定義指令，");
                combinedPrompt.append("為前面提到的實際檔案生成對應的 Karate 測試案例。\n\n");

                combinedPrompt.append(" 特別注意：\n");
                combinedPrompt.append("- 自定義指令具有最高優先級\n");
                combinedPrompt.append("- 範例僅供參考格式，請根據自定義指令調整內容\n");
                combinedPrompt.append("- 如有衝突，以自定義指令為準\n");
            } else {
                combinedPrompt.append(" 最終任務指導：\n");
                combinedPrompt.append("現在，請根據上述範例模式，");
                combinedPrompt.append("為前面提到的實際檔案生成對應的 Karate 測試案例。\n");
            }

            combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");
        } else {
            // 沒有 Few-shot 範例時的處理
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                combinedPrompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n");
                combinedPrompt.append(" 最終任務指導：\n");
                combinedPrompt.append("請根據前面的自定義指令，");
                combinedPrompt.append("為提供的檔案生成相應的 Karate 測試案例。\n");
                combinedPrompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");
            }
        }

        return combinedPrompt.toString();
    }

    /**
     *  快速建立完整的 Prompt（支援自定義 Prompt）
     * @param mainPrompt 主要的 prompt 內容
     * @param userFiles 用戶選擇的檔案
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @return 組合後的完整 prompt
     */
    public String buildCompletePrompt(String mainPrompt, List<FileData> userFiles, String customPrompt) {
        LoadResult loadResult = loadFewShotExamples();
        return buildCompletePrompt(loadResult, mainPrompt, userFiles, customPrompt);
    }

    /**
     *  保持向後兼容的方法（無自定義 prompt）
     * @param mainPrompt 主要的 prompt 內容
     * @param userFiles 用戶選擇的檔案
     * @return 組合後的完整 prompt
     */
    public String buildCompletePrompt(String mainPrompt, List<FileData> userFiles) {
        return buildCompletePrompt(mainPrompt, userFiles, null);
    }

    /**
     *  僅使用自定義 Prompt 構建（適用於某些特殊場景）
     * @param customPrompt 用戶自定義的 prompt
     * @param userFiles 用戶選擇的檔案
     * @return 組合後的 prompt
     */
    public String buildCustomPromptOnly(String customPrompt, List<FileData> userFiles) {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            throw new IllegalArgumentException("自定義 Prompt 不能為空");
        }

        StringBuilder prompt = new StringBuilder();

        // 加入自定義指令
        prompt.append(" 用戶自定義指令：\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append(customPrompt.trim());
        prompt.append("\n").append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");

        // 加入用戶檔案
        if (userFiles != null && !userFiles.isEmpty()) {
            prompt.append(" 需要處理的檔案：\n");
            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");

            for (int i = 0; i < userFiles.size(); i++) {
                FileData fileData = userFiles.get(i);
                prompt.append(String.format("\n=== 檔案 %d: %s ===\n",
                        i + 1, fileData.getFileName()));
                prompt.append(fileData.getContent());
                prompt.append("\n");
            }

            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");
        }

        // 最終指導
        prompt.append(" 請根據上述自定義指令處理提供的檔案。\n");

        return prompt.toString();
    }

    /**
     *  驗證自定義 Prompt 的合法性
     * @param customPrompt 自定義 prompt
     * @return 驗證結果和建議
     */
    public PromptValidationResult validateCustomPrompt(String customPrompt) {
        List<String> warnings = new ArrayList<>();
        List<String> suggestions = new ArrayList<>();
        boolean isValid = true;

        if (customPrompt == null) {
            return new PromptValidationResult(true, "無自定義 Prompt", new ArrayList<>(), new ArrayList<>());
        }

        String trimmed = customPrompt.trim();

        // 空白檢查
        if (trimmed.isEmpty()) {
            return new PromptValidationResult(true, "無自定義 Prompt", new ArrayList<>(), new ArrayList<>());
        }

        // 長度檢查
        if (trimmed.length() > 5000) {
            warnings.add("自定義 Prompt 過長 (" + trimmed.length() + " 字元)，可能影響處理效能");
            suggestions.add("建議將 Prompt 精簡到 2000 字元以內");
        }

        if (trimmed.length() < 10) {
            warnings.add("自定義 Prompt 過短，可能無法提供足夠的指導");
            suggestions.add("建議提供更詳細的指令說明");
        }

        // 內容檢查
        if (trimmed.toLowerCase().contains("ignore") || trimmed.toLowerCase().contains("忽略")) {
            warnings.add("檢測到可能的忽略指令，請確認是否為預期行為");
        }

        // 格式建議
        if (!trimmed.contains("-") && !trimmed.contains("•") && !trimmed.contains("*")) {
            suggestions.add("建議使用條列式格式 (-, •, *) 來提高可讀性");
        }

        // 關鍵字檢查
        String[] recommendedKeywords = {"測試", "test", "karate", "scenario", "feature", "驗證", "檢查"};
        boolean hasRelevantKeyword = false;
        for (String keyword : recommendedKeywords) {
            if (trimmed.toLowerCase().contains(keyword.toLowerCase())) {
                hasRelevantKeyword = true;
                break;
            }
        }

        if (!hasRelevantKeyword) {
            suggestions.add("建議包含測試相關的關鍵字以提高指令的針對性");
        }

        return new PromptValidationResult(isValid, "自定義 Prompt 驗證完成", warnings, suggestions);
    }

    /**
     *  自定義 Prompt 驗證結果類別
     */
    public static class PromptValidationResult {
        private final boolean valid;
        private final String message;
        private final List<String> warnings;
        private final List<String> suggestions;

        public PromptValidationResult(boolean valid, String message, List<String> warnings, List<String> suggestions) {
            this.valid = valid;
            this.message = message;
            this.warnings = warnings != null ? warnings : new ArrayList<>();
            this.suggestions = suggestions != null ? suggestions : new ArrayList<>();
        }

        public boolean isValid() { return valid; }
        public String getMessage() { return message; }
        public List<String> getWarnings() { return warnings; }
        public List<String> getSuggestions() { return suggestions; }

        public boolean hasWarnings() { return !warnings.isEmpty(); }
        public boolean hasSuggestions() { return !suggestions.isEmpty(); }
    }

    /**
     * 檢查 Few-shot 範例檔案是否存在
     * @return 檢查結果列表
     */
    public List<String> checkExampleFiles() {
        List<String> results = new ArrayList<>();

        for (ExampleType type : ExampleType.values()) {
            String filePath = buildFilePath(type);
            boolean exists = Files.exists(Paths.get(filePath));
            String status = exists ? "" : "";
            results.add(String.format("%s %s: %s", status, type.getDescription(), filePath));
        }

        return results;
    }

    /**
     *  取得當前配置資訊（包含自定義 Prompt 支援資訊）
     * @return 配置資訊字串
     */
    public String getConfigInfo() {
        StringBuilder info = new StringBuilder();
        info.append(" Few-shot 管理器配置：\n");
        info.append("    基礎路徑: ").append(basePath).append("\n");
        info.append("    支援類型: ").append(ExampleType.values().length).append(" 種\n");
        info.append("    自定義 Prompt:  已支援\n"); //  添加自定義 prompt 支援資訊

        for (ExampleType type : ExampleType.values()) {
            info.append("      - ").append(type.getDescription()).append(" (").append(type.getDefaultFileName()).append(")\n");
        }

        //  添加自定義 Prompt 功能說明
        info.append("\n 自定義 Prompt 功能：\n");
        info.append("   - 支援用戶自定義指令\n");
        info.append("   - 優先級高於預設行為\n");
        info.append("   - 自動驗證和建議\n");
        info.append("   - 與 Few-shot 範例智能整合\n");

        return info.toString();
    }

    /**
     * 取得基礎路徑
     * @return 基礎路徑
     */
    public String getBasePath() {
        return basePath;
    }

    /**
     *  取得自定義 Prompt 使用統計
     * @param customPrompt 自定義 prompt
     * @return 統計資訊
     */
    public CustomPromptStats getCustomPromptStats(String customPrompt) {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            return new CustomPromptStats(0, 0, 0, false);
        }

        String trimmed = customPrompt.trim();
        int charCount = trimmed.length();
        int lineCount = trimmed.split("\n").length;
        int wordCount = trimmed.split("\\s+").length;
        boolean hasStructure = trimmed.contains("-") || trimmed.contains("•") || trimmed.contains("*") || trimmed.contains("1.");

        return new CustomPromptStats(charCount, lineCount, wordCount, hasStructure);
    }

    /**
     *  自定義 Prompt 統計資訊類別
     */
    public static class CustomPromptStats {
        private final int charCount;
        private final int lineCount;
        private final int wordCount;
        private final boolean hasStructure;

        public CustomPromptStats(int charCount, int lineCount, int wordCount, boolean hasStructure) {
            this.charCount = charCount;
            this.lineCount = lineCount;
            this.wordCount = wordCount;
            this.hasStructure = hasStructure;
        }

        public int getCharCount() { return charCount; }
        public int getLineCount() { return lineCount; }
        public int getWordCount() { return wordCount; }
        public boolean hasStructure() { return hasStructure; }

        @Override
        public String toString() {
            return String.format("統計: %d 字元, %d 行, %d 字詞, 結構化: %s",
                    charCount, lineCount, wordCount, hasStructure ? "是" : "否");
        }
    }

    // === 私有輔助方法 ===

    /**
     * 建立檔案完整路徑
     */
    private String buildFilePath(ExampleType type) {
        return Paths.get(basePath, type.getDefaultFileName()).toString();
    }
}