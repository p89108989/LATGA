package Karate.tools;

import FileChooser.MultiFileChooser.FileData;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Simplified Karate 檔案保存器
 * 專注於保存功能，依賴 KarateContentExtractor 進行內容提取和處理
 * 避免功能重複，保持職責分離
 *
 * @version 2.0 - Updated to use unified TestCaseVerification
 */
public class KarateFileSaver {

    /**
     * 保存配置類
     */
    public static class SaveConfig {
        private String outputDirectory ;
        private boolean useTimestamp;
        private String timestampFormat;
        private boolean createSubDirectory;
        private String subDirectoryName;
        private FileNamingStrategy namingStrategy;

        public SaveConfig() {
            this.outputDirectory = "output/karate";
            this.useTimestamp = true;
            this.timestampFormat = "yyyyMMdd_HHmmss";
            this.createSubDirectory = false;
            this.subDirectoryName = "karate-tests";
            this.namingStrategy = FileNamingStrategy.FEATURE_NAME_WITH_TIMESTAMP;
        }

        // Getters and Setters
        public String getOutputDirectory() { return outputDirectory; }
        public void setOutputDirectory(String outputDirectory) { this.outputDirectory = outputDirectory; }

        public boolean isUseTimestamp() { return useTimestamp; }
        public void setUseTimestamp(boolean useTimestamp) { this.useTimestamp = useTimestamp; }

        public String getTimestampFormat() { return timestampFormat; }
        public void setTimestampFormat(String timestampFormat) { this.timestampFormat = timestampFormat; }

        public boolean isCreateSubDirectory() { return createSubDirectory; }
        public void setCreateSubDirectory(boolean createSubDirectory) { this.createSubDirectory = createSubDirectory; }

        public String getSubDirectoryName() { return subDirectoryName; }
        public void setSubDirectoryName(String subDirectoryName) { this.subDirectoryName = subDirectoryName; }

        public FileNamingStrategy getNamingStrategy() { return namingStrategy; }
        public void setNamingStrategy(FileNamingStrategy namingStrategy) { this.namingStrategy = namingStrategy; }
    }

    /**
     * 檔名命名策略
     */
    public enum FileNamingStrategy {
        FEATURE_NAME_ONLY,           // MyFeature.feature
        FEATURE_NAME_WITH_TIMESTAMP, // MyFeature_20241204_143022.feature
        TIMESTAMP_ONLY,              // 20241204_143022.feature
        NUMBERED_SEQUENCE,           // Test_001.feature, Test_002.feature
        CUSTOM                       // 自定義格式
    }

    /**
     * 保存結果封裝類
     */
    public static class SaveResult {
        private final List<SavedFile> savedFiles;
        private final boolean success;
        private final String message;
        private final int successCount;
        private final int failureCount;
        private final List<String> extractorWarnings; //  來自提取器的警告

        public SaveResult(List<SavedFile> savedFiles, boolean success, String message) {
            this(savedFiles, success, message, new ArrayList<>());
        }

        public SaveResult(List<SavedFile> savedFiles, boolean success, String message, List<String> extractorWarnings) {
            this.savedFiles = savedFiles != null ? savedFiles : new ArrayList<>();
            this.success = success;
            this.message = message;
            this.extractorWarnings = extractorWarnings != null ? extractorWarnings : new ArrayList<>();
            this.successCount = (int) this.savedFiles.stream().filter(SavedFile::isSuccess).count();
            this.failureCount = this.savedFiles.size() - this.successCount;
        }

        public List<SavedFile> getSavedFiles() { return savedFiles; }
        public boolean isSuccess() { return success; }
        public String getMessage() { return message; }
        public int getSuccessCount() { return successCount; }
        public int getFailureCount() { return failureCount; }
        public List<String> getExtractorWarnings() { return extractorWarnings; } // 
        public boolean hasWarnings() { return !extractorWarnings.isEmpty(); } // 
    }

    /**
     * 保存的檔案信息
     */
    public static class SavedFile {
        private final String fileName;
        private final String fullPath;
        private final boolean success;
        private final String errorMessage;
        private final long fileSize;
        private final boolean wasContentCleaned; // 來自提取器的清理狀態

