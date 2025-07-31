package Karate;

import Karate.config.KarateExecutorConfig;
import Karate.tools.KarateContentExtractor;
import Karate.tools.KarateFileSaver;
import Karate.tools.TestCaseVerification; //  統一使用 TestCaseVerification
import Karate.tools.KarateExecutor; //  引入 KarateExecutor
import Karate.tools.ApiOperationExtractor; //  引入 API 操作提取器
import Karate.tools.OperationCoverageComparator; //  引入比對器
import FileChooser.MultiFileChooser.FileData;

import Fewshot.FewShotManager;

import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *  重構版 KarateGeneratorGPT - 使用統一的 TestCaseVerification 服務
 * 簡化架構，移除重複功能，提供更清晰的驗證和質量保證流程
 */
@Service
@EnableConfigurationProperties(KarateExecutorConfig.class)
public class KarateGeneratorGPT {

    @Autowired
    OpenAiChatModel chatModel;

    // Karate 內容處理器
    private final KarateContentExtractor karateExtractor = new KarateContentExtractor();
    private final KarateFileSaver karateSaver;

    // Few-shot 管理器
    private final FewShotManager fewShotManager;

    //  統一的驗證和質量保證服務
    private TestCaseVerification verificationService;

    //  API 操作分析工具
    private final ApiOperationExtractor apiOperationExtractor = new ApiOperationExtractor();
    private final OperationCoverageComparator coverageComparator = new OperationCoverageComparator();

    //  保存正則表達式分析結果（用於步驟3比對）
    private ApiOperationExtractor.ApiAnalysisResult regexAnalysisResult;

    @Autowired
    private KarateExecutorConfig executorConfig;

    // Prompt 檔案路徑
    private static final String PROMPT_DIRECTORY = "prompts";

    /**
     * 建構子 - 初始化管理器
     */
    public KarateGeneratorGPT() {
        this.fewShotManager = new FewShotManager();

        // 配置增強的內容提取器
        this.karateExtractor.setEnableAdvancedCleaning(true);
        this.karateExtractor.setStrictValidation(true);

        // 使用配置好的提取器建立保存器
        this.karateSaver = new KarateFileSaver(KarateFileSaver.ConfigBuilder.defaultConfig(), this.karateExtractor);
    }

    /**
     *  初始化驗證服務（在 executorConfig 可用後調用）
     */
    private void initializeVerificationServices() {
        if (this.verificationService == null) {
            //  將 Spring Boot 配置轉換為執行器配置
            KarateExecutor.ExecutorConfig execConfig = convertToExecutorConfig(executorConfig);
            this.verificationService = new TestCaseVerification(chatModel, execConfig);
        }
    }

    /**
     *  將 Spring Boot 配置轉換為執行器配置
     */
    private KarateExecutor.ExecutorConfig convertToExecutorConfig(KarateExecutorConfig springConfig) {
        // 根據 Spring Boot 配置創建執行器配置
        // 如果 KarateExecutorConfig 沒有 toExecutorConfig() 方法，使用這個轉換邏輯
        return KarateExecutor.ExecutorConfig.defaultConfig()
                .timeoutSeconds(30) // 可以從 springConfig 獲取，如果有的話
                .cleanupTempFiles(true)
                .verboseOutput(false);
    }

    /**
     * 保持向後兼容的 execute 方法（無自定義 prompt）
     */
    public void execute(String mode, List<FileData> fileDataList) throws Exception {
        execute(mode, fileDataList, null, "comprehensive"); //  預設使用綜合驗證模式
    }

