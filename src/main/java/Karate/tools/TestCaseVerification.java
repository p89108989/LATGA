package Karate.tools;

import FileChooser.MultiFileChooser.FileData;
import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.openai.OpenAiChatModel;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 🆕 統一的測試案例驗證與質量保證類 - 合併 TestCaseVerification 和 KarateQualityAssurance
 * 提供完整的 Karate 測試驗證、分析、補充和質量保證功能
 *
 * @author StaticBlackbox Team
 * @version 2.0 - Unified Verification and Quality Assurance
 */
public class TestCaseVerification {

    private final OpenAiChatModel chatModel;
    private final KarateExecutor executor; // 執行驗證器
    private final KarateContentExtractor contentExtractor; // 內容提取器

    // 🆕 自定義 Prompt 分隔符
    private static final String CUSTOM_PROMPT_SEPARATOR = "=".repeat(80);

    // 驗證相關的Prompt模板
    private static final String ANALYSIS_PROMPT = """
        請分析以下Karate測試內容是否符合要求，並提供詳細的檢查報告：
        
        檢查項目：
        1. 是否涵蓋了所有API端點操作
        2. 是否包含多種status回傳情況的測試
        3. scenario是否符合workflow(有關連性)
        4. 是否包含六種等價分割測試案例：
           - valid的中間值
           - valid的最大值(接近邊界值)
           - valid的最小值(接近邊界值)
           - 大於最大值invalid(遠離邊界值)
           - 小於最小值invalid(遠離邊界值)
           - 不符合輸入規範的invalid
        5. 每個scenario是否都有編號註解
        6. Karate語法是否正確且符合Java編譯要求
        7. 如果在Scenario中以"Examples"的方式給參數多個數值時 要確實給定參數<欄位名>(ex. And param page = <page>    Examples:| page|| 1000000 |)
        
        請以以下格式回應：
        檢查結果：
        [✓] 或 [✗] 項目1描述
        [✓] 或 [✗] 項目2描述
        ...
        
        缺失項目：
        - 具體缺失的內容
        
        建議改進：
        - 具體的改進建議
        
        Karate測試內容：
        """;

    private static final String ENDPOINT_COVERAGE_PROMPT = """
        請分析以下API文件中的所有端點，並檢查Karate測試是否完全覆蓋：
        
        API文件內容：
        %s
        
        Karate測試內容：
        %s
        
        請列出：
        1. API文件中的所有端點(方法+路徑)
        2. Karate測試中已覆蓋的端點
        3. 未覆蓋的端點
        4. 覆蓋率百分比
        """;

    // 🆕 內容補充相關的Prompt模板
    private static final String SUPPLEMENT_PROMPT = """
        根據以下分析結果，請補充和完善Karate測試內容：
        
        原始內容：
        %s
        
        分析結果：
        %s
        
        請提供完整且符合所有要求的Karate測試內容，確保：
        1. 涵蓋所有缺失的API端點
        2. 補充缺失的測試案例類型
        3. 修正語法錯誤
        4. 完善scenario編號和註解
        5. 確保workflow的完整性
        
        請直接提供完整的Karate feature文件內容：
        """;

    /**
     * 建構子
     */
    public TestCaseVerification(OpenAiChatModel chatModel) {
        this(chatModel, KarateExecutor.ExecutorConfig.defaultConfig());
    }

    /**
     * 建構子（支援執行器配置）
     */
    public TestCaseVerification(OpenAiChatModel chatModel, KarateExecutor.ExecutorConfig executorConfig) {
        this.chatModel = chatModel;
        this.executor = new KarateExecutor(executorConfig);
        this.contentExtractor = new KarateContentExtractor();
        this.contentExtractor.setEnableAdvancedCleaning(true);
        this.contentExtractor.setStrictValidation(true);
    }

    // ========== 核心驗證方法 ==========

