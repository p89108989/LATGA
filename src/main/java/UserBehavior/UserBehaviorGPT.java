package UserBehavior;

import FileChooser.MultiFileChooser.FileData;

import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * UserBehavior Gherkin 文件生成服務 - 🆕 支援自定義 Prompt
 * 重構版本：作為服務集成到 LATGA 系統中
 * 功能：分析前端程式碼，生成標準的 Gherkin BDD 測試案例
 *
 * @author StructuralBlackbox Team
 * @version 4.0 - Enhanced with Custom Prompt Support
 */
@Service
public class UserBehaviorGPT {

    @Autowired
    private OpenAiChatModel chatModel;

    // Prompt 檔案路徑
    private static final String PROMPT_FILE = "prompts/gherkin_prompt.txt";

    // 輸出檔案路徑
    private static final String OUTPUT_DIRECTORY = "output/gherkin";

    // 🆕 自定義 Prompt 分隔符
    private static final String CUSTOM_PROMPT_SEPARATOR = "=".repeat(80);

    /**
     * 建構子
     */
    public UserBehaviorGPT() {
        // 初始化輸出目錄
        initializeOutputDirectory();
    }

    /**
     * 生成 Gherkin 測試案例 - 原版本（保持不變）
     * @param frontendFiles 前端程式碼檔案列表
     * @return 生成的 Gherkin 內容
     * @throws Exception 處理過程中的異常
     */
    public GherkinGenerationResult generateGherkin(List<FileData> frontendFiles) throws Exception {
        // 🆕 調用支援自定義 prompt 的版本，但傳入 null
        return generateGherkin(frontendFiles, null);
    }

    /**
     * 🆕 生成 Gherkin 測試案例 - 支援自定義 Prompt
     * @param frontendFiles 前端程式碼檔案列表
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @return 生成的 Gherkin 內容
     * @throws Exception 處理過程中的異常
     */
    public GherkinGenerationResult generateGherkin(List<FileData> frontendFiles, String customPrompt) throws Exception {
        System.out.println("\n🎭 UserBehaviorGPT 開始生成 Gherkin 測試案例...");

        // 🆕 顯示自定義 Prompt 狀態
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("📝 自定義 Prompt: ✅ 已提供 (長度: " + customPrompt.length() + " 字元)");
            System.out.println("📝 Prompt 預覽: " + customPrompt.substring(0, Math.min(100, customPrompt.length())) +
                    (customPrompt.length() > 100 ? "..." : ""));
        } else {
            System.out.println("📝 自定義 Prompt: ❌ 未提供，使用預設 Gherkin 模式");
        }

        // 驗證輸入
        if (frontendFiles == null || frontendFiles.isEmpty()) {
            throw new IllegalArgumentException("前端檔案列表不能為空");
        }