    /**
     *  增強的執行方法 - 支援自定義 Prompt 和驗證模式選擇
     * @param mode 模式 ("Structural" 或 "behavior")
     * @param fileDataList 已選擇的檔案列表
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @param verificationMode 驗證模式 ("none", "quick", "standard", "comprehensive")
     */
    public void execute(String mode, List<FileData> fileDataList, String customPrompt, String verificationMode) throws Exception {
        // 初始化驗證服務
        initializeVerificationServices();

        System.out.println("=".repeat(80));
        System.out.println(" LATGA Karate 測試生成工具 v6.0 - " + mode.toUpperCase() + " 模式");
        System.out.println(" 驗證模式: " + verificationMode.toUpperCase() +
                (customPrompt != null && !customPrompt.trim().isEmpty() ? " (含自定義指令)" : ""));
        System.out.println("=".repeat(80));

        long startTime = System.currentTimeMillis();

        try {
            // 檢查執行環境
            checkExecutionEnvironment();

            System.out.println("\n " + mode.toUpperCase() + " 模式已啟動");

            // 驗證檔案列表
            if (fileDataList == null || fileDataList.isEmpty()) {
                throw new IllegalArgumentException("未提供任何檔案，無法進行處理");
            }

            System.out.println(" 已接收 " + fileDataList.size() + " 個文件");
            for (FileData fileData : fileDataList) {
                System.out.println("    " + fileData.getFileName() + " (大小: " + fileData.getContent().length() + " 字元)");
            }

            //  驗證和處理自定義 Prompt
            processCustomPrompt(customPrompt);

            //  步驟1：操作數分析
            System.out.println("\n 步驟1：執行操作數分析...");
            performOperationAnalysis(fileDataList, customPrompt);

            //  步驟2：載入 prompt 並生成初始內容
            System.out.println("\n 步驟2：載入 prompt 並開始 AI 分析...");
            String initialAiResponse = generateInitialContent(mode, fileDataList, customPrompt);

            //  步驟3：根據驗證模式進行處理
            String finalContent = processContentWithVerification(fileDataList, initialAiResponse, customPrompt, verificationMode);

            //  步驟4：保存檔案
            System.out.println("\n 步驟4：保存測試檔案...");
            saveContentWithMetadata(finalContent, fileDataList, customPrompt, verificationMode);

            //  步驟5：驗證生成結果
            System.out.println("\n 步驟5：驗證生成結果...");
            verifyGeneratedFiles();

            long totalTime = System.currentTimeMillis() - startTime;
            displayCompletionSummary(totalTime, customPrompt, verificationMode);

        } catch (Exception e) {
            handleExecutionError(e, System.currentTimeMillis() - startTime);
            throw e;
        } finally {
            System.out.println("=".repeat(80));
        }
    }

    /**
     * 保持向後兼容的 execute 方法（支援自定義 prompt）
     */
    public void execute(String mode, List<FileData> fileDataList, String customPrompt) throws Exception {
        execute(mode, fileDataList, customPrompt, "standard");
    }

    /**
     *  生成初始內容
     */
    private String generateInitialContent(String mode, List<FileData> fileDataList, String customPrompt) throws Exception {
        String mainPrompt = loadPromptForMode(mode);
        String combinedPrompt = fewShotManager.buildCompletePrompt(mainPrompt, fileDataList, customPrompt);

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println(" 已整合自定義 Prompt (長度: " + customPrompt.length() + " 字元)");
        }

        System.out.println(" 正在分析文件並生成 Karate 測試案例...");
        Prompt initialPrompt = new Prompt(combinedPrompt);
        ChatResponse initialResponse = chatModel.call(initialPrompt);
        String initialAiResponse = initialResponse.getResult().getOutput().getText();

        System.out.println(" AI 生成的初始 Karate 測試案例已完成");
        System.out.println("    內容長度: " + initialAiResponse.length() + " 字元");

