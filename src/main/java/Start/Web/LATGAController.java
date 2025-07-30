package Start.Web;

import Start.Common.ModeRunner;
import SwaggerEditor.EditorGPT;
import Karate.KarateMerger; //  新增 Karate合併功能
import FileChooser.MultiFileChooser.FileData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

/**
 *  Enhanced LATGA Controller - 整合 Karate 合併功能和自定義 Prompt 支援
 * 支援四種模式：static, Behavioral, editorgpt, karate-merger
 */
@RestController
@RequestMapping("/api/latga")
@CrossOrigin(origins = "*")
public class LATGAController {

    @Autowired
    private ModeRunner modeRunner;

    @Autowired(required = false)
    private EditorGPT editorGPT;

    @Autowired(required = false)
    private KarateMerger karateMerger; //  新增 Karate 合併服務

    private static final String KARATE_OUTPUT_DIRECTORY = "output/karate";
    private static final String SWAGGER_OUTPUT_DIRECTORY = "output/swagger";
    private static final String MERGE_OUTPUT_DIRECTORY = "output/merge"; //  合併輸出目錄
    private static final long PROCESSING_TIMEOUT_MINUTES = 10;

    /**
     *  主要執行端點 - 支援四種模式和自定義 Prompt
     */
    @PostMapping("/run")
    public ResponseEntity<Resource> runLATGA(
            @RequestParam("files") MultipartFile[] files,
            @RequestParam("mode") String mode,
            @RequestParam(value = "customPrompt", required = false) String customPrompt) { //  添加自定義 prompt 參數

        long startTime = System.currentTimeMillis();
        String executionId = generateExecutionId();

        System.out.println("\n" + "=".repeat(80));
        System.out.println(" LATGA 執行開始 [" + executionId + "] - 模式: " + mode.toUpperCase());
        System.out.println("   檔案數量: " + files.length);
        System.out.println("   自定義 Prompt: " + (customPrompt != null && !customPrompt.trim().isEmpty() ? " 已提供" : " 未提供"));
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("   Prompt 長度: " + customPrompt.length() + " 字元");
            System.out.println("   Prompt 預覽: " + customPrompt.substring(0, Math.min(100, customPrompt.length())) + "...");
        }
        System.out.println("   開始時間: " + LocalDateTime.now());
        System.out.println("=".repeat(80));

