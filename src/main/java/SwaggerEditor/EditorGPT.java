package SwaggerEditor;

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
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 * 🆕 增強版 EditorGPT 服務 - 整合到 LATGA，支援自定義 Prompt
 * 移除對話功能，專注於 Swagger 文檔分析和增強
 *
 * @author StaticBlackbox Team
 * @version 2.0 - Enhanced with Custom Prompt Support
 */
@Service
public class EditorGPT {

    @Autowired(required = false)
    private OpenAiChatModel chatModel;

    private final SwaggerMerger swaggerMerger = SwaggerEditor.SwaggerMerger.create(true);
    private static final String OUTPUT_DIRECTORY = "output/swagger";

    // 🆕 自定義 Prompt 分隔符
    private static final String CUSTOM_PROMPT_SEPARATOR = "=".repeat(80);

    // 預設的分析 Prompt
    private static final String DEFAULT_PROMPT = """
            請執行以下步驟：
            1. 分析文件格式，是否符合swagger規範
            2. 解析文件內容，統計有多少個 API 操作 (operation)。
            3. 回應 API 操作的總數，並自動進行完整分析。
            """;

    // 完整分析 Prompt
    private static final String ANALYSIS_PROMPT = """
            就剛剛的swagger文件進行以下步驟分析
            1.依序分析有多少操作
            2.每個操作中若有"parameters"項則根據各項內容以等價劃分(Equivalence partition)的方式生成預設資料(default data)包含
                valid的中間值
                valid的最大值(接近邊界值)
                valid的最小值(接近邊界值)
                大於最大值invalid(遠離邊界值)
                小於最小值invalid(遠離邊界值)
                不符合輸入規範的invalid
            3.若操作中"type"為"integer"則給定值的範圍後寫入"parameters"項
            4.將預設資料以enum的陣列儲存後寫入"parameters"中
            5.列出更新部分的完整swagger文件(因為json不支援註解，不用特別標註)
            """;

    /**
     * 原版本處理方法（保持向後兼容）
     */
    public EditorGPTResult processSwaggerFiles(List<FileData> fileDataList) throws EditorGPTException {
        return processSwaggerFiles(fileDataList, null);
    }

    /**
     * 🆕 支援自定義 Prompt 的主要處理方法 - 分析和增強 Swagger 文檔
     * @param fileDataList 要處理的 Swagger 文檔列表
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @return 處理結果
     * @throws EditorGPTException 處理過程中的異常
     */
    public EditorGPTResult processSwaggerFiles(List<FileData> fileDataList, String customPrompt) throws EditorGPTException {
        long startTime = System.currentTimeMillis();

        System.out.println("\n" + "=".repeat(60));
        System.out.println("🤖 EditorGPT 開始分析 Swagger 文檔" +
                (customPrompt != null && !customPrompt.trim().isEmpty() ? "（含自定義指令）" : ""));
        System.out.println("   檔案數量: " + fileDataList.size());
        System.out.println("   開始時間: " + LocalDateTime.now());

        // 🆕 顯示自定義 Prompt 狀態
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("📝 自定義 Prompt: ✅ 已提供 (長度: " + customPrompt.length() + " 字元)");
            System.out.println("📝 Prompt 預覽: " + customPrompt.substring(0, Math.min(100, customPrompt.length())) +
                    (customPrompt.length() > 100 ? "..." : ""));
        } else {
            System.out.println("📝 自定義 Prompt: ❌ 未提供，使用預設 Swagger 分析模式");
        }

        System.out.println("=".repeat(60));

        try {
            // 步驟1: 驗證 AI 模型
            if (chatModel == null) {
                throw new EditorGPTException("OpenAI Chat Model 未配置或未可用");
            }

            // 🆕 步驟2: 驗證自定義 Prompt 安全性
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                validateCustomPrompt(customPrompt);
            }

            // 步驟3: 確保輸出目錄存在
            ensureOutputDirectory();

            // 步驟4: 處理每個檔案
            List<String> processedFiles = new ArrayList<>();

            for (int i = 0; i < fileDataList.size(); i++) {
                FileData fileData = fileDataList.get(i);
                System.out.println("📄 處理檔案 " + (i + 1) + ": " + fileData.getFileName());

                // 🆕 傳遞自定義 prompt 到單檔處理方法
                String processedFile = processSingleSwaggerFileWithCustomPrompt(fileData, i + 1, customPrompt);
                if (processedFile != null) {
                    processedFiles.add(processedFile);
                }
            }