    /**
     * 🎯 綜合驗證方法 - 執行完整的測試案例驗證（支援比對結果整合）
     */
    public ComprehensiveVerificationResult performComprehensiveVerification(
            String karateContent,
            List<FileData> fileDataList,
            String customPrompt,
            String comparisonPrompt) {

        System.out.println("\n" + "=".repeat(60));
        System.out.println("🔍 開始綜合測試案例驗證" +
                (customPrompt != null && !customPrompt.trim().isEmpty() ? "（含自定義要求）" : "") +
                (comparisonPrompt != null && !comparisonPrompt.trim().isEmpty() ? "（含比對結果）" : ""));
        System.out.println("=".repeat(60));

        ComprehensiveVerificationResult result = new ComprehensiveVerificationResult();
        result.setOriginalContent(karateContent);

        try {
            // 🆕 如果有比對結果提示，先顯示
            if (comparisonPrompt != null && !comparisonPrompt.trim().isEmpty()) {
                System.out.println("📊 步驟0：參考正則比對結果...");
                System.out.println("   已整合比對提示到驗證流程");
            }

            // 1. 靜態內容分析（整合比對結果）
            System.out.println("📊 步驟1：執行靜態內容分析...");
            String enhancedPrompt = buildEnhancedCustomPrompt(customPrompt, comparisonPrompt);
            AnalysisResult analysisResult = performStaticAnalysis(karateContent, fileDataList, enhancedPrompt);
            result.setAnalysisResult(analysisResult);
            displayAnalysisResult(analysisResult);

            // 2. 語法驗證
            System.out.println("\n🔤 步驟2：執行語法驗證...");
            EnhancedSyntaxValidationResult syntaxResult = performEnhancedSyntaxValidation(karateContent);
            result.setSyntaxResult(syntaxResult);
            displaySyntaxResult(syntaxResult);

            // 3. 端點覆蓋分析
            System.out.println("\n📡 步驟3：執行端點覆蓋分析...");
            EndpointCoverageResult coverageResult = performEndpointCoverageAnalysis(karateContent, fileDataList);
            result.setCoverageResult(coverageResult);
            displayCoverageResult(coverageResult);

            // 4. 執行驗證（如果可用）
            if (isExecutionValidationAvailable()) {
                System.out.println("\n🚀 步驟4：執行runtime驗證...");
                List<KarateExecutor.ExecutionResult> executionResults = performExecutionValidation(karateContent);
                result.setExecutionResults(executionResults);
                displayExecutionResults(executionResults);
            } else {
                System.out.println("\n⚠️ 步驟4：Karate執行環境不可用，跳過runtime驗證");
            }

            // 5. 計算整體結果
            result.calculateOverallResult();

            System.out.println("\n" + "=".repeat(60));
            System.out.println("🎯 綜合驗證完成");
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println("📝 自定義要求已納入驗證考量");
            }
            if (comparisonPrompt != null && !comparisonPrompt.trim().isEmpty()) {
                System.out.println("🔍 正則比對結果已整合到驗證流程");
            }
            System.out.println("=".repeat(60));

            return result;

        } catch (Exception e) {
            System.err.println("❌ 驗證過程發生錯誤: " + e.getMessage());
            result.setError(true);
            result.setErrorMessage(e.getMessage());
            return result;
        }
    }

    /**
     * 原版綜合驗證方法（向後兼容）
     */
    public ComprehensiveVerificationResult performComprehensiveVerification(
            String karateContent, List<FileData> fileDataList, String customPrompt) {
        return performComprehensiveVerification(karateContent, fileDataList, customPrompt, null);
    }

    /**
     * 簡化版綜合驗證（無自定義 prompt）
     */
    public ComprehensiveVerificationResult performComprehensiveVerification(
            String karateContent, List<FileData> fileDataList) {
        return performComprehensiveVerification(karateContent, fileDataList, null);
    }

    // ========== 🆕 質量保證和內容補充方法 ==========

    /**
     * 🔄 自動分析和補充內容流程（支援自定義 Prompt）
     * @param fileDataList 原始API文件列表
     * @param initialContent 初始生成的Karate內容
     * @param maxIterations 最大補充次數
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @return 質量保證結果
     */
    public QualityAssuranceResult analyzeAndSupplement(List<FileData> fileDataList,
                                                       String initialContent,
                                                       int maxIterations,
                                                       String customPrompt) {
        System.out.println("\n" + "=".repeat(60));
        System.out.println("🔍 開始自動分析和補充內容流程" +
                (customPrompt != null && !customPrompt.trim().isEmpty() ? "（含自定義指令）" : ""));
        System.out.println("=".repeat(60));

        // 🆕 顯示自定義 Prompt 狀態
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("📝 自定義 Prompt: ✅ 已整合 (長度: " + customPrompt.length() + " 字元)");
            System.out.println("🎯 將在質量保證流程中優先考慮自定義要求");
        } else {
            System.out.println("📝 自定義 Prompt: ❌ 未提供，使用標準質量保證流程");
        }

        QualityAssuranceResult result = new QualityAssuranceResult();
        result.setOriginalContent(initialContent);

        String currentContent = initialContent;
        int iteration = 0;

        while (iteration < maxIterations) {
            iteration++;
            System.out.println(String.format("\n📋 第 %d 次分析檢查", iteration));

            // 進行分析
            AnalysisResult analysisResult = performStaticAnalysis(currentContent, fileDataList, customPrompt);
            result.addAnalysisResult(analysisResult);

            displayAnalysisResult(analysisResult);

            if (analysisResult.isCompliant()) {
                System.out.println("✅ 內容已符合所有要求！");
                if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                    System.out.println("🎯 自定義指令要求已滿足");
                }
                result.setSuccess(true);
                result.setFinalContent(currentContent);
                result.setCompletedIterations(iteration);
                break;
            }

            System.out.println(String.format("🔧 第 %d 次內容補充中...", iteration));
            // 🆕 使用支援自定義 prompt 的補充方法
            String supplementedContent = supplementContentWithCustomPrompt(currentContent, analysisResult, customPrompt);

            if (supplementedContent != null && !supplementedContent.trim().isEmpty()) {
                currentContent = supplementedContent;
                result.addSupplementedContent(iteration, supplementedContent);

                System.out.println("✅ 內容補充完成");
                if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                    System.out.println("🎯 補充內容已整合自定義指令");
                }
                System.out.println("\n" + "=".repeat(40));
                System.out.println("🔄 補充後的內容預覽：");
                System.out.println("=".repeat(40));
                System.out.println(getContentPreview(supplementedContent, 500));
            } else {
                System.out.println("❌ 內容補充失敗，停止嘗試");
                result.setSuccess(false);
                result.setErrorMessage("內容補充失敗");
                break;
            }
        }

        if (iteration >= maxIterations) {
            System.out.println("⚠️  已達到最大補充次數，使用當前最佳版本");
            result.setSuccess(false);
            result.setErrorMessage("達到最大補充次數");
        }

        result.setFinalContent(currentContent);
        result.setCompletedIterations(iteration);

        System.out.println("\n" + "=".repeat(60));
        System.out.println("🎯 內容分析和補充流程完成");
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("🎯 自定義指令已完全整合到最終結果中");
        }
        System.out.println("=".repeat(60));

        return result;
    }

    /**
     * 原版 analyzeAndSupplement 方法（保持向後兼容）
     */
    public QualityAssuranceResult analyzeAndSupplement(List<FileData> fileDataList,
                                                       String initialContent,
                                                       int maxIterations) {
        return analyzeAndSupplement(fileDataList, initialContent, maxIterations, null);
    }

    /**
     * 🆕 完整的質量保證流程（包含執行驗證）
     */
    public EnhancedQualityAssuranceResult analyzeAndSupplementWithExecution(
            List<FileData> fileDataList,
            String initialContent,
            int maxIterations,
            boolean enableExecutionValidation,
            String customPrompt) {

        System.out.println("\n" + "=".repeat(60));
        System.out.println("🔍 開始增強質量保證流程" +
                (enableExecutionValidation ? "（包含執行驗證）" : "") +
                (customPrompt != null && !customPrompt.trim().isEmpty() ? "（含自定義指令）" : ""));
        System.out.println("=".repeat(60));

        // 1. 執行支援自定義 prompt 的靜態分析和補充流程
        QualityAssuranceResult staticResult = analyzeAndSupplement(fileDataList, initialContent, maxIterations, customPrompt);

        // 2. 綜合驗證
        ComprehensiveVerificationResult verificationResult = null;
        if (enableExecutionValidation) {
            System.out.println("\n🔍 開始綜合驗證階段...");
            verificationResult = performComprehensiveVerification(
                    staticResult.getFinalContent(), fileDataList, customPrompt);
        }

        // 3. 綜合結果
        boolean overallSuccess = staticResult.isSuccess() &&
                (verificationResult == null || verificationResult.isOverallSuccess());

        return new EnhancedQualityAssuranceResult(
                staticResult,
                verificationResult != null ? verificationResult.getExecutionResults() : new ArrayList<>(),
                overallSuccess,
                enableExecutionValidation && isExecutionValidationAvailable(),
                verificationResult
        );
    }

    /**
     * 原版本的 analyzeAndSupplementWithExecution（保持向後兼容）
     */
    public EnhancedQualityAssuranceResult analyzeAndSupplementWithExecution(
            List<FileData> fileDataList,
            String initialContent,
            int maxIterations,
            boolean enableExecutionValidation) {
        return analyzeAndSupplementWithExecution(fileDataList, initialContent, maxIterations, enableExecutionValidation, null);
    }

    // ========== 個別驗證方法 ==========

    /**
     * 🔍 靜態內容分析
     */
    public AnalysisResult performStaticAnalysis(String karateContent, List<FileData> fileDataList, String customPrompt) {
        try {
            String analysisPrompt = buildAnalysisPrompt(customPrompt) + "\n" + karateContent;

            Prompt prompt = new Prompt(analysisPrompt);
            ChatResponse response = chatModel.call(prompt);
            String analysisResponse = response.getResult().getOutput().getText();

            return parseAnalysisResult(analysisResponse);

        } catch (Exception e) {
            System.err.println("❌ 靜態分析發生錯誤：" + e.getMessage());
            return new AnalysisResult(false, "分析過程發生錯誤: " + e.getMessage(),
                    new ArrayList<>(), new ArrayList<>());
        }
    }

    /**
     * 🔤 語法驗證（靜態）
     */
    public SyntaxValidationResult performSyntaxValidation(String karateContent) {
        List<String> errors = new ArrayList<>();
        List<String> warnings = new ArrayList<>();

        // 基本結構檢查
        if (!karateContent.contains("Feature:")) {
            errors.add("缺少Feature聲明");
        }

        if (!karateContent.contains("Scenario:")) {
            errors.add("缺少Scenario定義");
        }

        // 語法模式檢查
        Pattern invalidPattern = Pattern.compile("(Then match.*responseStatus.*\\d+)(?!.*contains)");
        Matcher matcher = invalidPattern.matcher(karateContent);
        while (matcher.find()) {
            warnings.add("建議使用 'contains' 進行status code比對: " + matcher.group(1));
        }

        // 檢查Examples語法
        if (karateContent.contains("Examples:")) {
            Pattern examplePattern = Pattern.compile("param\\s+(\\w+)\\s*=\\s*<(\\w+)>");
            Matcher exampleMatcher = examplePattern.matcher(karateContent);
            List<String> paramNames = new ArrayList<>();
            while (exampleMatcher.find()) {
                paramNames.add(exampleMatcher.group(2));
            }

            if (!paramNames.isEmpty()) {
                for (String paramName : paramNames) {
                    if (!karateContent.contains("| " + paramName + " |")) {
                        warnings.add("參數 " + paramName + " 在Examples表格中可能缺失");
                    }
                }
            }
        }

        boolean isValid = errors.isEmpty();
        return new SyntaxValidationResult(isValid, errors, warnings);
    }

    /**
     * 🔤 增強的語法驗證（結合靜態和執行）
     */
    public EnhancedSyntaxValidationResult performEnhancedSyntaxValidation(String karateContent) {
        // 1. 靜態語法驗證
        SyntaxValidationResult staticResult = performSyntaxValidation(karateContent);

        // 2. 執行驗證（如果環境可用）
        List<KarateExecutor.ExecutionResult> executionResults = new ArrayList<>();
        boolean executionValidationAvailable = isExecutionValidationAvailable();

        if (executionValidationAvailable) {
            executionResults = performExecutionValidation(karateContent);
        }

        return new EnhancedSyntaxValidationResult(staticResult, executionResults, executionValidationAvailable);
    }

    /**
     * 📡 端點覆蓋分析
     */
    public EndpointCoverageResult performEndpointCoverageAnalysis(String karateContent, List<FileData> fileDataList) {
        try {
            if (fileDataList == null || fileDataList.isEmpty()) {
                return new EndpointCoverageResult(0, 0, new ArrayList<>(), new ArrayList<>(), 0.0);
            }

            StringBuilder apiContent = new StringBuilder();
            for (FileData fileData : fileDataList) {
                apiContent.append(fileData.getContent()).append("\n");
            }

            String coveragePrompt = String.format(ENDPOINT_COVERAGE_PROMPT,
                    apiContent.toString(), karateContent);

            Prompt prompt = new Prompt(coveragePrompt);
            ChatResponse response = chatModel.call(prompt);
            String coverageResponse = response.getResult().getOutput().getText();

            return parseEndpointCoverage(coverageResponse, karateContent);

        } catch (Exception e) {
            System.err.println("❌ 端點覆蓋分析發生錯誤：" + e.getMessage());
            return new EndpointCoverageResult(0, 0, new ArrayList<>(), new ArrayList<>(), 0.0);
        }
    }

    /**
     * 🚀 執行驗證
     */
    public List<KarateExecutor.ExecutionResult> performExecutionValidation(String karateContent) {
        if (!isExecutionValidationAvailable()) {
            System.out.println("⚠️ Karate執行環境不可用");
            return new ArrayList<>();
        }

        try {
            // 使用內容提取器提取Features
            KarateContentExtractor.ExtractionResult extractionResult =
                    contentExtractor.extractKarateFeatures(karateContent, true);

            if (!extractionResult.isSuccess()) {
                System.err.println("❌ 無法提取Karate Features進行執行驗證: " + extractionResult.getMessage());
                return new ArrayList<>();
            }

            // 對每個Feature進行執行驗證
            List<String> featureContents = new ArrayList<>();
            for (KarateContentExtractor.KarateFeature feature : extractionResult.getFeatures()) {
                featureContents.add(feature.getContent());
            }

            return executor.validateMultipleSyntax(featureContents);

        } catch (Exception e) {
            System.err.println("❌ 執行驗證發生錯誤: " + e.getMessage());
            return new ArrayList<>();
        }
    }

    /**
     * ⚡ 快速驗證（僅語法檢查）
     */
    public QuickVerificationResult performQuickVerification(String karateContent) {
        System.out.println("⚡ 執行快速驗證...");

        QuickVerificationResult result = new QuickVerificationResult();
        result.setOriginalContent(karateContent);

        try {
            // 1. 基本語法驗證
            SyntaxValidationResult syntaxResult = performSyntaxValidation(karateContent);
            result.setSyntaxResult(syntaxResult);

            // 2. 快速執行檢查（如果可用）
            if (isExecutionValidationAvailable()) {
                List<KarateExecutor.ExecutionResult> executionResults = performExecutionValidation(karateContent);
                result.setExecutionResults(executionResults);
            }

            result.setSuccess(syntaxResult.isValid() &&
                    (result.getExecutionResults().isEmpty() ||
                            result.getExecutionResults().stream().allMatch(KarateExecutor.ExecutionResult::isSyntaxValid)));

            return result;

        } catch (Exception e) {
            System.err.println("❌ 快速驗證發生錯誤: " + e.getMessage());
            result.setError(true);
            result.setErrorMessage(e.getMessage());
            return result;
        }
    }

    // ========== 🆕 內容補充相關方法 ==========

    /**
     * 🆕 支援自定義 Prompt 的內容補充方法
     */
    private String supplementContentWithCustomPrompt(String originalContent, AnalysisResult analysisResult, String customPrompt) {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            // 如果沒有自定義 prompt，使用原方法
            return supplementContent(originalContent, analysisResult);
        }

        try {
            // 🆕 建構包含自定義 prompt 的補充提示
            String enhancedSupplementPrompt = buildSupplementPromptWithCustom(originalContent, analysisResult, customPrompt);

            Prompt prompt = new Prompt(enhancedSupplementPrompt);
            ChatResponse response = chatModel.call(prompt);

            return response.getResult().getOutput().getText();

        } catch (Exception e) {
            System.err.println("❌ 補充內容過程發生錯誤：" + e.getMessage());
            // 回退到原方法
            System.out.println("🔄 回退到標準補充流程");
            return supplementContent(originalContent, analysisResult);
        }
    }

    /**
     * 原有的補充內容方法（保持向後兼容）
     */
    public String supplementContent(String originalContent, AnalysisResult analysisResult) {
        try {
            String supplementPrompt = String.format(SUPPLEMENT_PROMPT,
                    originalContent, analysisResult.getFullAnalysis());

            Prompt prompt = new Prompt(supplementPrompt);
            ChatResponse response = chatModel.call(prompt);

            return response.getResult().getOutput().getText();

        } catch (Exception e) {
            System.err.println("❌ 補充內容過程發生錯誤：" + e.getMessage());
            return null;
        }
    }

    // ========== 工具方法 ==========

    /**
     * 🆕 建構增強的自定義 Prompt（整合比對結果）
     */
    private String buildEnhancedCustomPrompt(String originalCustomPrompt, String comparisonPrompt) {

        if (comparisonPrompt == null || comparisonPrompt.trim().isEmpty()) {
            return originalCustomPrompt;
        }

        StringBuilder enhancedPrompt = new StringBuilder();

        // 1. 加入原始自定義 prompt（如果有）
        if (originalCustomPrompt != null && !originalCustomPrompt.trim().isEmpty()) {
            enhancedPrompt.append(originalCustomPrompt.trim()).append("\n\n");
        }

        // 2. 加入比對結果指導
        enhancedPrompt.append("=".repeat(80)).append("\n");
        enhancedPrompt.append("🔍 重要：基於正則表達式的精確比對結果\n");
        enhancedPrompt.append("=".repeat(80)).append("\n");
        enhancedPrompt.append("在驗證過程中，請特別參考以下比對分析結果：\n\n");
        enhancedPrompt.append(comparisonPrompt.trim());
        enhancedPrompt.append("\n=".repeat(80)).append("\n");
        enhancedPrompt.append("💡 驗證重點：\n");
        enhancedPrompt.append("- 缺失的操作是否確實需要補充\n");
        enhancedPrompt.append("- 額外的操作是否存在錯誤\n");
        enhancedPrompt.append("- HTTP 方法與路徑的對應關係\n");
        enhancedPrompt.append("- 路徑參數格式的一致性\n");
        enhancedPrompt.append("=".repeat(80)).append("\n\n");

        return enhancedPrompt.toString();
    }

    /**
     * 建構分析Prompt（支援自定義要求）
     */
    private String buildAnalysisPrompt(String customPrompt) {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            return ANALYSIS_PROMPT;
        }

        StringBuilder prompt = new StringBuilder();

        // 加入自定義要求
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("🎯 用戶自定義驗證要求（優先級：最高）:\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append(customPrompt.trim()).append("\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("📌 重要提醒：在執行以下標準檢查項目時，請特別注意並優先滿足上述自定義要求。\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");

        // 加入標準分析 prompt
        prompt.append(ANALYSIS_PROMPT);

        return prompt.toString();
    }

    /**
     * 🆕 建構包含自定義 Prompt 的補充提示
     */
    private String buildSupplementPromptWithCustom(String originalContent, AnalysisResult analysisResult, String customPrompt) {
        StringBuilder prompt = new StringBuilder();

        // 1. 自定義要求（最高優先級）
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("🎯 用戶自定義補充和改進要求（優先級：最高）:\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append(customPrompt.trim()).append("\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n");
        prompt.append("📌 關鍵指示：在執行以下補充工作時，請嚴格遵循上述自定義要求。\n");
        prompt.append("自定義要求的優先級高於標準要求，如有衝突請以自定義要求為準。\n");
        prompt.append(CUSTOM_PROMPT_SEPARATOR).append("\n\n");

        // 2. 標準補充流程
        prompt.append("根據以下分析結果，請補充和完善Karate測試內容：\n\n");
        prompt.append("原始內容：\n").append(originalContent).append("\n\n");
        prompt.append("分析結果：\n").append(analysisResult.getFullAnalysis()).append("\n\n");

        // 3. 整合要求
        prompt.append("請提供完整且符合所有要求的Karate測試內容，確保：\n");
        prompt.append("🎯 首要目標：完全滿足用戶自定義要求\n");
        prompt.append("1. 涵蓋所有缺失的API端點\n");
        prompt.append("2. 補充缺失的測試案例類型\n");
        prompt.append("3. 修正語法錯誤\n");
        prompt.append("4. 完善scenario編號和註解\n");
        prompt.append("5. 確保workflow的完整性\n");
        prompt.append("6. 🎯 特別注意：整合並實現所有自定義要求\n\n");

        prompt.append("請直接提供完整的Karate feature文件內容：\n");

        return prompt.toString();
    }

    /**
     * 解析分析結果
     */
    private AnalysisResult parseAnalysisResult(String analysisResponse) {
        List<String> passedItems = new ArrayList<>();
        List<String> failedItems = new ArrayList<>();

        Pattern checkPattern = Pattern.compile("\\[(✓|✗)\\]\\s*(.+)");
        Matcher matcher = checkPattern.matcher(analysisResponse);

        while (matcher.find()) {
            String status = matcher.group(1);
            String item = matcher.group(2).trim();

            if ("✓".equals(status)) {
                passedItems.add(item);
            } else {
                failedItems.add(item);
            }
        }

        boolean isCompliant = failedItems.isEmpty();
        return new AnalysisResult(isCompliant, analysisResponse, passedItems, failedItems);
    }

    /**
     * 解析端點覆蓋結果
     */
    private EndpointCoverageResult parseEndpointCoverage(String coverageResponse, String karateContent) {
        List<String> allEndpoints = extractEndpointsFromResponse(coverageResponse, "API文件中的所有端點");
        List<String> coveredEndpoints = extractEndpointsFromResponse(coverageResponse, "Karate測試中已覆蓋的端點");

        int totalEndpoints = allEndpoints.size();
        int coveredCount = coveredEndpoints.size();
        double coveragePercentage = totalEndpoints > 0 ? (double) coveredCount / totalEndpoints * 100 : 0.0;

        return new EndpointCoverageResult(totalEndpoints, coveredCount, allEndpoints, coveredEndpoints, coveragePercentage);
    }

    /**
     * 從回應中提取端點列表
     */
    private List<String> extractEndpointsFromResponse(String response, String section) {
        List<String> endpoints = new ArrayList<>();

        try {
            String[] lines = response.split("\n");
            boolean inSection = false;

            for (String line : lines) {
                if (line.contains(section)) {
                    inSection = true;
                    continue;
                }

                if (inSection) {
                    if (line.trim().isEmpty()) {
                        continue;
                    }

                    // 如果遇到下一個標題，停止處理
                    if (line.matches("^\\d+\\..*") && !line.contains("GET") && !line.contains("POST")
                            && !line.contains("PUT") && !line.contains("DELETE")) {
                        break;
                    }

                    // 提取端點信息
                    Pattern endpointPattern = Pattern.compile("(GET|POST|PUT|DELETE|PATCH)\\s+([^\\s]+)");
                    Matcher matcher = endpointPattern.matcher(line);
                    while (matcher.find()) {
                        endpoints.add(matcher.group(1) + " " + matcher.group(2));
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("⚠️ 解析端點時發生錯誤: " + e.getMessage());
        }

        return endpoints;
    }

    private String getContentPreview(String content, int maxLength) {
        if (content.length() <= maxLength) {
            return content;
        }
        return content.substring(0, maxLength) + "...\n[內容過長，僅顯示前" + maxLength + "字元]";
    }

    // ========== 顯示方法 ==========

    public void displayAnalysisResult(AnalysisResult result) {
        System.out.println("📊 靜態分析結果：");

        if (!result.getPassedItems().isEmpty()) {
            System.out.println("   ✅ 符合要求的項目：");
            for (String item : result.getPassedItems()) {
                System.out.println("      ✓ " + item);
            }
        }

        if (!result.getFailedItems().isEmpty()) {
            System.out.println("   ❌ 不符合要求的項目：");
            for (String item : result.getFailedItems()) {
                System.out.println("      ✗ " + item);
            }
        }

        System.out.println(String.format("   📈 總體評估：%s",
                result.isCompliant() ? "✅ 完全符合要求" : "❌ 需要改進"));
    }

    private void displaySyntaxResult(EnhancedSyntaxValidationResult result) {
        System.out.println("🔤 語法驗證結果：");
        System.out.println("   靜態檢查: " + (result.getStaticResult().isValid() ? "✅ 通過" : "❌ 有問題"));

        if (!result.getAllErrors().isEmpty()) {
            System.out.println("   ❌ 錯誤：");
            for (String error : result.getAllErrors()) {
                System.out.println("      • " + error);
            }
        }

        if (!result.getAllWarnings().isEmpty()) {
            System.out.println("   ⚠️ 警告：");
            for (String warning : result.getAllWarnings()) {
                System.out.println("      • " + warning);
            }
        }
    }

    private void displayCoverageResult(EndpointCoverageResult result) {
        System.out.println("📡 端點覆蓋分析：");
        System.out.println(String.format("   📈 覆蓋率：%.1f%% (%d/%d)",
                result.getCoveragePercentage(), result.getCoveredCount(), result.getTotalEndpoints()));

        if (!result.getUncoveredEndpoints().isEmpty()) {
            System.out.println("   ❌ 未覆蓋的端點：");
            for (String endpoint : result.getUncoveredEndpoints()) {
                System.out.println("      • " + endpoint);
            }
        }
    }

    private void displayExecutionResults(List<KarateExecutor.ExecutionResult> results) {
        System.out.println("🚀 執行驗證結果：");

        for (int i = 0; i < results.size(); i++) {
            KarateExecutor.ExecutionResult result = results.get(i);
            System.out.println(String.format("   Feature %d: %s", i + 1, result.getSummary()));

            if (result.hasErrors()) {
                System.out.println("      ❌ 錯誤：");
                for (String error : result.getSyntaxErrors()) {
                    System.out.println("         • " + error);
                }
            }
        }
    }

    // ========== 狀態檢查方法 ==========

    public boolean isExecutionValidationAvailable() {
        return executor.isKarateAvailable();
    }

    public String getExecutorEnvironmentInfo() {
        return executor.getEnvironmentInfo();
    }

    public boolean supportsCustomPrompt() {
        return true;
    }

    // ========== 統一的數據類定義 ==========

    /**
     * 綜合驗證結果
     */
    public static class ComprehensiveVerificationResult {
        private String originalContent;
        private AnalysisResult analysisResult;
        private EnhancedSyntaxValidationResult syntaxResult;
        private EndpointCoverageResult coverageResult;
        private List<KarateExecutor.ExecutionResult> executionResults;
        private boolean overallSuccess;
        private boolean hasError;
        private String errorMessage;

        // Getters and Setters
        public String getOriginalContent() { return originalContent; }
        public void setOriginalContent(String originalContent) { this.originalContent = originalContent; }

        public AnalysisResult getAnalysisResult() { return analysisResult; }
        public void setAnalysisResult(AnalysisResult analysisResult) { this.analysisResult = analysisResult; }

        public EnhancedSyntaxValidationResult getSyntaxResult() { return syntaxResult; }
        public void setSyntaxResult(EnhancedSyntaxValidationResult syntaxResult) { this.syntaxResult = syntaxResult; }

        public EndpointCoverageResult getCoverageResult() { return coverageResult; }
        public void setCoverageResult(EndpointCoverageResult coverageResult) { this.coverageResult = coverageResult; }

        public List<KarateExecutor.ExecutionResult> getExecutionResults() { return executionResults; }
        public void setExecutionResults(List<KarateExecutor.ExecutionResult> executionResults) { this.executionResults = executionResults; }

        public boolean isOverallSuccess() { return overallSuccess; }
        public void setOverallSuccess(boolean overallSuccess) { this.overallSuccess = overallSuccess; }

        public boolean hasError() { return hasError; }
        public void setError(boolean hasError) { this.hasError = hasError; }

        public String getErrorMessage() { return errorMessage; }
        public void setErrorMessage(String errorMessage) { this.errorMessage = errorMessage; }

        public void calculateOverallResult() {
            if (hasError) {
                overallSuccess = false;
                return;
            }

            boolean analysisPass = analysisResult != null && analysisResult.isCompliant();
            boolean syntaxPass = syntaxResult != null && syntaxResult.isOverallValid();
            boolean executionPass = executionResults == null || executionResults.isEmpty() ||
                    executionResults.stream().allMatch(KarateExecutor.ExecutionResult::isSyntaxValid);

            overallSuccess = analysisPass && syntaxPass && executionPass;
        }

        public String getSummary() {
            StringBuilder summary = new StringBuilder();
            summary.append("🔍 綜合驗證摘要:\n");

            if (analysisResult != null) {
                summary.append(String.format("   靜態分析: %s\n", analysisResult.isCompliant() ? "✅ 通過" : "❌ 未通過"));
            }

            if (syntaxResult != null) {
                summary.append(String.format("   語法驗證: %s\n", syntaxResult.isOverallValid() ? "✅ 通過" : "❌ 有問題"));
            }

            if (coverageResult != null) {
                summary.append(String.format("   覆蓋率: %.1f%%\n", coverageResult.getCoveragePercentage()));
            }

            if (executionResults != null && !executionResults.isEmpty()) {
                long validCount = executionResults.stream().filter(KarateExecutor.ExecutionResult::isSyntaxValid).count();
                summary.append(String.format("   執行驗證: %d/%d 通過\n", validCount, executionResults.size()));
            }

            summary.append(String.format("   整體結果: %s", overallSuccess ? "✅ 完全通過" : "❌ 需要改進"));

            return summary.toString();
        }
    }

    /**
     * 快速驗證結果
     */
    public static class QuickVerificationResult {
        private String originalContent;
        private SyntaxValidationResult syntaxResult;
        private List<KarateExecutor.ExecutionResult> executionResults;
        private boolean success;
        private boolean hasError;
        private String errorMessage;

        // Getters and Setters
        public String getOriginalContent() { return originalContent; }
        public void setOriginalContent(String originalContent) { this.originalContent = originalContent; }

        public SyntaxValidationResult getSyntaxResult() { return syntaxResult; }
        public void setSyntaxResult(SyntaxValidationResult syntaxResult) { this.syntaxResult = syntaxResult; }

        public List<KarateExecutor.ExecutionResult> getExecutionResults() { return executionResults; }
        public void setExecutionResults(List<KarateExecutor.ExecutionResult> executionResults) { this.executionResults = executionResults; }

        public boolean isSuccess() { return success; }
        public void setSuccess(boolean success) { this.success = success; }

        public boolean hasError() { return hasError; }
        public void setError(boolean hasError) { this.hasError = hasError; }

        public String getErrorMessage() { return errorMessage; }
        public void setErrorMessage(String errorMessage) { this.errorMessage = errorMessage; }

        public String getSummary() {
            if (hasError) {
                return "❌ 快速驗證失敗: " + errorMessage;
            }
            return success ? "✅ 快速驗證通過" : "❌ 快速驗證發現問題";
        }
    }

    /**
     * 🆕 質量保證結果
     */
    public static class QualityAssuranceResult {
        private String originalContent;
        private String finalContent;
        private boolean success;
        private String errorMessage;
        private int completedIterations;
        private final List<AnalysisResult> analysisResults = new ArrayList<>();
        private final List<SupplementRecord> supplementRecords = new ArrayList<>();

        public String getOriginalContent() { return originalContent; }
        public void setOriginalContent(String originalContent) { this.originalContent = originalContent; }

        public String getFinalContent() { return finalContent; }
        public void setFinalContent(String finalContent) { this.finalContent = finalContent; }

        public boolean isSuccess() { return success; }
        public void setSuccess(boolean success) { this.success = success; }

        public String getErrorMessage() { return errorMessage; }
        public void setErrorMessage(String errorMessage) { this.errorMessage = errorMessage; }

        public int getCompletedIterations() { return completedIterations; }
        public void setCompletedIterations(int completedIterations) { this.completedIterations = completedIterations; }

        public List<AnalysisResult> getAnalysisResults() { return analysisResults; }
        public void addAnalysisResult(AnalysisResult result) { this.analysisResults.add(result); }

        public List<SupplementRecord> getSupplementRecords() { return supplementRecords; }
        public void addSupplementedContent(int iteration, String content) {
            this.supplementRecords.add(new SupplementRecord(iteration, content));
        }

        public static class SupplementRecord {
            private final int iteration;
            private final String content;

            public SupplementRecord(int iteration, String content) {
                this.iteration = iteration;
                this.content = content;
            }

            public int getIteration() { return iteration; }
            public String getContent() { return content; }
        }
    }

    /**
     * 🆕 增強的質量保證結果
     */
    public static class EnhancedQualityAssuranceResult {
        private final QualityAssuranceResult staticResult;
        private final List<KarateExecutor.ExecutionResult> executionResults;
        private final boolean overallSuccess;
        private final boolean executionValidationPerformed;
        private final ComprehensiveVerificationResult verificationResult;

        public EnhancedQualityAssuranceResult(QualityAssuranceResult staticResult,
                                              List<KarateExecutor.ExecutionResult> executionResults,
                                              boolean overallSuccess,
                                              boolean executionValidationPerformed,
                                              ComprehensiveVerificationResult verificationResult) {
            this.staticResult = staticResult;
            this.executionResults = executionResults != null ? executionResults : new ArrayList<>();
            this.overallSuccess = overallSuccess;
            this.executionValidationPerformed = executionValidationPerformed;
            this.verificationResult = verificationResult;
        }

        // Getters
        public QualityAssuranceResult getStaticResult() { return staticResult; }
        public List<KarateExecutor.ExecutionResult> getExecutionResults() { return new ArrayList<>(executionResults); }
        public boolean isOverallSuccess() { return overallSuccess; }
        public boolean wasExecutionValidationPerformed() { return executionValidationPerformed; }
        public ComprehensiveVerificationResult getVerificationResult() { return verificationResult; }

        public boolean hasExecutionErrors() {
            return executionResults.stream().anyMatch(KarateExecutor.ExecutionResult::hasErrors);
        }

        public int getValidFeatures() {
            return (int) executionResults.stream().filter(KarateExecutor.ExecutionResult::isSyntaxValid).count();
        }

        public double getExecutionSuccessRate() {
            if (executionResults.isEmpty()) return 0.0;
            return (double) getValidFeatures() / executionResults.size() * 100.0;
        }

        public String getSummary() {
            StringBuilder summary = new StringBuilder();
            summary.append("📊 質量保證摘要:\n");
            summary.append(String.format("   靜態分析: %s\n", staticResult.isSuccess() ? "✅ 通過" : "❌ 未通過"));

            if (executionValidationPerformed) {
                summary.append(String.format("   執行驗證: %s (成功率: %.1f%%)\n",
                        !hasExecutionErrors() ? "✅ 通過" : "❌ 有問題", getExecutionSuccessRate()));
            } else {
                summary.append("   執行驗證: ⚠️ 未執行\n");
            }

            if (verificationResult != null && verificationResult.getCoverageResult() != null) {
                summary.append(String.format("   覆蓋率: %.1f%%\n", verificationResult.getCoverageResult().getCoveragePercentage()));
            }

            summary.append(String.format("   整體結果: %s", overallSuccess ? "✅ 完全通過" : "❌ 需要改進"));

            return summary.toString();
        }
    }

    public static class AnalysisResult {
        private final boolean compliant;
        private final String fullAnalysis;
        private final List<String> passedItems;
        private final List<String> failedItems;

        public AnalysisResult(boolean compliant, String fullAnalysis,
                              List<String> passedItems, List<String> failedItems) {
            this.compliant = compliant;
            this.fullAnalysis = fullAnalysis;
            this.passedItems = passedItems;
            this.failedItems = failedItems;
        }

        public boolean isCompliant() { return compliant; }
        public String getFullAnalysis() { return fullAnalysis; }
        public List<String> getPassedItems() { return passedItems; }
        public List<String> getFailedItems() { return failedItems; }
    }

    public static class EndpointCoverageResult {
        private final int totalEndpoints;
        private final int coveredCount;
        private final List<String> allEndpoints;
        private final List<String> coveredEndpoints;
        private final double coveragePercentage;

        public EndpointCoverageResult(int totalEndpoints, int coveredCount,
                                      List<String> allEndpoints, List<String> coveredEndpoints,
                                      double coveragePercentage) {
            this.totalEndpoints = totalEndpoints;
            this.coveredCount = coveredCount;
            this.allEndpoints = allEndpoints;
            this.coveredEndpoints = coveredEndpoints;
            this.coveragePercentage = coveragePercentage;
        }

        public int getTotalEndpoints() { return totalEndpoints; }
        public int getCoveredCount() { return coveredCount; }
        public List<String> getAllEndpoints() { return allEndpoints; }
        public List<String> getCoveredEndpoints() { return coveredEndpoints; }
        public double getCoveragePercentage() { return coveragePercentage; }
        public List<String> getUncoveredEndpoints() {
            List<String> uncovered = new ArrayList<>(allEndpoints);
            uncovered.removeAll(coveredEndpoints);
            return uncovered;
        }
    }

    public static class SyntaxValidationResult {
        private final boolean valid;
        private final List<String> errors;
        private final List<String> warnings;

        public SyntaxValidationResult(boolean valid, List<String> errors, List<String> warnings) {
            this.valid = valid;
            this.errors = errors;
            this.warnings = warnings;
        }

        public boolean isValid() { return valid; }
        public List<String> getErrors() { return errors; }
        public List<String> getWarnings() { return warnings; }
    }

    public static class EnhancedSyntaxValidationResult {
        private final SyntaxValidationResult staticResult;
        private final List<KarateExecutor.ExecutionResult> executionResults;
        private final boolean executionValidationAvailable;

        public EnhancedSyntaxValidationResult(SyntaxValidationResult staticResult,
                                              List<KarateExecutor.ExecutionResult> executionResults,
                                              boolean executionValidationAvailable) {
            this.staticResult = staticResult;
            this.executionResults = executionResults != null ? executionResults : new ArrayList<>();
            this.executionValidationAvailable = executionValidationAvailable;
        }

        public SyntaxValidationResult getStaticResult() { return staticResult; }
        public List<KarateExecutor.ExecutionResult> getExecutionResults() { return new ArrayList<>(executionResults); }
        public boolean isExecutionValidationAvailable() { return executionValidationAvailable; }

        public boolean isOverallValid() {
            boolean staticValid = staticResult.isValid();
            boolean executionValid = executionResults.isEmpty() ||
                    executionResults.stream().allMatch(KarateExecutor.ExecutionResult::isSyntaxValid);
            return staticValid && executionValid;
        }

        public List<String> getAllErrors() {
            List<String> allErrors = new ArrayList<>(staticResult.getErrors());
            for (KarateExecutor.ExecutionResult result : executionResults) {
                allErrors.addAll(result.getSyntaxErrors());
            }
            return allErrors;
        }

        public List<String> getAllWarnings() {
            List<String> allWarnings = new ArrayList<>(staticResult.getWarnings());
            for (KarateExecutor.ExecutionResult result : executionResults) {
                allWarnings.addAll(result.getWarnings());
            }
            return allWarnings;
        }
    }
}