        try {
            // 步驟1: 驗證輸入
            System.out.println(" 步驟1: 輸入驗證...");
            validateInput(files, mode);
            System.out.println(" 輸入驗證通過");

            // 步驟2: 檔案轉換
            System.out.println(" 步驟2: 檔案轉換...");
            List<FileData> fileDataList = convertMultipartFiles(files);
            System.out.println(" 檔案轉換完成 - " + fileDataList.size() + " 檔案");

            // 步驟3: 根據模式執行不同處理 ( 傳遞自定義 prompt)
            ResponseEntity<Resource> result;
            switch (mode.toLowerCase()) {
                case "editorgpt":
                    result = handleEditorGPTMode(fileDataList, customPrompt, executionId, startTime);
                    break;
                case "karate-merger": //  新增 Karate 合併模式
                    result = handleKarateMergerMode(fileDataList, customPrompt, executionId, startTime);
                    break;
                case "Structural":
                case "Behavioral":
                    result = handleKarateMode(mode, fileDataList, customPrompt, executionId, startTime);
                    break;
                default:
                    throw new ValidationException("不支援的模式: " + mode);
            }

            long totalTime = System.currentTimeMillis() - startTime;
            System.out.println(" 執行成功 [" + executionId + "] - 總耗時: " + totalTime + "ms");

            return result;

        } catch (ValidationException e) {
            return createErrorResponse("輸入驗證失敗: " + e.getMessage(), executionId, startTime, 400);
        } catch (ProcessingException e) {
            return createErrorResponse("處理失敗: " + e.getMessage(), executionId, startTime, 500);
        } catch (Exception e) {
            String errorMsg = "系統異常: " + e.getClass().getSimpleName() + " - " + e.getMessage();
            System.err.println(" " + errorMsg);
            e.printStackTrace();
            return createErrorResponse(errorMsg, executionId, startTime, 500);
        } finally {
            long totalTime = System.currentTimeMillis() - startTime;
            System.out.println(" 請求處理結束 [" + executionId + "] - 總耗時: " + totalTime + "ms");
            System.out.println("=".repeat(80) + "\n");
        }
    }

    /**
     *  處理 EditorGPT 模式（支援自定義 Prompt）
     */
    private ResponseEntity<Resource> handleEditorGPTMode(List<FileData> fileDataList, String customPrompt,
                                                         String executionId, long startTime)
            throws ProcessingException {

        System.out.println(" 執行 EditorGPT 模式");

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println(" 使用自定義 Prompt: " + customPrompt.substring(0, Math.min(50, customPrompt.length())) + "...");
        }

        // 檢查 EditorGPT 是否可用
        if (editorGPT == null) {
            throw new ProcessingException("EditorGPT 未配置或 OpenAI API 不可用");
        }

        try {
            // 清理舊檔案
            System.out.println(" 清理舊的 Swagger 增強檔案...");
            clearOldGeneratedFiles(SWAGGER_OUTPUT_DIRECTORY);

            //  使用 EditorGPT 的處理方法（傳遞自定義 prompt）
            System.out.println(" 開始 EditorGPT 處理...");
            EditorGPTResult result = processWithEditorGPT(fileDataList, customPrompt);

            if (!result.isSuccess()) {
                throw new ProcessingException("EditorGPT 處理失敗: " + result.getMessage());
            }

            // 查找增強後的檔案
            System.out.println(" 查找增強後的 Swagger 檔案...");
            String enhancedContent = findLatestSwaggerFile();

            // 生成檔案名
            String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
            String fileName = "enhanced_swagger_" + timestamp + ".json";

            long processingTime = System.currentTimeMillis() - startTime;

            System.out.println(" EditorGPT 處理完成:");
            System.out.println("   處理時間: " + processingTime + "ms");
            System.out.println("   處理檔案: " + result.getProcessedFiles() + " 個");
            System.out.println("   輸出檔案: " + fileName);
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println("   自定義指令: 已應用");
            }

            return createSwaggerFileResponse(enhancedContent, fileName, executionId, processingTime,
                    result.getProcessedFiles());

        } catch (Exception e) {
            throw new ProcessingException("EditorGPT 執行失敗: " + e.getMessage(), e);
        }
    }

    /**
     *  使用 EditorGPT 處理檔案（支援自定義 Prompt）
     */
    private EditorGPTResult processWithEditorGPT(List<FileData> fileDataList, String customPrompt) throws Exception {
        System.out.println(" 調用 EditorGPT 處理 " + fileDataList.size() + " 個檔案");

        try {
            //  直接調用 EditorGPT 的 processSwaggerFiles 方法，傳遞自定義 prompt
            SwaggerEditor.EditorGPT.EditorGPTResult result;
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                // 如果有自定義 prompt，使用支援自定義 prompt 的方法
                result = editorGPT.processSwaggerFiles(fileDataList, customPrompt);
                System.out.println(" EditorGPT 已應用自定義指令");
            } else {
                // 沒有自定義 prompt，使用原始方法
                result = editorGPT.processSwaggerFiles(fileDataList);
            }

            return new EditorGPTResult(
                    result.isSuccess(),
                    result.getMessage(),
                    result.getProcessedFiles().size(),
                    result.getProcessingTimeMs()
            );

        } catch (SwaggerEditor.EditorGPT.EditorGPTException e) {
            System.err.println(" EditorGPT 處理失敗: " + e.getMessage());
            throw new Exception("EditorGPT 處理失敗: " + e.getMessage(), e);
        }
    }

    /**
     *  處理 Karate 合併模式（支援自定義 Prompt）
     */
    private ResponseEntity<Resource> handleKarateMergerMode(List<FileData> fileDataList, String customPrompt,
                                                            String executionId, long startTime)
            throws ProcessingException {

        System.out.println(" 執行 Karate 合併模式");

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println(" 使用自定義合併策略: " + customPrompt.substring(0, Math.min(50, customPrompt.length())) + "...");
        }

        // 檢查服務是否可用
        if (karateMerger == null) {
            throw new ProcessingException("Karate合併服務未配置");
        }

        // 檢查檔案數量
        if (fileDataList.size() < 2) {
            throw new ProcessingException("Karate合併模式需要至少兩個.feature檔案");
        }

        // 驗證檔案格式
        for (FileData fileData : fileDataList) {
            if (!fileData.getFileName().toLowerCase().endsWith(".feature")) {
                throw new ProcessingException("Karate合併模式只支援.feature檔案: " + fileData.getFileName());
            }
        }

        try {
            // 清理舊檔案
            System.out.println(" 清理舊的合併檔案...");
            clearOldGeneratedFiles(MERGE_OUTPUT_DIRECTORY);

            // 準備合併配置
            KarateMerger.MergeConfig config = new KarateMerger.MergeConfig();
            config.setMergedFeatureName("Merged Karate Test");
            config.setMergedFeatureDescription("Merged from " + fileDataList.size() + " source files");
            config.setEnableScenarioRenumbering(true);
            config.setEnableQualityCheck(true);
            config.setEnableSyntaxValidation(true);
            config.setScenarioNamingStrategy(KarateMerger.ScenarioNamingStrategy.KEEP_ORIGINAL_WITH_PREFIX);

            //  如果有自定義 prompt，將其設置為合併描述或其他配置
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                config.setMergedFeatureDescription(customPrompt + " (Generated with custom instructions)");
                System.out.println(" 已將自定義指令整合到合併配置中");
            }

            // 執行合併
            System.out.println(" 開始合併 " + fileDataList.size() + " 個 Karate 檔案...");
            KarateMerger.MergeResult mergeResult;

            if (fileDataList.size() == 2) {
                // 兩個檔案的直接合併
                mergeResult = karateMerger.mergeKarateFiles(
                        fileDataList.get(0), fileDataList.get(1), config);
            } else {
                // 多個檔案的逐步合併
                List<String> contentList = fileDataList.stream()
                        .map(FileData::getContent)
                        .collect(Collectors.toList());
                mergeResult = karateMerger.mergeMultipleKarateFiles(contentList, config);
            }

            if (!mergeResult.isSuccess()) {
                throw new ProcessingException("合併失敗: " + mergeResult.getMessage());
            }

            // 生成檔案名
            String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss"));
            String fileName = "merged_karate_" + timestamp + ".feature";

            // 保存合併結果到輸出目錄
            saveToMergeOutput(mergeResult.getMergedContent(), fileName);

            long processingTime = System.currentTimeMillis() - startTime;

            System.out.println(" Karate 合併完成:");
            System.out.println("   處理時間: " + processingTime + "ms");
            System.out.println("   合併檔案: " + fileDataList.size() + " 個");
            System.out.println("   總 Scenario: " + mergeResult.getStatistics().getTotalScenarios() + " 個");
            System.out.println("   輸出檔案: " + fileName);
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println("   自定義指令: 已應用");
            }

            return createMergedFileResponse(
                    mergeResult.getMergedContent(), fileName, executionId, processingTime, mergeResult);

        } catch (Exception e) {
            throw new ProcessingException("Karate合併執行失敗: " + e.getMessage(), e);
        }
    }

    /**
     *  處理 Karate 模式 (Structural/Behavioral)（支援自定義 Prompt）
     */
    private ResponseEntity<Resource> handleKarateMode(String mode, List<FileData> fileDataList, String customPrompt,
                                                      String executionId, long startTime)
            throws ProcessingException {

        System.out.println(" 執行 Karate 模式: " + mode.toUpperCase());

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println(" 使用自定義 Prompt: " + customPrompt.substring(0, Math.min(50, customPrompt.length())) + "...");
        }

        // 清理舊檔案
        System.out.println(" 清理舊的 Karate 測試檔案...");
        clearOldGeneratedFiles(KARATE_OUTPUT_DIRECTORY);

        // 執行核心處理（ 傳遞自定義 prompt）
        System.out.println(" 執行 " + mode + " 模式處理...");
        ExecutionResult result = executeMode(mode, fileDataList, customPrompt, executionId);

        // 查找生成的 .feature 檔案
        System.out.println(" 查找生成的 .feature 檔案...");
        FeatureFileResult featureResult = findGeneratedFeatureFile();

        if (!featureResult.isSuccess()) {
            throw new ProcessingException("未找到生成的 Karate 測試檔案: " + featureResult.getMessage());
        }

        long totalTime = System.currentTimeMillis() - startTime;

        System.out.println(" Karate 模式處理完成:");
        System.out.println("   總耗時: " + totalTime + "ms");
        System.out.println("   檔案名: " + featureResult.getFileName());
        System.out.println("   檔案大小: " + featureResult.getFileContent().length() + " 字元");
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("   自定義指令: 已應用");
        }

        return createFeatureFileResponse(featureResult, executionId, totalTime);
    }

    /**
     *  執行模式的核心方法（支援自定義 Prompt）
     */
    private ExecutionResult executeMode(String mode, List<FileData> fileDataList, String customPrompt, String executionId)
            throws ProcessingException {
        try {
            Path outputPath = Paths.get(KARATE_OUTPUT_DIRECTORY);
            if (!Files.exists(outputPath)) {
                Files.createDirectories(outputPath);
            }

            //  傳遞自定義 prompt 到 ModeRunner
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println(" 傳遞自定義 Prompt 到 ModeRunner...");
                modeRunner.run(mode, fileDataList, customPrompt);
            } else {
                modeRunner.run(mode, fileDataList);
            }

            Thread.sleep(1000);

            return new ExecutionResult(mode, true, "執行成功", new ArrayList<>(),
                    System.currentTimeMillis(), fileDataList.size(), executionId);

        } catch (Exception e) {
            throw new ProcessingException("模式執行失敗: " + e.getMessage(), e);
        }
    }

    /**
     *  保存合併結果到輸出目錄
     */
    private void saveToMergeOutput(String content, String fileName) throws IOException {
        Path outputDir = Paths.get(MERGE_OUTPUT_DIRECTORY);
        if (!Files.exists(outputDir)) {
            Files.createDirectories(outputDir);
        }

        Path filePath = outputDir.resolve(fileName);
        Files.writeString(filePath, content, StandardCharsets.UTF_8);

        System.out.println(" 合併結果已保存到: " + filePath);
    }

    /**
     *  創建合併檔案響應
     */
    private ResponseEntity<Resource> createMergedFileResponse(String mergedContent, String fileName,
                                                              String executionId, long processingTime,
                                                              KarateMerger.MergeResult mergeResult) {

        byte[] fileBytes = mergedContent.getBytes(StandardCharsets.UTF_8);
        ByteArrayResource resource = new ByteArrayResource(fileBytes);

        // 確保檔案名以.feature結尾
        if (!fileName.toLowerCase().endsWith(".feature")) {
            fileName += ".feature";
        }

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileName + "\"")
                .header("X-Execution-ID", executionId)
                .header("X-Processing-Time", String.valueOf(processingTime))
                .header("X-Generated-Files", "1")
                .header("X-Success", "true")
                .header("X-File-Type", "merged-karate")
                .header("X-Total-Scenarios", String.valueOf(mergeResult.getStatistics().getTotalScenarios()))
                .header("X-Source-Files", String.valueOf(mergeResult.getStatistics().getSourceFileCount()))
                .header("X-Warnings", String.valueOf(mergeResult.getWarnings().size()))
                .contentType(MediaType.TEXT_PLAIN)
                .contentLength(fileBytes.length)
                .body(resource);
    }

    /**
     *  Karate 合併專用 API 端點（支援自定義 Prompt）
     */
    @PostMapping("/merge-karate")
    public ResponseEntity<Map<String, Object>> mergeKarateFiles(
            @RequestParam("files") MultipartFile[] files,
            @RequestParam(value = "mergedFeatureName", defaultValue = "Merged Karate Test") String mergedFeatureName,
            @RequestParam(value = "mergedFeatureDescription", defaultValue = "") String mergedFeatureDescription,
            @RequestParam(value = "enableScenarioRenumbering", defaultValue = "true") boolean enableScenarioRenumbering,
            @RequestParam(value = "enableQualityCheck", defaultValue = "true") boolean enableQualityCheck,
            @RequestParam(value = "enableSyntaxValidation", defaultValue = "true") boolean enableSyntaxValidation,
            @RequestParam(value = "scenarioNamingStrategy", defaultValue = "KEEP_ORIGINAL_WITH_PREFIX") String scenarioNamingStrategy,
            @RequestParam(value = "customPrompt", required = false) String customPrompt) { //  添加自定義 prompt 參數

        long startTime = System.currentTimeMillis();
        String executionId = generateExecutionId();

        System.out.println(" 執行 Karate 合併 API [" + executionId + "]");
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println(" 包含自定義 Prompt: " + customPrompt.substring(0, Math.min(50, customPrompt.length())) + "...");
        }

        try {
            // 檢查服務可用性
            if (karateMerger == null) {
                return createJsonErrorResponse("Karate合併服務未配置", executionId, startTime);
            }

            // 檢查檔案數量
            if (files.length < 2) {
                return createJsonErrorResponse("至少需要兩個.feature檔案", executionId, startTime);
            }

            // 轉換檔案
            List<FileData> fileDataList = convertMultipartFiles(files);

            // 驗證檔案格式
            for (FileData fileData : fileDataList) {
                if (!fileData.getFileName().toLowerCase().endsWith(".feature")) {
                    return createJsonErrorResponse("只支援.feature檔案: " + fileData.getFileName(), executionId, startTime);
                }
            }

            // 建立配置
            KarateMerger.MergeConfig config = new KarateMerger.MergeConfig();
            config.setMergedFeatureName(mergedFeatureName);

            //  如果有自定義 prompt，整合到描述中
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                config.setMergedFeatureDescription(mergedFeatureDescription + " | Custom: " + customPrompt);
            } else {
                config.setMergedFeatureDescription(mergedFeatureDescription);
            }

            config.setEnableScenarioRenumbering(enableScenarioRenumbering);
            config.setEnableQualityCheck(enableQualityCheck);
            config.setEnableSyntaxValidation(enableSyntaxValidation);

            try {
                config.setScenarioNamingStrategy(
                        KarateMerger.ScenarioNamingStrategy.valueOf(scenarioNamingStrategy));
            } catch (IllegalArgumentException e) {
                config.setScenarioNamingStrategy(KarateMerger.ScenarioNamingStrategy.KEEP_ORIGINAL_WITH_PREFIX);
            }

            // 執行合併
            KarateMerger.MergeResult mergeResult;
            if (fileDataList.size() == 2) {
                mergeResult = karateMerger.mergeKarateFiles(
                        fileDataList.get(0), fileDataList.get(1), config);
            } else {
                List<String> contentList = fileDataList.stream()
                        .map(FileData::getContent)
                        .collect(Collectors.toList());
                mergeResult = karateMerger.mergeMultipleKarateFiles(contentList, config);
            }

            // 建立響應
            Map<String, Object> response = new HashMap<>();
            response.put("success", mergeResult.isSuccess());
            response.put("message", mergeResult.getMessage());
            response.put("executionId", executionId);
            response.put("processingTime", System.currentTimeMillis() - startTime);

            //  添加自定義 prompt 資訊
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                response.put("customPromptApplied", true);
                response.put("customPromptPreview", customPrompt.substring(0, Math.min(100, customPrompt.length())) + "...");
            } else {
                response.put("customPromptApplied", false);
            }

            if (mergeResult.isSuccess()) {
                response.put("mergedContent", mergeResult.getMergedContent());
                response.put("totalScenarios", mergeResult.getStatistics().getTotalScenarios());
                response.put("sourceFiles", mergeResult.getStatistics().getSourceFileCount());
                response.put("warnings", mergeResult.getWarnings());
                response.put("summary", mergeResult.getSummary());
            } else {
                response.put("errors", mergeResult.getErrors());
            }

            return ResponseEntity.ok(response);

        } catch (Exception e) {
            return createJsonErrorResponse("合併過程發生錯誤: " + e.getMessage(), executionId, startTime);
        }
    }

    /**
     *  獲取 Karate 合併服務狀態
     */
    @GetMapping("/merge-status")
    public ResponseEntity<Map<String, Object>> getMergeStatus() {
        Map<String, Object> status = new HashMap<>();

        try {
            boolean isReady = karateMerger != null && karateMerger.isReady();
            status.put("ready", isReady);
            status.put("serviceAvailable", karateMerger != null);
            status.put("customPromptSupported", true); //  表示支援自定義 prompt

            if (karateMerger != null) {
                status.put("serviceInfo", karateMerger.getServiceInfo());
                status.put("supportedStrategies", new String[]{
                        "KEEP_ORIGINAL",
                        "KEEP_ORIGINAL_WITH_PREFIX",
                        "RENUMBER_SEQUENTIALLY",
                        "COMBINE_WITH_SOURCE_INFO"
                });
            }

            status.put("timestamp", LocalDateTime.now().toString());

            return ResponseEntity.ok(status);

        } catch (Exception e) {
            status.put("ready", false);
            status.put("error", "檢查服務狀態時發生錯誤: " + e.getMessage());
            status.put("timestamp", LocalDateTime.now().toString());

            return ResponseEntity.internalServerError().body(status);
        }
    }

    /**
     *  創建 JSON 錯誤響應
     */
    private ResponseEntity<Map<String, Object>> createJsonErrorResponse(String errorMessage, String executionId, long startTime) {
        Map<String, Object> response = new HashMap<>();
        response.put("success", false);
        response.put("message", errorMessage);
        response.put("executionId", executionId);
        response.put("processingTime", System.currentTimeMillis() - startTime);
        response.put("timestamp", LocalDateTime.now().toString());

        return ResponseEntity.badRequest().body(response);
    }

    /**
     *  查找最新的 Swagger 檔案
     */
    private String findLatestSwaggerFile() throws IOException {
        try {
            //  直接調用 EditorGPT 的 findLatestEnhancedFile 方法
            return editorGPT.findLatestEnhancedFile();
        } catch (IOException e) {
            System.err.println(" 無法找到最新的增強檔案: " + e.getMessage());
            throw e;
        }
    }

    /**
     *  創建 Swagger 檔案響應
     */
    private ResponseEntity<Resource> createSwaggerFileResponse(String swaggerContent, String fileName,
                                                               String executionId, long processingTime,
                                                               int processedFiles) {

        byte[] fileBytes = swaggerContent.getBytes(StandardCharsets.UTF_8);
        ByteArrayResource resource = new ByteArrayResource(fileBytes);

        // 確保檔案名以正確副檔名結尾
        if (!fileName.toLowerCase().endsWith(".json") && !fileName.toLowerCase().endsWith(".yaml")) {
            fileName += ".json";
        }

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileName + "\"")
                .header("X-Execution-ID", executionId)
                .header("X-Processing-Time", String.valueOf(processingTime))
                .header("X-Generated-Files", String.valueOf(processedFiles))
                .header("X-Success", "true")
                .header("X-File-Type", "enhanced-swagger")
                .contentType(MediaType.APPLICATION_JSON)
                .contentLength(fileBytes.length)
                .body(resource);
    }

    /**
     *  查找生成的 .feature 檔案
     */
    private FeatureFileResult findGeneratedFeatureFile() {
        try {
            Path outputDir = Paths.get(KARATE_OUTPUT_DIRECTORY);
            if (!Files.exists(outputDir)) {
                return new FeatureFileResult(false, "Karate 輸出目錄不存在", null, null);
            }

            List<Path> featureFiles = Files.walk(outputDir)
                    .filter(Files::isRegularFile)
                    .filter(path -> path.toString().toLowerCase().endsWith(".feature"))
                    .sorted(Comparator.comparing(path -> {
                        try {
                            return Files.getLastModifiedTime(path);
                        } catch (IOException e) {
                            return null;
                        }
                    }, Comparator.nullsLast(Comparator.reverseOrder())))
                    .collect(Collectors.toList());

            if (featureFiles.isEmpty()) {
                return new FeatureFileResult(false, "未找到 .feature 檔案", null, null);
            }

            Path selectedFile = featureFiles.get(0);
            String content = Files.readString(selectedFile, StandardCharsets.UTF_8);
            String fileName = selectedFile.getFileName().toString();

            return new FeatureFileResult(true, "找到 .feature 檔案", fileName, content);

        } catch (IOException e) {
            return new FeatureFileResult(false, "查找檔案失敗: " + e.getMessage(), null, null);
        }
    }

    private ResponseEntity<Resource> createFeatureFileResponse(FeatureFileResult featureResult,
                                                               String executionId, long processingTime) {
        byte[] fileBytes = featureResult.getFileContent().getBytes(StandardCharsets.UTF_8);
        ByteArrayResource resource = new ByteArrayResource(fileBytes);

        String fileName = featureResult.getFileName();
        if (!fileName.toLowerCase().endsWith(".feature")) {
            fileName += ".feature";
        }

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileName + "\"")
                .header("X-Execution-ID", executionId)
                .header("X-Processing-Time", String.valueOf(processingTime))
                .header("X-Generated-Files", "1")
                .header("X-Success", "true")
                .header("X-File-Type", "karate-feature")
                .contentType(MediaType.TEXT_PLAIN)
                .contentLength(fileBytes.length)
                .body(resource);
    }

    private ResponseEntity<Resource> createErrorResponse(String errorMessage, String executionId,
                                                         long startTime, int statusCode) {
        long totalTime = System.currentTimeMillis() - startTime;
        String errorContent = String.format(
                "LATGA 執行失敗\n" +
                        "===============\n\n" +
                        "錯誤: %s\n" +
                        "執行ID: %s\n" +
                        "耗時: %d ms\n" +
                        "時間: %s\n",
                errorMessage, executionId, totalTime, LocalDateTime.now()
        );

        byte[] errorBytes = errorContent.getBytes(StandardCharsets.UTF_8);
        ByteArrayResource resource = new ByteArrayResource(errorBytes);

        return ResponseEntity.status(statusCode)
                .header("X-Error-Type", "PROCESSING_ERROR")
                .header("X-Execution-ID", executionId)
                .header("X-Processing-Time", String.valueOf(totalTime))
                .header("X-Success", "false")
                .contentType(MediaType.TEXT_PLAIN)
                .body(resource);
    }

    private void clearOldGeneratedFiles(String outputDirectory) {
        try {
            Path outputDir = Paths.get(outputDirectory);
            if (Files.exists(outputDir)) {
                List<Path> oldFiles = Files.walk(outputDir)
                        .filter(Files::isRegularFile)
                        .collect(Collectors.toList());

                for (Path file : oldFiles) {
                    try {
                        Files.delete(file);
                    } catch (IOException e) {
                        System.err.println(" 無法刪除舊檔案: " + file);
                    }
                }
            }
        } catch (IOException e) {
            System.err.println(" 清理舊檔案失敗: " + e.getMessage());
        }
    }

    private String generateExecutionId() {
        return "exec_" + System.currentTimeMillis() + "_" + Integer.toHexString((int)(Math.random() * 0x10000));
    }

    private void validateInput(MultipartFile[] files, String mode) throws ValidationException {
        if (files == null || files.length == 0) {
            throw new ValidationException("未上傳任何檔案");
        }

        List<String> supportedModes = List.of("Structural", "Behavioral", "editorgpt", "karate-merger");
        if (!supportedModes.contains(mode.toLowerCase())) {
            throw new ValidationException("無效的模式: " + mode);
        }

        // 模式特殊驗證
        switch (mode.toLowerCase()) {
            case "editorgpt":
                if (editorGPT == null) {
                    throw new ValidationException("EditorGPT 模式需要 OpenAI API 配置，但服務不可用");
                }
                break;
            case "karate-merger":
                if (karateMerger == null) {
                    throw new ValidationException("Karate合併模式需要合併服務，但服務不可用");
                }
                if (files.length < 2) {
                    throw new ValidationException("Karate合併模式需要至少兩個檔案");
                }
                break;
        }
    }

    private List<FileData> convertMultipartFiles(MultipartFile[] files) throws ProcessingException {
        List<FileData> fileDataList = new ArrayList<>();
        try {
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                if (!file.isEmpty()) {
                    String content = new String(file.getBytes(), StandardCharsets.UTF_8);
                    String fileName = file.getOriginalFilename();
                    if (fileName == null) fileName = "file_" + (i + 1);
                    fileDataList.add(new FileData(fileName, content));
                }
            }
        } catch (IOException e) {
            throw new ProcessingException("檔案轉換失敗", e);
        }
        return fileDataList;
    }

    // 內部類別定義
    private static class FeatureFileResult {
        private final boolean success;
        private final String message;
        private final String fileName;
        private final String fileContent;

        public FeatureFileResult(boolean success, String message, String fileName, String fileContent) {
            this.success = success;
            this.message = message;
            this.fileName = fileName;
            this.fileContent = fileContent;
        }

        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public String getFileName() { return fileName; }
        public String getFileContent() { return fileContent; }
    }

    private static class ExecutionResult {
        private final String mode;
        private final boolean success;
        private final String message;
        private final List<String> generatedFiles;
        private final long processingTimeMs;
        private final int inputFileCount;
        private final String executionId;

        public ExecutionResult(String mode, boolean success, String message,
                               List<String> generatedFiles, long processingTimeMs,
                               int inputFileCount, String executionId) {
            this.mode = mode;
            this.success = success;
            this.message = message;
            this.generatedFiles = generatedFiles;
            this.processingTimeMs = processingTimeMs;
            this.inputFileCount = inputFileCount;
            this.executionId = executionId;
        }

        public boolean isSuccess() { return success; }
    }

    private static class EditorGPTResult {
        private final boolean success;
        private final String message;
        private final int processedFiles;
        private final long processingTimeMs;

        public EditorGPTResult(boolean success, String message, int processedFiles, long processingTimeMs) {
            this.success = success;
            this.message = message;
            this.processedFiles = processedFiles;
            this.processingTimeMs = processingTimeMs;
        }

        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public int getProcessedFiles() { return processedFiles; }
    }

    private static class ValidationException extends Exception {
        public ValidationException(String message) { super(message); }
    }

    private static class ProcessingException extends Exception {
        public ProcessingException(String message) { super(message); }
        public ProcessingException(String message, Throwable cause) { super(message, cause); }
    }

    // 調試和狀態端點
    @PostMapping("/debug/test")
    public ResponseEntity<String> debugTest() {
        StringBuilder response = new StringBuilder();
        response.append("LATGA 後端調試報告\n");
        response.append("==================\n\n");

        response.append("1. ModeRunner狀態: ");
        response.append(modeRunner != null ? " 已初始化\n" : " 未初始化\n");

        response.append("2. EditorGPT狀態: ");
        response.append(editorGPT != null ? " 已初始化\n" : " 未初始化\n");

        response.append("3. KarateMerger狀態: ");
        response.append(karateMerger != null ? " 已初始化\n" : " 未初始化\n");

        response.append("4. Customed Prompt支援:  已啟用\n"); //  添加自定義 prompt 狀態

        response.append("5. 輸出目錄:\n");
        response.append("   - Karate: ").append(Files.exists(Paths.get(KARATE_OUTPUT_DIRECTORY)) ? "" : "").append("\n");
        response.append("   - Swagger: ").append(Files.exists(Paths.get(SWAGGER_OUTPUT_DIRECTORY)) ? "" : "").append("\n");
        response.append("   - Merge: ").append(Files.exists(Paths.get(MERGE_OUTPUT_DIRECTORY)) ? "" : "").append("\n");

        return ResponseEntity.ok(response.toString());
    }

    @GetMapping("/modes")
    public ResponseEntity<String[]> getSupportedModes() {
        return ResponseEntity.ok(new String[]{"Structural", "Behavioral", "editorgpt", "karate-merger"});
    }

    @GetMapping("/health")
    public ResponseEntity<Map<String, Object>> health() {
        Map<String, Object> health = new HashMap<>();
        health.put("status", "UP");
        health.put("timestamp", LocalDateTime.now().toString());
        health.put("version", "v4.1 - Enhanced with KarateMerger & Custom Prompt Support"); //  更新版本資訊
        health.put("supportedModes", List.of("Structural", "Behavioral", "editorgpt", "karate-merger"));
        health.put("customPromptSupported", true); //  添加自定義 prompt 支援狀態
        health.put("services", Map.of(
                "modeRunner", modeRunner != null,
                "editorGPT", editorGPT != null,
                "karateMerger", karateMerger != null
        ));
        return ResponseEntity.ok(health);
    }
}