        return initialAiResponse;
    }

    /**
     *  根據驗證模式處理內容
     */
    private String processContentWithVerification(List<FileData> fileDataList, String initialContent,
                                                  String customPrompt, String verificationMode) throws Exception {
        switch (verificationMode.toLowerCase()) {
            case "none":
                System.out.println("\n 步驟3：跳過驗證處理（none 模式）");
                return initialContent;

            case "quick":
                return performQuickVerification(fileDataList, initialContent, customPrompt);

            case "standard":
                return performStandardVerification(fileDataList, initialContent, customPrompt);

            case "comprehensive":
                return performComprehensiveVerification(fileDataList, initialContent, customPrompt);

            default:
                System.out.println(" 未知驗證模式: " + verificationMode + "，使用標準驗證");
                return performStandardVerification(fileDataList, initialContent, customPrompt);
        }
    }

    /**
     *  快速驗證模式
     */
    private String performQuickVerification(List<FileData> fileDataList, String initialContent, String customPrompt) {
        System.out.println("\n⚡ 步驟3：執行快速驗證...");

        TestCaseVerification.QuickVerificationResult quickResult =
                verificationService.performQuickVerification(initialContent);

        displayQuickVerificationResult(quickResult, customPrompt);

        // 快速驗證模式不修改內容，直接返回原內容
        return initialContent;
    }

    /**
     *  標準驗證模式 - 使用統一的驗證服務進行質量保證
     */
    private String performStandardVerification(List<FileData> fileDataList, String initialContent, String customPrompt) throws Exception {
        System.out.println("\n 步驟3：執行標準質量保證檢查...");

        //  直接使用 TestCaseVerification 的 analyzeAndSupplement 方法
        TestCaseVerification.QualityAssuranceResult qaResult =
                verificationService.analyzeAndSupplement(fileDataList, initialContent, 3, customPrompt);

        displayQualityAssuranceResultSummary(qaResult, customPrompt);

        return qaResult.getFinalContent() != null ? qaResult.getFinalContent() : initialContent;
    }

    /**
     *  綜合驗證模式 - 使用統一的驗證服務
     */
    private String performComprehensiveVerification(List<FileData> fileDataList, String initialContent, String customPrompt) throws Exception {
        System.out.println("\n 步驟3：執行綜合驗證和質量保證...");

        // 1. 先進行 QA 改進
        TestCaseVerification.QualityAssuranceResult qaResult =
                verificationService.analyzeAndSupplement(fileDataList, initialContent, 3, customPrompt);

        String improvedContent = qaResult.getFinalContent() != null ? qaResult.getFinalContent() : initialContent;

        // 2. 然後進行綜合驗證
        TestCaseVerification.ComprehensiveVerificationResult verificationResult =
                verificationService.performComprehensiveVerification(improvedContent, fileDataList, customPrompt);

        displayComprehensiveVerificationResult(qaResult, verificationResult, customPrompt);

        return improvedContent;
    }

    // ========== 顯示結果的方法 ==========

    /**
     *  顯示快速驗證結果
     */
    private void displayQuickVerificationResult(TestCaseVerification.QuickVerificationResult result, String customPrompt) {
        System.out.println("⚡ 快速驗證結果:");
        System.out.println("    處理狀態: " + (result.isSuccess() ? " 通過" : " 發現問題"));

        if (!result.isSuccess() && result.getSyntaxResult() != null) {
            TestCaseVerification.SyntaxValidationResult syntaxResult = result.getSyntaxResult();
            if (!syntaxResult.getErrors().isEmpty()) {
                System.out.println("    語法錯誤: " + syntaxResult.getErrors().size() + " 個");
            }
            if (!syntaxResult.getWarnings().isEmpty()) {
                System.out.println("    語法警告: " + syntaxResult.getWarnings().size() + " 個");
            }
        }

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("    自定義指令:  已納入驗證考量");
        }
    }

    /**
     *  顯示綜合驗證結果 - 更新為使用統一的結果類型
     */
    private void displayComprehensiveVerificationResult(TestCaseVerification.QualityAssuranceResult qaResult,
                                                        TestCaseVerification.ComprehensiveVerificationResult verificationResult,
                                                        String customPrompt) {
        System.out.println(" 綜合驗證結果:");

        // QA 結果
        System.out.println("    質量保證: " + (qaResult.isSuccess() ? " 改進成功" : " 部分改進"));
        System.out.println("    改進迭代: " + qaResult.getCompletedIterations() + " 次");

        // 驗證結果
        if (verificationResult != null) {
            System.out.println("    綜合驗證: " + (verificationResult.isOverallSuccess() ? " 完全通過" : " 發現問題"));

            if (verificationResult.getCoverageResult() != null) {
                System.out.println(String.format("    端點覆蓋率: %.1f%%",
                        verificationResult.getCoverageResult().getCoveragePercentage()));
            }

            if (!verificationResult.getExecutionResults().isEmpty()) {
                long validFeatures = verificationResult.getExecutionResults().stream()
                        .filter(r -> r.isSyntaxValid()).count();
                System.out.println(String.format("    執行驗證: %d/%d Features 通過",
                        validFeatures, verificationResult.getExecutionResults().size()));
            }
        }

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("    自定義指令:  已完全整合到驗證流程中");
        }
    }

    /**
     *  處理自定義 Prompt
     */
    private void processCustomPrompt(String customPrompt) {
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("\n 自定義 Prompt 分析:");

            try {
                FewShotManager.PromptValidationResult validation = fewShotManager.validateCustomPrompt(customPrompt);
                System.out.println("    驗證狀態: " + validation.getMessage());

                FewShotManager.CustomPromptStats stats = fewShotManager.getCustomPromptStats(customPrompt);
                System.out.println("    " + stats.toString());

                if (validation.hasWarnings()) {
                    System.out.println("    警告:");
                    validation.getWarnings().forEach(warning -> System.out.println("      • " + warning));
                }

                if (validation.hasSuggestions()) {
                    System.out.println("    建議:");
                    validation.getSuggestions().forEach(suggestion -> System.out.println("      • " + suggestion));
                }
            } catch (Exception e) {
                System.out.println("    自定義 Prompt 分析時發生錯誤: " + e.getMessage());
            }
        } else {
            System.out.println("\n 使用預設 Prompt 模式");
        }
    }

    /**
     *  保存內容（附加元數據）
     */
    private void saveContentWithMetadata(String content, List<FileData> fileDataList, String customPrompt, String verificationMode) {
        String contentDescription = buildContentDescription(customPrompt, verificationMode);

        System.out.println(" 正在保存 " + contentDescription + "...");
        KarateFileSaver.SaveResult saveResult = karateSaver.saveFromContent(content, fileDataList, contentDescription);
        displaySaveResult(saveResult, customPrompt);
    }

    /**
     *  構建內容描述
     */
    private String buildContentDescription(String customPrompt, String verificationMode) {
        StringBuilder description = new StringBuilder();

        switch (verificationMode.toLowerCase()) {
            case "none":
                description.append("AI原始生成內容");
                break;
            case "quick":
                description.append("快速驗證後內容");
                break;
            case "standard":
                description.append("標準QA處理後內容");
                break;
            case "comprehensive":
                description.append("綜合驗證和QA處理後內容");
                break;
            default:
                description.append("處理後內容");
        }

        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            description.append("(含自定義指令)");
        }

        return description.toString();
    }

    /**
     *  顯示完成摘要
     */
    private void displayCompletionSummary(long totalTime, String customPrompt, String verificationMode) {
        System.out.println("\n 處理完成！");
        System.out.println("    總耗時: " + totalTime + " ms");
        System.out.println("    檔案保存位置: " + karateSaver.getConfig().getOutputDirectory() + "/");
        System.out.println("    驗證模式: " + verificationMode.toUpperCase());
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("    自定義指令: 已完全整合到生成結果中");
        }
    }

    /**
     *  處理執行錯誤
     */
    private void handleExecutionError(Exception e, long totalTime) {
        System.err.println("\n 處理失敗！");
        System.err.println("    錯誤: " + e.getClass().getSimpleName() + " - " + e.getMessage());
        System.err.println("    耗時: " + totalTime + " ms");

        // 打印堆棧跟蹤的前幾行以便調試
        StackTraceElement[] stackTrace = e.getStackTrace();
        System.err.println("    堆棧跟蹤 (前3行):");
        for (int i = 0; i < Math.min(3, stackTrace.length); i++) {
            System.err.println("     " + stackTrace[i].toString());
        }
    }

    // ========== 統一驗證服務的便利方法 ==========

    /**
     *  獲取驗證服務實例（用於外部調用）
     */
    public TestCaseVerification getVerificationService() {
        initializeVerificationServices();
        return verificationService;
    }

    /**
     *  純驗證模式（不生成內容，僅驗證現有內容）
     */
    public TestCaseVerification.ComprehensiveVerificationResult verifyExistingContent(
            String karateContent, List<FileData> fileDataList, String customPrompt) {
        initializeVerificationServices();

        System.out.println(" 純驗證模式：分析現有 Karate 內容");
        return verificationService.performComprehensiveVerification(karateContent, fileDataList, customPrompt);
    }

    /**
     *  批量驗證多個 Karate 檔案
     */
    public List<TestCaseVerification.QuickVerificationResult> batchVerifyKarateFiles(List<String> karateContents) {
        initializeVerificationServices();

        System.out.println(" 批量驗證模式：處理 " + karateContents.size() + " 個 Karate 檔案");

        List<TestCaseVerification.QuickVerificationResult> results = new ArrayList<>();
        for (int i = 0; i < karateContents.size(); i++) {
            System.out.println(String.format("   處理檔案 %d/%d...", i + 1, karateContents.size()));
            TestCaseVerification.QuickVerificationResult result =
                    verificationService.performQuickVerification(karateContents.get(i));
            results.add(result);
        }

        System.out.println(" 批量驗證完成");
        return results;
    }

    /**
     *  質量保證模式（僅執行分析和補充，不執行綜合驗證）
     */
    public TestCaseVerification.QualityAssuranceResult performQualityAssurance(
            List<FileData> fileDataList, String initialContent, int maxIterations, String customPrompt) {
        initializeVerificationServices();

        System.out.println(" 質量保證模式：分析並改進 Karate 內容");
        return verificationService.analyzeAndSupplement(fileDataList, initialContent, maxIterations, customPrompt);
    }

    // ========== 原有方法保持不變（向後兼容） ==========

    /**
     * 簡化版執行方法
     */
    public void executeSimplified(String mode, List<FileData> fileDataList, String customPrompt) throws Exception {
        execute(mode, fileDataList, customPrompt, "none"); //  簡化版使用無驗證模式
    }

    public void executeSimplified(String mode, List<FileData> fileDataList) throws Exception {
        executeSimplified(mode, fileDataList, null);
    }

    // ========== 其他原有方法 ==========

    private void performOperationAnalysis(List<FileData> fileDataList, String customPrompt) {
        System.out.println(" 正在分析API操作數量...");

        try {
            //  步驟1A：正則表達式分析（直接從文件提取）
            System.out.println("    正則表達式分析：直接從文件提取操作...");
            regexAnalysisResult = apiOperationExtractor.extractApiOperations(fileDataList);

            System.out.println("    正則分析完成：" + regexAnalysisResult.getSummary());
            if (!regexAnalysisResult.getWarnings().isEmpty()) {
                System.out.println("    正則分析警告：");
                regexAnalysisResult.getWarnings().forEach(warning ->
                        System.out.println("      • " + warning));
            }

            // 顯示正則表達式分析的詳細結果
            displayRegexAnalysisResults(regexAnalysisResult);

            //  步驟1B：LLM 智能分析（原有邏輯保持）
            System.out.println("    LLM 智能分析：讓 AI 理解和分析操作...");
            performLlmOperationAnalysis(fileDataList, customPrompt);

        } catch (Exception e) {
            System.err.println(" 操作數分析發生錯誤: " + e.getMessage());
            System.out.println(" 將繼續執行測試案例生成...");
        }
    }

    /**
     *  顯示正則表達式分析結果
     */
    private void displayRegexAnalysisResults(ApiOperationExtractor.ApiAnalysisResult analysisResult) {
        System.out.println(" 正則表達式分析詳細結果:");
        System.out.println("    " + analysisResult.getSummary());
        System.out.println("    來源類型: " + analysisResult.getSourceType());

        // 按 HTTP 方法分組顯示
        Map<String, Integer> methodCounts = analysisResult.getMethodCounts();
        if (!methodCounts.isEmpty()) {
            System.out.println("    HTTP 方法分布:");
            methodCounts.forEach((method, count) ->
                    System.out.println("      " + method + ": " + count + " 個"));
        }

        // 顯示部分具體操作（前5個）
        List<ApiOperationExtractor.ApiOperation> operations = analysisResult.getOperations();
        if (!operations.isEmpty()) {
            System.out.println("    檢測到的操作（前5個）:");
            operations.stream().limit(5).forEach(op ->
                    System.out.println("      • " + op.toString()));

            if (operations.size() > 5) {
                System.out.println("      ... 還有 " + (operations.size() - 5) + " 個操作");
            }
        }
    }

    /**
     *  LLM 智能操作分析（原有邏輯）
     */
    private void performLlmOperationAnalysis(List<FileData> fileDataList, String customPrompt) {
        try {
            // 載入操作分析 prompt
            String analysisPrompt = loadOperationAnalysisPrompt();

            //  如果有自定義 prompt，將其整合到操作分析中
            String finalAnalysisPrompt = analysisPrompt;
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                finalAnalysisPrompt = integreateCustomPromptToAnalysis(analysisPrompt, customPrompt);
                System.out.println("    LLM 分析已整合自定義指令");
            }

            // 建立操作分析prompt
            String combinedPrompt = fewShotManager.buildCompletePrompt(finalAnalysisPrompt, fileDataList);

            // 執行分析
            Prompt prompt = new Prompt(combinedPrompt);
            ChatResponse response = chatModel.call(prompt);
            String analysisResponse = response.getResult().getOutput().getText();

            // 顯示分析結果（簡化版本）
            System.out.println("    LLM 智能分析完成");

            // 嘗試提取並顯示數字統計
            extractAndDisplayStatistics(analysisResponse);

            //  比較 LLM 分析結果與正則分析結果
            if (regexAnalysisResult != null) {
                compareAnalysisResults(analysisResponse, regexAnalysisResult);
            }

        } catch (Exception e) {
            System.err.println(" LLM 智能分析發生錯誤: " + e.getMessage());
        }
    }

    /**
     *  比較 LLM 分析結果與正則分析結果
     */
    private void compareAnalysisResults(String llmResponse, ApiOperationExtractor.ApiAnalysisResult regexResult) {
        System.out.println(" 比對 LLM 分析與正則分析結果:");

        try {
            // 從 LLM 回應提取總操作數
            int llmTotalOps = extractNumber(llmResponse, "總操作數量.*?(\\d+)");
            int regexTotalOps = regexResult.getTotalOperations();

            if (llmTotalOps > 0 && regexTotalOps > 0) {
                System.out.println("    操作總數比對:");
                System.out.println("      LLM 分析: " + llmTotalOps + " 個");
                System.out.println("      正則分析: " + regexTotalOps + " 個");

                if (Math.abs(llmTotalOps - regexTotalOps) > 2) {
                    System.out.println("    分析結果差異較大，可能需要檢查文件格式");
                } else {
                    System.out.println("    分析結果基本一致");
                }
            }

            // 比對各種 HTTP 方法
            String[] methods = {"GET", "POST", "PUT", "DELETE"};
            for (String method : methods) {
                int llmCount = extractNumber(llmResponse, method + ".*?(\\d+)");
                int regexCount = regexResult.getMethodCount(method);

                if (llmCount > 0 || regexCount > 0) {
                    System.out.println("   " + method + ": LLM=" + llmCount + ", 正則=" + regexCount);
                }
            }

        } catch (Exception e) {
            System.out.println("    比對過程發生錯誤: " + e.getMessage());
        }
    }

    private String loadPromptForMode(String mode) {
        // 原有實現保持不變
        String promptFileName;
        switch (mode.toLowerCase()) {
            case "structural":
                promptFileName = "Structural_prompt.txt";
                break;
            case "behavior":
                promptFileName = "Behavior_prompt.txt";
                break;
            default:
                System.out.println(" 未知模式，使用 Structural 模式的 prompt");
                promptFileName = "Structural_prompt.txt";
        }
        return loadPromptFromFile(promptFileName);
    }

    private String loadPromptFromFile(String fileName) {
        // 原有實現保持不變
        Path promptPath = Paths.get(PROMPT_DIRECTORY, fileName);
        try {
            String content = Files.readString(promptPath, StandardCharsets.UTF_8).trim();
            System.out.println(" 已載入 prompt 檔案: " + fileName);
            return content;
        } catch (IOException e) {
            System.err.println(" 讀取 prompt 檔案失敗: " + fileName + " - " + e.getMessage());
            throw new RuntimeException("無法載入必要的 prompt 檔案: " + fileName, e);
        }
    }

    /**
     * 提取並顯示統計信息
     */
    private void extractAndDisplayStatistics(String analysisResponse) {
        try {
            // 提取總操作數
            int totalOperations = extractNumber(analysisResponse, "總操作數量.*?(\\d+)");

            // 提取各種操作類型數量
            int getOps = extractNumber(analysisResponse, "GET.*?(\\d+)");
            int postOps = extractNumber(analysisResponse, "POST.*?(\\d+)");
            int putOps = extractNumber(analysisResponse, "PUT.*?(\\d+)");
            int deleteOps = extractNumber(analysisResponse, "DELETE.*?(\\d+)");

            // 顯示提取的統計資訊
            if (totalOperations > 0 || getOps > 0 || postOps > 0 || putOps > 0 || deleteOps > 0) {
                System.out.println("    LLM 統計資訊:");

                if (totalOperations > 0) {
                    System.out.println("       總操作數量: " + totalOperations + " 個");
                }

                List<String> operationStats = new ArrayList<>();
                if (getOps > 0) operationStats.add("GET(" + getOps + ")");
                if (postOps > 0) operationStats.add("POST(" + postOps + ")");
                if (putOps > 0) operationStats.add("PUT(" + putOps + ")");
                if (deleteOps > 0) operationStats.add("DELETE(" + deleteOps + ")");

                if (!operationStats.isEmpty()) {
                    System.out.println("       操作分布: " + String.join("、", operationStats));
                }

                // 基於操作數預估測試案例數量
                if (totalOperations > 0) {
                    int estimatedScenarios = totalOperations * 6; // 每個操作6種案例
                    System.out.println("       預估測試案例: 約 " + estimatedScenarios + " 個scenario");
                }
            }

        } catch (Exception e) {
            System.err.println("       提取統計資訊時發生錯誤: " + e.getMessage());
        }
    }

    /**
     * 載入操作分析 prompt
     */
    private String loadOperationAnalysisPrompt() {
        return loadPromptFromFile("operation_analysis_prompt.txt");
    }

    /**
     *  將自定義 prompt 整合到操作分析中
     */
    private String integreateCustomPromptToAnalysis(String analysisPrompt, String customPrompt) {
        StringBuilder integrated = new StringBuilder();

        integrated.append(analysisPrompt);
        integrated.append("\n\n").append("=".repeat(60)).append("\n");
        integrated.append(" 用戶特殊分析需求：\n");
        integrated.append("=".repeat(60)).append("\n");
        integrated.append(customPrompt.trim());
        integrated.append("\n").append("=".repeat(60)).append("\n");
        integrated.append("請在進行操作分析時，特別關注上述用戶需求。\n");

        return integrated.toString();
    }

    /**
     * 提取數字的輔助方法
     */
    private int extractNumber(String text, String pattern) {
        try {
            Pattern numberPattern = Pattern.compile(pattern, Pattern.CASE_INSENSITIVE);
            Matcher matcher = numberPattern.matcher(text);
            if (matcher.find()) {
                return Integer.parseInt(matcher.group(1));
            }
        } catch (Exception e) {
            // 忽略提取錯誤
        }
        return 0;
    }

    private void checkExecutionEnvironment() {
        // 原有實現保持不變，但增強了驗證服務檢查
        System.out.println(" 檢查執行環境...");

        initializeVerificationServices();

        if (verificationService.isExecutionValidationAvailable()) {
            System.out.println(" Karate 執行環境可用，支援完整驗證功能");
        } else {
            System.out.println(" Karate 執行環境不可用，僅支援靜態分析");
        }

        System.out.println(" 自定義 Prompt 功能已啟用");
        System.out.println(" 統一驗證服務已初始化");
    }

    private void verifyGeneratedFiles() {
        // 原有實現保持不變
        try {
            String actualOutputDir = karateSaver.getConfig().getOutputDirectory();
            Path outputDir = Paths.get(actualOutputDir);
            System.out.println(" 驗證目錄: " + outputDir.toAbsolutePath());

            if (Files.exists(outputDir)) {
                List<Path> generatedFiles = Files.walk(outputDir)
                        .filter(Files::isRegularFile)
                        .collect(java.util.stream.Collectors.toList());

                System.out.println(" 生成檔案驗證:");
                if (generatedFiles.isEmpty()) {
                    System.out.println("    未找到任何生成的檔案");
                } else {
                    System.out.println("    找到 " + generatedFiles.size() + " 個檔案:");
                    for (Path file : generatedFiles) {
                        long fileSize = Files.size(file);
                        String relativePath = outputDir.relativize(file).toString();
                        System.out.println("      " + relativePath + " (" + fileSize + " bytes)");
                    }
                }
            } else {
                System.out.println("    輸出目錄不存在: " + outputDir.toAbsolutePath());

                // 嘗試創建目錄
                try {
                    Files.createDirectories(outputDir);
                    System.out.println("    已創建輸出目錄: " + outputDir.toAbsolutePath());
                } catch (IOException createError) {
                    System.err.println("    無法創建輸出目錄: " + createError.getMessage());
                }
            }
        } catch (Exception e) {
            System.err.println("    驗證檔案時發生錯誤: " + e.getMessage());
        }
    }

    private void displayQualityAssuranceResultSummary(TestCaseVerification.QualityAssuranceResult result, String customPrompt) {
        System.out.println(" 質量保證檢查結果:");
        System.out.println("    處理狀態: " + (result.isSuccess() ? " 成功" : " 失敗"));
        System.out.println("    完成迭代: " + result.getCompletedIterations() + " 次");

        if (!result.isSuccess() && result.getErrorMessage() != null) {
            System.out.println("    錯誤訊息: " + result.getErrorMessage());
        }

        // 顯示簡化的分析統計
        List<TestCaseVerification.AnalysisResult> analysisResults = result.getAnalysisResults();
        int passedAnalyses = 0;
        for (TestCaseVerification.AnalysisResult analysis : analysisResults) {
            if (analysis.isCompliant()) passedAnalyses++;
        }
        System.out.println("    通過分析: " + passedAnalyses + "/" + analysisResults.size());

        // 顯示自定義 prompt 相關資訊
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("    自定義指令:  已整合到品質檢查中");
        }

        System.out.println("    最終評估: " + (result.isSuccess() ?
                " 內容符合質量要求" : " 內容需進一步檢查"));
    }

    private void displaySaveResult(KarateFileSaver.SaveResult saveResult, String customPrompt) {
        if (saveResult.isSuccess()) {
            System.out.println(" " + saveResult.getMessage());

            // 顯示詳細的保存資訊
            for (KarateFileSaver.SavedFile savedFile : saveResult.getSavedFiles()) {
                if (savedFile.isSuccess()) {
                    String cleanedIndicator = savedFile.wasContentCleaned() ? " [已清理]" : "";
                    String customIndicator = customPrompt != null && !customPrompt.trim().isEmpty() ? " [含自定義指令]" : "";
                    System.out.printf("    %s%s%s (%d bytes)\n",
                            savedFile.getFileName(), cleanedIndicator, customIndicator, savedFile.getFileSize());
                } else {
                    System.out.printf("    %s - %s\n",
                            savedFile.getFileName(), savedFile.getErrorMessage());
                }
            }

            if (saveResult.getFailureCount() > 0) {
                System.out.printf(" 注意: 有 %d 個檔案保存失敗\n", saveResult.getFailureCount());
            }

            // 顯示提取器警告訊息
            if (saveResult.hasWarnings()) {
                System.out.println(" 處理警告:");
                for (String warning : saveResult.getExtractorWarnings()) {
                    System.out.println("   • " + warning);
                }
            }

            // 顯示自定義 prompt 應用狀態
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println(" 自定義指令已成功應用到生成結果中");
            }

        } else {
            System.out.println(" " + saveResult.getMessage());

            // 即使失敗也顯示警告訊息
            if (saveResult.hasWarnings()) {
                System.out.println(" 處理過程訊息:");
                for (String warning : saveResult.getExtractorWarnings()) {
                    System.out.println("   • " + warning);
                }
            }
        }
    }

    @Deprecated
    public void execute(String mode) throws Exception {
        throw new UnsupportedOperationException(
                "此方法已棄用。請使用支援驗證模式的新版本方法。"
        );
    }
}