        public SavedFile(String fileName, String fullPath, boolean success, String errorMessage, long fileSize, boolean wasContentCleaned) {
            this.fileName = fileName;
            this.fullPath = fullPath;
            this.success = success;
            this.errorMessage = errorMessage;
            this.fileSize = fileSize;
            this.wasContentCleaned = wasContentCleaned;
        }

        public String getFileName() { return fileName; }
        public String getFullPath() { return fullPath; }
        public boolean isSuccess() { return success; }
        public String getErrorMessage() { return errorMessage; }
        public long getFileSize() { return fileSize; }
        public boolean wasContentCleaned() { return wasContentCleaned; }
    }

    private final SaveConfig config;
    private final KarateContentExtractor extractor; // 🔧 依賴提取器而不是重複實現

    /**
     * 使用預設配置建構
     */
    public KarateFileSaver() {
        this.config = new SaveConfig();
        this.extractor = new KarateContentExtractor();
    }

    /**
     * 使用自定義配置建構
     */
    public KarateFileSaver(SaveConfig config) {
        this.config = config != null ? config : new SaveConfig();
        this.extractor = new KarateContentExtractor();
    }

    /**
     * 使用自定義配置和提取器建構
     */
    public KarateFileSaver(SaveConfig config, KarateContentExtractor extractor) {
        this.config = config != null ? config : new SaveConfig();
        this.extractor = extractor != null ? extractor : new KarateContentExtractor();
    }

    /**
     *  從質量保證結果保存（更新為使用 TestCaseVerification）
     */
    public SaveResult saveFromQualityAssuranceResult(TestCaseVerification.QualityAssuranceResult qaResult,
                                                     List<FileData> originalFiles) {
        if (qaResult == null || qaResult.getFinalContent() == null) {
            return new SaveResult(null, false, "質量保證結果為空或無最終內容");
        }

        return saveFromContent(qaResult.getFinalContent(), originalFiles, "QA處理後內容");
    }

    /**
     *  從任意內容智能保存（新增方法）
     */
    public SaveResult saveFromContent(String content, List<FileData> originalFiles, String contentSource) {
        if (content == null || content.trim().isEmpty()) {
            return new SaveResult(null, false, "內容為空無法保存");
        }

        //  使用增強的提取器進行內容提取（啟用進階清理）
        KarateContentExtractor.ExtractionResult extractionResult = extractor.extractKarateFeatures(content, true);

        if (!extractionResult.isSuccess()) {
            return new SaveResult(null, false,
                    String.format("無法從%s中提取有效的Karate內容: %s", contentSource, extractionResult.getMessage()),
                    extractionResult.getWarnings());
        }

        return saveKarateFeatures(extractionResult.getFeatures(), originalFiles, extractionResult.getWarnings());
    }

    /**
     *  從綜合驗證結果保存
     */
    public SaveResult saveFromComprehensiveVerificationResult(TestCaseVerification.ComprehensiveVerificationResult verificationResult,
                                                              List<FileData> originalFiles) {
        if (verificationResult == null || verificationResult.getOriginalContent() == null) {
            return new SaveResult(null, false, "綜合驗證結果為空或無內容");
        }

        String contentDescription = String.format("綜合驗證結果（%s）",
                verificationResult.isOverallSuccess() ? "驗證通過" : "需要改進");

        return saveFromContent(verificationResult.getOriginalContent(), originalFiles, contentDescription);
    }

    /**
     *  從增強質量保證結果保存
     */
    public SaveResult saveFromEnhancedQualityAssuranceResult(TestCaseVerification.EnhancedQualityAssuranceResult enhancedResult,
                                                             List<FileData> originalFiles) {
        if (enhancedResult == null || enhancedResult.getStaticResult() == null ||
                enhancedResult.getStaticResult().getFinalContent() == null) {
            return new SaveResult(null, false, "增強質量保證結果為空或無最終內容");
        }

        String contentDescription = String.format("增強QA處理後內容（%s）",
                enhancedResult.isOverallSuccess() ? "完全通過" : "需要改進");

        return saveFromContent(enhancedResult.getStaticResult().getFinalContent(), originalFiles, contentDescription);
    }