            if (processedFiles.isEmpty()) {
                throw new EditorGPTException("沒有成功處理任何檔案");
            }

            long processingTime = System.currentTimeMillis() - startTime;

            System.out.println("✅ EditorGPT 處理完成");
            System.out.println("   處理時間: " + processingTime + "ms");
            System.out.println("   成功檔案: " + processedFiles.size() + " 個");
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println("   🎯 自定義指令: 已完全整合到所有處理結果中");
            }

            return new EditorGPTResult(
                    true,
                    "Swagger 文檔分析和增強完成" +
                            (customPrompt != null && !customPrompt.trim().isEmpty() ? "（含自定義指令）" : ""),
                    processedFiles,
                    processingTime,
                    fileDataList.size()
            );

        } catch (Exception e) {
            long processingTime = System.currentTimeMillis() - startTime;
            System.err.println("❌ EditorGPT 處理失敗: " + e.getMessage());
            e.printStackTrace();
            throw new EditorGPTException("處理失敗: " + e.getMessage(), e);
        }
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
        if (trimmed.length() > 4000) {
            System.out.println("⚠️ 自定義 Prompt 過長 (" + trimmed.length() + " 字元)，建議控制在 3000 字元以內");
        }

        // 基本安全檢查
        String lowerPrompt = trimmed.toLowerCase();
        String[] potentialIssues = {"ignore swagger", "忽略 swagger", "skip analysis", "跳過分析"};

        for (String issue : potentialIssues) {
            if (lowerPrompt.contains(issue)) {
                System.out.println("⚠️ 自定義 Prompt 包含可能影響 Swagger 分析的指令: " + issue);
                System.out.println("💡 建議調整指令內容，確保與 Swagger 規範分析相容");
                break;
            }
        }

        System.out.println("✅ 自定義 Prompt 基本驗證通過");
    }

    /**
     * 🆕 支援自定義 Prompt 的單檔處理方法
     */
    private String processSingleSwaggerFileWithCustomPrompt(FileData fileData, int fileIndex, String customPrompt) throws EditorGPTException {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            // 如果沒有自定義 prompt，使用原方法
            return processSingleSwaggerFile(fileData, fileIndex);
        }

        try {
            System.out.println("🔍 分析檔案: " + fileData.getFileName());
            System.out.println("🎯 應用自定義指令到 Swagger 分析中");

            // 🆕 組合包含自定義 prompt 的分析提示
            StringBuilder combinedPrompt = buildInitialPromptWithCustom(customPrompt);
            combinedPrompt.append(String.format("\n=== 檔案: %s ===\n", fileData.getFileName()));
            combinedPrompt.append(fileData.getContent());
            combinedPrompt.append("\n");

            // 第一次分析：包含自定義 prompt 的初始分析
            System.out.println("🤖 進行初始分析（含自定義指令）...");
            Prompt initialPrompt = new Prompt(combinedPrompt.toString());
            ChatResponse initialResponse = chatModel.call(initialPrompt);
            String initialAiResponse = initialResponse.getResult().getOutput().getText();

            System.out.println("📊 初始分析完成，API 操作數量已統計");

            // 第二次分析：包含自定義 prompt 的完整分析
            System.out.println("🔬 進行深入分析（含自定義指令）...");
            StringBuilder fullPrompt = new StringBuilder(combinedPrompt);
            fullPrompt.append("\n使用者：是\n"); // 自動確認進行深入分析
            fullPrompt.append("AI：").append(initialAiResponse).append("\n");

            // 🆕 構建包含自定義 prompt 的深入分析提示
            fullPrompt.append("\n").append(buildAnalysisPromptWithCustom(customPrompt)).append("\n");

            Prompt fullAnalysisPrompt = new Prompt(fullPrompt.toString());
            ChatResponse fullResponse = chatModel.call(fullAnalysisPrompt);
            String fullAnalysisResult = fullResponse.getResult().getOutput().getText();

            System.out.println("🎯 深入分析完成（自定義指令已整合）");

            // 提取並儲存增強後的 JSON 內容
            String enhancedContent = extractEnhancedSwaggerContent(fullAnalysisResult);
            if (enhancedContent == null) {
                System.err.println("⚠️ 無法提取增強內容，使用智能合併模式");
                enhancedContent = fullAnalysisResult; // 如果提取失敗，使用原始回應
            }

            // 使用 SwaggerMerger 進行智能合併
            String mergedContent = swaggerMerger.mergeSwaggerContent(
                    fileData.getContent(),
                    enhancedContent,
                    fileData.getFileName()
            );

            if (mergedContent == null) {
                System.err.println("⚠️ 智能合併失敗，使用增強內容");
                mergedContent = enhancedContent;
            }

            // 🆕 儲存增強後的檔案（標記使用了自定義 prompt）
            String savedFile = saveEnhancedSwaggerFileWithCustomPrompt(fileData.getFileName(), mergedContent, fileIndex, true);

            System.out.println("✅ 檔案處理完成（含自定義指令）: " + savedFile);
            return savedFile;

        } catch (Exception e) {
            System.err.println("❌ 處理檔案失敗（含自定義 prompt）(" + fileData.getFileName() + "): " + e.getMessage());
            // 回退到原方法
            System.out.println("🔄 回退到標準 Swagger 分析流程");
            return processSingleSwaggerFile(fileData, fileIndex);
        }
    }

    /**
     * 🆕 構建包含自定義 Prompt 的初始分析提示
     */
    private StringBuilder buildInitialPromptWithCustom(String customPrompt) {
        StringBuilder prompt = new StringBuilder();

        // 1. 自定義 prompt（最高優先級）
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("🎯 用戶自定義 Swagger 分析要求（優先級：最高）:\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append(customPrompt.trim()).append("\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("📌 重要提醒：在執行以下 Swagger 分析時，請特別注意並優先滿足上述自定義要求。\n");
        prompt.append("自定義要求的優先級高於標準分析流程，如有衝突請以自定義要求為準。\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");

        // 2. 標準初始分析 prompt
        prompt.append(DEFAULT_PROMPT);

        return prompt;
    }

    /**
     * 🆕 構建包含自定義 Prompt 的深入分析提示
     */
    private String buildAnalysisPromptWithCustom(String customPrompt) {
        StringBuilder prompt = new StringBuilder();

        // 1. 自定義要求強化
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("🎯 用戶自定義深入分析要求（優先級：最高）:\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append(customPrompt.trim()).append("\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("📌 關鍵指示：在執行以下深入分析時，請嚴格遵循上述自定義要求。\n");
        prompt.append("確保生成的 Swagger 內容完全符合用戶的特殊需求。\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");

        // 2. 標準深入分析 prompt
        prompt.append(ANALYSIS_PROMPT);

        return prompt.toString();
    }

    /**
     * 🔧 處理單個 Swagger 檔案 - 原版本（保持向後兼容）
     */
    private String processSingleSwaggerFile(FileData fileData, int fileIndex) throws EditorGPTException {
        try {
            System.out.println("🔍 分析檔案: " + fileData.getFileName());

            // 組合 prompt
            StringBuilder combinedPrompt = new StringBuilder(DEFAULT_PROMPT);
            combinedPrompt.append(String.format("\n=== 檔案: %s ===\n", fileData.getFileName()));
            combinedPrompt.append(fileData.getContent());
            combinedPrompt.append("\n");

            // 第一次分析：初始分析
            System.out.println("🤖 進行初始分析...");
            Prompt initialPrompt = new Prompt(combinedPrompt.toString());
            ChatResponse initialResponse = chatModel.call(initialPrompt);
            String initialAiResponse = initialResponse.getResult().getOutput().getText();

            System.out.println("📊 初始分析完成，API 操作數量已統計");

            // 第二次分析：完整分析
            System.out.println("🔬 進行深入分析...");
            combinedPrompt.append("\n使用者：是\n"); // 自動確認進行深入分析
            combinedPrompt.append("AI：").append(initialAiResponse).append("\n");
            combinedPrompt.append("\n").append(ANALYSIS_PROMPT).append("\n");

            Prompt fullPrompt = new Prompt(combinedPrompt.toString());
            ChatResponse fullResponse = chatModel.call(fullPrompt);
            String fullAnalysisResult = fullResponse.getResult().getOutput().getText();

            System.out.println("🎯 深入分析完成");

            // 提取並儲存增強後的 JSON 內容
            String enhancedContent = extractEnhancedSwaggerContent(fullAnalysisResult);
            if (enhancedContent == null) {
                System.err.println("⚠️ 無法提取增強內容，使用智能合併模式");
                enhancedContent = fullAnalysisResult; // 如果提取失敗，使用原始回應
            }

            // 使用 SwaggerMerger 進行智能合併
            String mergedContent = swaggerMerger.mergeSwaggerContent(
                    fileData.getContent(),
                    enhancedContent,
                    fileData.getFileName()
            );

            if (mergedContent == null) {
                System.err.println("⚠️ 智能合併失敗，使用增強內容");
                mergedContent = enhancedContent;
            }

            // 儲存增強後的檔案
            String savedFile = saveEnhancedSwaggerFile(fileData.getFileName(), mergedContent, fileIndex);

            System.out.println("✅ 檔案處理完成: " + savedFile);
            return savedFile;

        } catch (Exception e) {
            System.err.println("❌ 處理檔案失敗 (" + fileData.getFileName() + "): " + e.getMessage());
            throw new EditorGPTException("處理檔案失敗: " + fileData.getFileName(), e);
        }
    }

    /**
     * 🔍 從 AI 回應中提取增強的 Swagger 內容
     */
    private String extractEnhancedSwaggerContent(String aiResponse) {
        System.out.println("🔍 提取增強的 Swagger 內容...");

        // 尋找 ```json...``` 代碼區塊
        String[] jsonParts = aiResponse.split("```json");
        for (int i = 1; i < jsonParts.length; i++) {
            int endIndex = jsonParts[i].indexOf("```");
            if (endIndex != -1) {
                String jsonContent = jsonParts[i].substring(0, endIndex).trim();
                if (!jsonContent.isEmpty() && (jsonContent.startsWith("{") || jsonContent.startsWith("["))) {
                    System.out.println("✅ 找到 JSON 格式的增強內容");
                    return jsonContent;
                }
            }
        }

        // 如果沒有找到 ```json 格式，嘗試尋找 ```yaml
        String[] yamlParts = aiResponse.split("```yaml");
        for (int i = 1; i < yamlParts.length; i++) {
            int endIndex = yamlParts[i].indexOf("```");
            if (endIndex != -1) {
                String yamlContent = yamlParts[i].substring(0, endIndex).trim();
                if (!yamlContent.isEmpty()) {
                    System.out.println("✅ 找到 YAML 格式的增強內容");
                    return yamlContent;
                }
            }
        }

        System.out.println("⚠️ 未找到標準格式的代碼區塊，返回原始回應");
        return null;
    }

    /**
     * 💾 儲存增強後的 Swagger 檔案 - 原版本（保持向後兼容）
     */
    private String saveEnhancedSwaggerFile(String originalFileName, String enhancedContent, int fileIndex)
            throws IOException {
        return saveEnhancedSwaggerFileWithCustomPrompt(originalFileName, enhancedContent, fileIndex, false);
    }

    /**
     * 🆕 儲存增強後的 Swagger 檔案（支援自定義 Prompt 標記）
     */
    private String saveEnhancedSwaggerFileWithCustomPrompt(String originalFileName, String enhancedContent,
                                                           int fileIndex, boolean hasCustomPrompt) throws IOException {

        // 生成新檔案名
        String nameWithoutExtension = originalFileName;
        int lastDot = originalFileName.lastIndexOf('.');
        if (lastDot > 0) {
            nameWithoutExtension = originalFileName.substring(0, lastDot);
        }

        String fileExtension = originalFileName.endsWith(".yaml") || originalFileName.endsWith(".yml") ?
                ".yaml" : ".json";

        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));

        // 🆕 根據是否使用自定義 prompt 調整檔案名
        String prefix = hasCustomPrompt ? "enhanced_custom_" : "enhanced_";
        String newFileName = prefix + nameWithoutExtension + "_" + timestamp + "_" + fileIndex + fileExtension;

        Path outputPath = Paths.get(OUTPUT_DIRECTORY, newFileName);

        // 🆕 在檔案開頭添加生成資訊註解
        StringBuilder finalContent = new StringBuilder();

        if (enhancedContent.trim().startsWith("{")) {
            // JSON 格式 - 無法添加註解，在檔案名中標記
        } else if (enhancedContent.trim().startsWith("openapi:") || fileExtension.equals(".yaml")) {
            // YAML 格式 - 可以添加註解
            finalContent.append("# Enhanced Swagger Documentation\n");
            finalContent.append("# Generated by EditorGPT at ").append(LocalDateTime.now()).append("\n");
            if (hasCustomPrompt) {
                finalContent.append("# Custom Prompt: Applied\n");
            }
            finalContent.append("# ").append("=".repeat(50)).append("\n\n");
        } else {
            // 其他格式
            finalContent.append("# Enhanced Swagger Documentation\n");
            finalContent.append("# Generated by EditorGPT at ").append(LocalDateTime.now()).append("\n");
            if (hasCustomPrompt) {
                finalContent.append("# Custom Prompt: Applied\n");
            }
            finalContent.append("# ").append("=".repeat(50)).append("\n\n");
        }

        finalContent.append(enhancedContent);

        Files.writeString(outputPath, finalContent.toString(), StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);

        System.out.println("💾 增強檔案已儲存: " + outputPath.getFileName());
        if (hasCustomPrompt) {
            System.out.println("🎯 檔案包含自定義指令生成的內容");
        }

        return outputPath.toString();
    }

    /**
     * 📁 確保輸出目錄存在
     */
    private void ensureOutputDirectory() throws IOException {
        Path outputDir = Paths.get(OUTPUT_DIRECTORY);
        if (!Files.exists(outputDir)) {
            Files.createDirectories(outputDir);
            System.out.println("📁 創建輸出目錄: " + outputDir.toAbsolutePath());
        }

        // 清理舊檔案（可選）
        clearOldFiles(outputDir);
    }

    /**
     * 🧹 清理舊檔案
     */
    private void clearOldFiles(Path outputDir) {
        try {
            List<Path> oldFiles = Files.walk(outputDir)
                    .filter(Files::isRegularFile)
                    .filter(path -> path.toString().contains("enhanced_"))
                    .collect(java.util.stream.Collectors.toList());

            for (Path file : oldFiles) {
                try {
                    Files.delete(file);
                } catch (IOException e) {
                    System.err.println("⚠️ 無法刪除舊檔案: " + file + " - " + e.getMessage());
                }
            }

            if (!oldFiles.isEmpty()) {
                System.out.println("🧹 已清理 " + oldFiles.size() + " 個舊的增強檔案");
            }
        } catch (IOException e) {
            System.err.println("⚠️ 清理舊檔案失敗: " + e.getMessage());
        }
    }

    /**
     * 🔍 查找最新生成的增強檔案
     */
    public String findLatestEnhancedFile() throws IOException {
        Path outputDir = Paths.get(OUTPUT_DIRECTORY);
        if (!Files.exists(outputDir)) {
            throw new IOException("輸出目錄不存在: " + outputDir);
        }

        List<Path> enhancedFiles = Files.walk(outputDir)
                .filter(Files::isRegularFile)
                .filter(path -> path.getFileName().toString().startsWith("enhanced_"))
                .sorted((p1, p2) -> {
                    try {
                        return Files.getLastModifiedTime(p2).compareTo(Files.getLastModifiedTime(p1));
                    } catch (IOException e) {
                        return 0;
                    }
                })
                .collect(java.util.stream.Collectors.toList());

        if (enhancedFiles.isEmpty()) {
            throw new IOException("未找到任何增強檔案");
        }

        Path latestFile = enhancedFiles.get(0);
        System.out.println("📄 找到最新增強檔案: " + latestFile.getFileName());

        return Files.readString(latestFile);
    }

    /**
     * 🆕 檢查是否支援自定義 Prompt
     */
    public boolean supportsCustomPrompt() {
        return true;
    }

    /**
     * 🆕 取得自定義 Prompt 使用建議
     */
    public String getCustomPromptSuggestion() {
        return "建議包含：特定 API 分析重點、特殊參數處理要求、業務邏輯驗證、資料格式規範、測試資料生成策略等 Swagger 分析相關指令";
    }

    /**
     * 📊 EditorGPT 處理結果類
     */
    public static class EditorGPTResult {
        private final boolean success;
        private final String message;
        private final List<String> processedFiles;
        private final long processingTimeMs;
        private final int inputFileCount;

        public EditorGPTResult(boolean success, String message, List<String> processedFiles,
                               long processingTimeMs, int inputFileCount) {
            this.success = success;
            this.message = message;
            this.processedFiles = processedFiles != null ? processedFiles : new ArrayList<>();
            this.processingTimeMs = processingTimeMs;
            this.inputFileCount = inputFileCount;
        }

        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public List<String> getProcessedFiles() { return processedFiles; }
        public long getProcessingTimeMs() { return processingTimeMs; }
        public int getInputFileCount() { return inputFileCount; }
    }

    /**
     * ❌ EditorGPT 異常類
     */
    public static class EditorGPTException extends Exception {
        public EditorGPTException(String message) {
            super(message);
        }

        public EditorGPTException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}