        // 🆕 驗證自定義 Prompt 安全性
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            validateCustomPrompt(customPrompt);
        }

        // 過濾出前端相關檔案
        List<FileData> validFrontendFiles = filterFrontendFiles(frontendFiles);

        if (validFrontendFiles.isEmpty()) {
            System.out.println("⚠️ 未發現前端相關檔案，將使用所有提供的檔案");
            validFrontendFiles = frontendFiles;
        }

        System.out.println("📋 處理前端檔案：");
        for (FileData file : validFrontendFiles) {
            System.out.printf("   📄 %s (%,d 字元)\n",
                    file.getFileName(), file.getContent().length());
        }

        // 載入 Gherkin prompt
        String mainPrompt = loadGherkinPrompt();

        // 🆕 建立完整的 Prompt（支援自定義 prompt）
        String combinedPrompt = buildGherkinPromptWithCustom(mainPrompt, validFrontendFiles, customPrompt);

        System.out.println("🤖 正在分析前端程式碼並生成 Gherkin BDD 測試案例...");
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("🎯 將應用自定義指令到 Gherkin 生成中");
        }

        // 調用 AI 生成 Gherkin
        Prompt prompt = new Prompt(combinedPrompt);
        ChatResponse response = chatModel.call(prompt);
        String gherkinContent = response.getResult().getOutput().getText();

        System.out.println("✅ Gherkin 測試案例生成完成");
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("🎯 自定義指令已成功整合到 Gherkin 中");
        }

        // 建立結果物件
        GherkinGenerationResult result = new GherkinGenerationResult(
                gherkinContent,
                validFrontendFiles.size(),
                combinedPrompt.length(),
                true,
                null
        );

        // 自動保存（可選）
        String savedFilePath = saveGherkinFeature(gherkinContent, customPrompt != null && !customPrompt.trim().isEmpty());
        result.setSavedFilePath(savedFilePath);

        return result;
    }

    /**
     * 🆕 驗證自定義 Prompt 的基本安全性和合法性
     */
    private void validateCustomPrompt(String customPrompt) {
        if (customPrompt == null) {
            return;
        }

        String trimmed = customPrompt.trim();

        // 長度檢查
        if (trimmed.length() > 3000) {
            System.out.println("⚠️ 自定義 Prompt 過長 (" + trimmed.length() + " 字元)，建議控制在 2000 字元以內");
        }

        // 基本安全檢查
        String lowerPrompt = trimmed.toLowerCase();
        String[] potentialIssues = {"ignore previous", "忽略前面", "forget gherkin", "忘記 gherkin"};

        for (String issue : potentialIssues) {
            if (lowerPrompt.contains(issue)) {
                System.out.println("⚠️ 自定義 Prompt 包含可能影響 Gherkin 生成的指令: " + issue);
                System.out.println("💡 建議調整指令內容，確保與 Gherkin BDD 格式相容");
                break;
            }
        }

        System.out.println("✅ 自定義 Prompt 基本驗證通過");
    }

    /**
     * 🆕 建立完整的 Gherkin Prompt（支援自定義 Prompt）
     */
    private String buildGherkinPromptWithCustom(String mainPrompt, List<FileData> frontendFiles, String customPrompt) {
        StringBuilder prompt = new StringBuilder();

        // 1. 加入主要 Gherkin prompt
        prompt.append(mainPrompt).append("\n\n");

        // 🆕 2. 如果有自定義 prompt，優先加入
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            prompt.append("🎯 用戶自定義 Gherkin 生成指令（優先級：高）:\n");
            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            prompt.append(customPrompt.trim()).append("\n");
            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
            prompt.append("📌 重要提醒：請在生成 Gherkin 測試案例時特別注意並優先遵循上述自定義指令。\n");
            prompt.append("如果自定義指令與標準 Gherkin 格式有衝突，請以自定義指令為準並適當調整格式。\n");
            prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");
        }

        // 3. 加入前端檔案內容
        prompt.append("=== 以下是要分析的前端程式碼檔案內容 ===\n\n");

        for (FileData fileData : frontendFiles) {
            prompt.append("檔案名稱: ").append(fileData.getFileName()).append("\n");
            prompt.append("檔案內容:\n");
            prompt.append(fileData.getContent()).append("\n");
            prompt.append("-".repeat(50)).append("\n\n");
        }

        // 🆕 4. 最終指導（根據是否有自定義 prompt）
        prompt.append("=== 請根據上述前端程式碼生成 Gherkin 測試案例 ===\n");

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            prompt.append("🎯 生成要求：\n");
            prompt.append("- 嚴格遵循前面提到的自定義指令\n");
            prompt.append("- 確保生成的測試案例符合 BDD 最佳實踐\n");
            prompt.append("- 如有衝突，以自定義指令為準\n");
            prompt.append("- 保持 Gherkin 格式的完整性和可讀性\n\n");
        } else {
            prompt.append("請確保生成的測試案例完整、具體且符合 BDD 最佳實踐。\n\n");
        }

        return prompt.toString();
    }

    /**
     * 過濾前端相關檔案
     * @param files 所有檔案
     * @return 前端相關檔案
     */
    private List<FileData> filterFrontendFiles(List<FileData> files) {
        return files.stream()
                .filter(this::isFrontendFile)
                .toList();
    }

    /**
     * 判斷是否為前端檔案
     * @param file 檔案資料
     * @return true 如果是前端檔案
     */
    private boolean isFrontendFile(FileData file) {
        String fileName = file.getFileName().toLowerCase();
        String[] frontendExtensions = {
                ".html", ".htm", ".js", ".jsx", ".ts", ".tsx",
                ".vue", ".css", ".scss", ".sass", ".less",
                ".json", ".md", ".txt"
        };

        for (String ext : frontendExtensions) {
            if (fileName.endsWith(ext)) {
                return true;
            }
        }

        // 檢查檔案內容是否包含前端相關關鍵字
        String content = file.getContent().toLowerCase();
        String[] frontendKeywords = {
                "component", "react", "vue", "angular", "html", "css",
                "javascript", "typescript", "frontend", "ui", "interface"
        };

        for (String keyword : frontendKeywords) {
            if (content.contains(keyword)) {
                return true;
            }
        }

        return false;
    }

    /**
     * 載入 Gherkin prompt
     */
    private String loadGherkinPrompt() {
        Path promptPath = Paths.get(PROMPT_FILE);

        try {
            String content = Files.readString(promptPath, StandardCharsets.UTF_8).trim();
            System.out.println("✅ 已載入 Gherkin prompt 檔案: " + PROMPT_FILE);
            return content;
        } catch (IOException e) {
            System.out.println("⚠️ 無法讀取 prompt 檔案，使用預設 prompt: " + e.getMessage());
            return getDefaultGherkinPrompt();
        }
    }

    /**
     * 取得預設的 Gherkin prompt
     */
    private String getDefaultGherkinPrompt() {
        return """
            你是一個專業的 BDD (Behavior-Driven Development) 測試專家，專門撰寫高品質的 Gherkin 測試案例。
            
            請根據提供的前端程式碼檔案，分析其功能和使用者行為，生成完整的 Gherkin Feature 文件。
            
            **分析重點：**
            - UI 元件和互動功能
            - 使用者操作流程和預期行為
            - 表單驗證、按鈕點擊、頁面導航
            - 不同使用者角色和權限
            - 錯誤處理和邊界條件
            
            **Gherkin 格式要求：**
            - 使用繁體中文撰寫
            - 包含適當的標籤 (@ui, @smoke, @regression 等)
            - 提供多個測試情境
            - 使用 Given-When-Then 語法
            
            **輸出格式：**
            ```gherkin
            # language: zh-TW
            Feature: [前端功能名稱]
              作為 [使用者角色]
              我希望 [具體需求]
              以便 [達成目標]

              @ui @smoke
              Scenario: [測試情境]
                Given [前置條件]
                When [執行動作]
                Then [預期結果]
            ```
            
            請生成完整、專業的 Gherkin 測試案例。
            """;
    }

    /**
     * 建立完整的 Gherkin Prompt - 原版本（保持向後兼容）
     */
    private String buildGherkinPrompt(String mainPrompt, List<FileData> frontendFiles) {
        return buildGherkinPromptWithCustom(mainPrompt, frontendFiles, null);
    }

    /**
     * 🆕 保存 Gherkin Feature 文件（支援自定義 Prompt 標記）
     * @param gherkinContent Gherkin 內容
     * @param hasCustomPrompt 是否使用了自定義 prompt
     * @return 保存的檔案路徑
     */
    private String saveGherkinFeature(String gherkinContent, boolean hasCustomPrompt) {
        try {
            // 確保輸出目錄存在
            Path outputDir = Paths.get(OUTPUT_DIRECTORY);
            if (!Files.exists(outputDir)) {
                Files.createDirectories(outputDir);
            }

            // 生成檔案名稱
            String timestamp = java.time.LocalDateTime.now()
                    .format(java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd_HH-mm-ss"));

            // 🆕 根據是否使用自定義 prompt 調整檔案名
            String fileName = hasCustomPrompt ?
                    "user_behavior_custom_" + timestamp + ".feature" :
                    "user_behavior_" + timestamp + ".feature";

            Path outputPath = outputDir.resolve(fileName);

            // 🆕 在檔案開頭添加生成資訊註解
            StringBuilder contentWithHeader = new StringBuilder();
            contentWithHeader.append("# Generated by UserBehaviorGPT\n");
            contentWithHeader.append("# Timestamp: ").append(timestamp).append("\n");
            if (hasCustomPrompt) {
                contentWithHeader.append("# Custom Prompt: Applied\n");
            }
            contentWithHeader.append("# ==============================================\n\n");
            contentWithHeader.append(gherkinContent);

            // 保存 Gherkin 內容
            Files.writeString(outputPath, contentWithHeader.toString(), StandardCharsets.UTF_8);

            String filePath = outputPath.toAbsolutePath().toString();
            System.out.println("✅ Gherkin Feature 文件已保存至: " + filePath);
            System.out.println("📄 檔案大小: " + Files.size(outputPath) + " bytes");
            if (hasCustomPrompt) {
                System.out.println("🎯 檔案包含自定義指令生成的內容");
            }

            return filePath;

        } catch (IOException e) {
            System.out.println("❌ 保存 Gherkin 文件失敗: " + e.getMessage());
            return null;
        }
    }

    /**
     * 保存 Gherkin Feature 文件 - 原版本（保持向後兼容）
     * @param gherkinContent Gherkin 內容
     * @return 保存的檔案路徑
     */
    private String saveGherkinFeature(String gherkinContent) {
        return saveGherkinFeature(gherkinContent, false);
    }

    /**
     * 初始化輸出目錄
     */
    private void initializeOutputDirectory() {
        try {
            Path outputDir = Paths.get(OUTPUT_DIRECTORY);
            if (!Files.exists(outputDir)) {
                Files.createDirectories(outputDir);
            }
        } catch (IOException e) {
            System.err.println("❌ 無法建立輸出目錄: " + e.getMessage());
        }
    }

    /**
     * 🆕 檢查是否支援自定義 Prompt
     * @return true 表示支援
     */
    public boolean supportsCustomPrompt() {
        return true;
    }

    /**
     * 🆕 取得自定義 Prompt 使用建議
     * @return 使用建議字串
     */
    public String getCustomPromptSuggestion() {
        return "建議包含：特定使用者角色、重點測試情境、特殊驗證需求、互動流程優先級等 Gherkin BDD 相關指令";
    }

    /**
     * Gherkin 生成結果類別
     */
    public static class GherkinGenerationResult {
        private final String gherkinContent;
        private final int processedFileCount;
        private final int promptLength;
        private final boolean success;
        private final String errorMessage;
        private String savedFilePath;

        public GherkinGenerationResult(String gherkinContent, int processedFileCount,
                                       int promptLength, boolean success, String errorMessage) {
            this.gherkinContent = gherkinContent;
            this.processedFileCount = processedFileCount;
            this.promptLength = promptLength;
            this.success = success;
            this.errorMessage = errorMessage;
        }

        // Getters
        public String getGherkinContent() { return gherkinContent; }
        public int getProcessedFileCount() { return processedFileCount; }
        public int getPromptLength() { return promptLength; }
        public boolean isSuccess() { return success; }
        public String getErrorMessage() { return errorMessage; }
        public String getSavedFilePath() { return savedFilePath; }

        // Setter
        public void setSavedFilePath(String savedFilePath) { this.savedFilePath = savedFilePath; }

        /**
         * 建立 Gherkin 檔案資料物件，用於傳遞給 KarateGeneratorGPT
         * @return FileData 物件
         */
        public FileData toFileData() {
            String fileName = "generated_gherkin_" +
                    java.time.LocalDateTime.now().format(
                            java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd_HH-mm-ss")
                    ) + ".feature";

            return new FileData(savedFilePath != null ? savedFilePath : fileName, gherkinContent);
        }

        @Override
        public String toString() {
            return String.format("GherkinGenerationResult{success=%s, files=%d, contentLength=%d}",
                    success, processedFileCount, gherkinContent != null ? gherkinContent.length() : 0);
        }
    }
}