    /**
     * 保存單一 Karate Feature
     */
    public SaveResult saveKarateFeature(KarateContentExtractor.KarateFeature feature) {
        List<KarateContentExtractor.KarateFeature> features = new ArrayList<>();
        features.add(feature);
        return saveKarateFeatures(features);
    }

    /**
     * 保存多個 Karate Features
     */
    public SaveResult saveKarateFeatures(List<KarateContentExtractor.KarateFeature> features) {
        return saveKarateFeatures(features, null, new ArrayList<>());
    }

    /**
     * 保存多個 Karate Features，基於原始檔案資訊
     */
    public SaveResult saveKarateFeatures(List<KarateContentExtractor.KarateFeature> features,
                                         List<FileData> originalFiles) {
        return saveKarateFeatures(features, originalFiles, new ArrayList<>());
    }

    /**
     *  內部保存方法（支援提取器警告）
     */
    private SaveResult saveKarateFeatures(List<KarateContentExtractor.KarateFeature> features,
                                          List<FileData> originalFiles,
                                          List<String> extractorWarnings) {
        if (features == null || features.isEmpty()) {
            return new SaveResult(null, false, "沒有要保存的 Karate Feature", extractorWarnings);
        }

        // 決定輸出目錄
        String outputDirectory = determineOutputDirectory(originalFiles);

        List<SavedFile> savedFiles = new ArrayList<>();
        String timestamp = generateTimestamp();

        try {
            // 確保輸出目錄存在
            Path outputDir = createOutputDirectory(outputDirectory);

            for (int i = 0; i < features.size(); i++) {
                KarateContentExtractor.KarateFeature feature = features.get(i);
                String fileName = generateFileName(feature, i + 1, timestamp);

                SavedFile savedFile = saveIndividualFile(outputDir, fileName, feature.getContent(), feature.wasContentCleaned());
                savedFiles.add(savedFile);
            }

        } catch (IOException e) {
            return new SaveResult(savedFiles, false, "創建輸出目錄失敗: " + e.getMessage(), extractorWarnings);
        }

        int successCount = (int) savedFiles.stream().filter(SavedFile::isSuccess).count();
        boolean overallSuccess = successCount > 0;

        String message = String.format("保存完成：成功 %d 個，失敗 %d 個檔案。輸出目錄：%s",
                successCount, savedFiles.size() - successCount, outputDirectory);

        return new SaveResult(savedFiles, overallSuccess, message, extractorWarnings);
    }

    /**
     * 🔧 從 AI 回應直接保存（使用增強的提取器）
     */
    public SaveResult saveFromAiResponse(String aiResponse, List<FileData> originalFiles) {
        return saveFromContent(aiResponse, originalFiles, "AI回應");
    }

    /**
     * 決定輸出目錄
     */
    private String determineOutputDirectory(List<FileData> originalFiles) {
        // 如果有設定固定輸出目錄，直接使用
        if (config.getOutputDirectory() != null && !config.getOutputDirectory().equals("output/karate")) {
            return config.getOutputDirectory();
        }

        // 嘗試從原始檔案推斷目錄
        if (originalFiles != null && !originalFiles.isEmpty()) {
            try {
                Path firstFilePath = Paths.get(originalFiles.get(0).getFilePath());
                Path parentDir = firstFilePath.getParent();
                if (parentDir != null) {
                    return parentDir.toString();
                }
            } catch (Exception e) {
                System.err.println("  無法確定原始檔案目錄，使用當前目錄: " + e.getMessage());
            }
        }

        return config.getOutputDirectory();
    }

    /**
     * 創建輸出目錄
     */
    private Path createOutputDirectory(String baseDirectory) throws IOException {
        Path outputDir = Paths.get(baseDirectory);

        if (config.isCreateSubDirectory()) {
            outputDir = outputDir.resolve(config.getSubDirectoryName());
        }

        if (!Files.exists(outputDir)) {
            Files.createDirectories(outputDir);
        }

        return outputDir;
    }

    /**
     * 生成檔名
     */
    private String generateFileName(KarateContentExtractor.KarateFeature feature, int index, String timestamp) {
        String baseName = feature.getCleanFileName();
        if (baseName == null || baseName.trim().isEmpty()) {
            baseName = "GeneratedTest_" + index;
        }

        String fileName;
        switch (config.getNamingStrategy()) {
            case FEATURE_NAME_ONLY:
                fileName = baseName + ".feature";
                break;
            case TIMESTAMP_ONLY:
                fileName = timestamp + ".feature";
                break;
            case NUMBERED_SEQUENCE:
                fileName = String.format("Test_%03d.feature", index);
                break;
            case CUSTOM:
                // 可擴展自定義格式
                fileName = baseName + "_" + timestamp + ".feature";
                break;
            case FEATURE_NAME_WITH_TIMESTAMP:
            default:
                if (config.isUseTimestamp()) {
                    fileName = baseName + "_" + timestamp + ".feature";
                } else {
                    fileName = baseName + ".feature";
                }
                break;
        }

        return fileName;
    }

    /**
     * 生成時間戳
     */
    private String generateTimestamp() {
        if (!config.isUseTimestamp()) {
            return "";
        }

        SimpleDateFormat sdf = new SimpleDateFormat(config.getTimestampFormat());
        return sdf.format(new Date());
    }

    /**
     * 保存單一檔案
     */
    private SavedFile saveIndividualFile(Path outputDir, String fileName, String content, boolean wasContentCleaned) {
        try {
            Path filePath = outputDir.resolve(fileName);

            Files.writeString(filePath, content, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);

            long fileSize = Files.size(filePath);
            String cleanedIndicator = wasContentCleaned ? " [已清理]" : "";
            System.out.println("    " + fileName + cleanedIndicator + " 已保存至：" + filePath + " (大小: " + fileSize + " bytes)");

            return new SavedFile(fileName, filePath.toString(), true, null, fileSize, wasContentCleaned);

        } catch (IOException e) {
            String errorMessage = "保存檔案失敗: " + e.getMessage();
            System.err.println("    " + fileName + " - " + errorMessage);
            return new SavedFile(fileName, "", false, errorMessage, 0, false);
        }
    }

    /**
     * 更新保存配置
     */
    public void updateConfig(SaveConfig newConfig) {
        if (newConfig != null) {
            this.config.setOutputDirectory(newConfig.getOutputDirectory());
            this.config.setUseTimestamp(newConfig.isUseTimestamp());
            this.config.setTimestampFormat(newConfig.getTimestampFormat());
            this.config.setCreateSubDirectory(newConfig.isCreateSubDirectory());
            this.config.setSubDirectoryName(newConfig.getSubDirectoryName());
            this.config.setNamingStrategy(newConfig.getNamingStrategy());
        }
    }

    /**
     *  更新提取器配置
     */
    public void updateExtractorConfig(boolean enableAdvancedCleaning, boolean strictValidation) {
        extractor.setEnableAdvancedCleaning(enableAdvancedCleaning);
        extractor.setStrictValidation(strictValidation);
    }

    /**
     * 獲取當前配置
     */
    public SaveConfig getConfig() {
        return this.config;
    }

    /**
     *  獲取提取器實例
     */
    public KarateContentExtractor getExtractor() {
        return this.extractor;
    }

    /**
     * 快速建立常用配置的靜態方法
     */
    public static class ConfigBuilder {
        public static SaveConfig defaultConfig() {
            return new SaveConfig();
        }

        public static SaveConfig withOutputDirectory(String directory) {
            SaveConfig config = new SaveConfig();
            config.setOutputDirectory(directory);
            return config;
        }

        public static SaveConfig withSubDirectory(String subDirName) {
            SaveConfig config = new SaveConfig();
            config.setCreateSubDirectory(true);
            config.setSubDirectoryName(subDirName);
            return config;
        }

        public static SaveConfig withoutTimestamp() {
            SaveConfig config = new SaveConfig();
            config.setUseTimestamp(false);
            config.setNamingStrategy(FileNamingStrategy.FEATURE_NAME_ONLY);
            return config;
        }

        public static SaveConfig numberedSequence() {
            SaveConfig config = new SaveConfig();
            config.setNamingStrategy(FileNamingStrategy.NUMBERED_SEQUENCE);
            return config;
        }
    }
}