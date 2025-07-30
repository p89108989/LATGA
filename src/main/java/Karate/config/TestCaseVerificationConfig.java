package Karate.config;

import Karate.tools.TestCaseVerification;
import Karate.tools.KarateExecutor;
import Karate.config.KarateExecutorConfig;
import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

/**
 *  TestCaseVerification Spring Boot 配置類
 * 處理 Spring Boot 配置與 KarateExecutor.ExecutorConfig 的轉換
 *
 * @author StaticBlackbox Team
 * @version 1.0 - Spring Boot Integration
 */
@Configuration
@EnableConfigurationProperties({
        TestCaseVerificationConfig.KarateExecutorProperties.class,
        TestCaseVerificationConfig.QualityAssuranceProperties.class
})
public class TestCaseVerificationConfig {

    /**
     *  Karate 執行器配置屬性
     */
    @ConfigurationProperties(prefix = "karate.verification.executor")
    public static class KarateExecutorProperties {
        private int timeoutSeconds = 30;
        private boolean cleanupTempFiles = true;
        private boolean verboseOutput = false;
        private String javaCommand = "java";
        private String karateJarPath = "";
        private KarateExecutor.ExecutionMode executionMode = KarateExecutor.ExecutionMode.AUTO_DETECT;

        // Getters and Setters
        public int getTimeoutSeconds() { return timeoutSeconds; }
        public void setTimeoutSeconds(int timeoutSeconds) { this.timeoutSeconds = timeoutSeconds; }

        public boolean isCleanupTempFiles() { return cleanupTempFiles; }
        public void setCleanupTempFiles(boolean cleanupTempFiles) { this.cleanupTempFiles = cleanupTempFiles; }

        public boolean isVerboseOutput() { return verboseOutput; }
        public void setVerboseOutput(boolean verboseOutput) { this.verboseOutput = verboseOutput; }

        public String getJavaCommand() { return javaCommand; }
        public void setJavaCommand(String javaCommand) { this.javaCommand = javaCommand; }

        public String getKarateJarPath() { return karateJarPath; }
        public void setKarateJarPath(String karateJarPath) { this.karateJarPath = karateJarPath; }

        public KarateExecutor.ExecutionMode getExecutionMode() { return executionMode; }
        public void setExecutionMode(KarateExecutor.ExecutionMode executionMode) { this.executionMode = executionMode; }

        /**
         *  轉換為 KarateExecutor.ExecutorConfig
         */
        public KarateExecutor.ExecutorConfig toExecutorConfig() {
            return KarateExecutor.ExecutorConfig.defaultConfig()
                    .timeoutSeconds(this.timeoutSeconds)
                    .cleanupTempFiles(this.cleanupTempFiles)
                    .verboseOutput(this.verboseOutput)
                    .javaCommand(this.javaCommand)
                    .karateJarPath(this.karateJarPath)
                    .executionMode(this.executionMode);
        }
    }

    /**
     *  質量保證配置屬性
     */
    @ConfigurationProperties(prefix = "karate.verification.quality-assurance")
    public static class QualityAssuranceProperties {
        private int maxIterations = 3;
        private boolean enableExecutionValidation = true;
        private boolean enableCustomPrompt = true;

        // Getters and Setters
        public int getMaxIterations() { return maxIterations; }
        public void setMaxIterations(int maxIterations) { this.maxIterations = maxIterations; }

        public boolean isEnableExecutionValidation() { return enableExecutionValidation; }
        public void setEnableExecutionValidation(boolean enableExecutionValidation) {
            this.enableExecutionValidation = enableExecutionValidation;
        }

        public boolean isEnableCustomPrompt() { return enableCustomPrompt; }
        public void setEnableCustomPrompt(boolean enableCustomPrompt) {
            this.enableCustomPrompt = enableCustomPrompt;
        }
    }

    /**
     * 註冊 Karate 執行器配置屬性 - 已透過 @EnableConfigurationProperties 自動註冊
     */
    // 不需要手動註冊 Bean，@EnableConfigurationProperties 會自動處理

    /**
     * 註冊質量保證配置屬性 - 已透過 @EnableConfigurationProperties 自動註冊
     */
    // 不需要手動註冊 Bean，@EnableConfigurationProperties 會自動處理

    /**
     *  主要的 TestCaseVerification Bean
     */
    @Bean
    public TestCaseVerification testCaseVerification(
            OpenAiChatModel chatModel,
            KarateExecutorProperties executorProperties) {

        KarateExecutor.ExecutorConfig executorConfig = executorProperties.toExecutorConfig();

        System.out.println("   初始化 TestCaseVerification:");
        System.out.println("   超時設定: " + executorProperties.getTimeoutSeconds() + " 秒");
        System.out.println("   執行模式: " + executorProperties.getExecutionMode());
        System.out.println("   詳細輸出: " + executorProperties.isVerboseOutput());

        return new TestCaseVerification(chatModel, executorConfig);
    }

    /**
     *  將現有的 KarateExecutorConfig 轉換為 KarateExecutor.ExecutorConfig
     * 這個方法用於與現有代碼的向後兼容
     */
    @Bean("legacyExecutorConfigConverter")
    public KarateExecutor.ExecutorConfig legacyExecutorConfigConverter(
            @Autowired(required = false) KarateExecutorConfig legacyConfig) {

        if (legacyConfig != null) {
            System.out.println(" 檢測到舊版 KarateExecutorConfig，正在轉換...");

            // 嘗試從舊版配置提取資訊（如果有 getter 方法的話）
            // 如果舊版配置沒有對應的 getter，使用預設值
            return KarateExecutor.ExecutorConfig.defaultConfig()
                    .timeoutSeconds(30)  // 從 legacyConfig 獲取，或使用預設值
                    .cleanupTempFiles(true)
                    .verboseOutput(false);
        } else {
            System.out.println(" 使用新版配置系統");
            return KarateExecutor.ExecutorConfig.defaultConfig();
        }
    }

    /**
     *  開發環境配置 Profile
     */
    @Bean("developmentExecutorConfig")
    @Profile("development")
    public KarateExecutor.ExecutorConfig developmentExecutorConfig() {
        return KarateExecutor.ExecutorConfig.defaultConfig()
                .timeoutSeconds(15)      // 開發環境較短的超時
                .verboseOutput(true)     // 開發階段需要詳細輸出
                .cleanupTempFiles(false) // 保留臨時檔案以便調試
                .executionMode(KarateExecutor.ExecutionMode.AUTO_DETECT);
    }

    /**
     *  生產環境配置 Profile
     */
    @Bean("productionExecutorConfig")
    @Profile("production")
    public KarateExecutor.ExecutorConfig productionExecutorConfig() {
        return KarateExecutor.ExecutorConfig.defaultConfig()
                .timeoutSeconds(60)      // 生產環境較長的超時
                .verboseOutput(false)    // 生產環境減少輸出
                .cleanupTempFiles(true)  // 清理臨時檔案
                .executionMode(KarateExecutor.ExecutionMode.AUTO_DETECT);
    }

    /**
     *  測試環境配置 Profile
     */
    @Bean("testingExecutorConfig")
    @Profile("test")
    public KarateExecutor.ExecutorConfig testingExecutorConfig() {
        return KarateExecutor.ExecutorConfig.quickCheck() // 使用快速檢查配置
                .verboseOutput(true)     // 測試階段需要詳細輸出
                .cleanupTempFiles(true); // 清理以避免測試間互相影響
    }

    /**
     *  配置資訊顯示（啟動時輸出）
     */
    @Bean
    public String displayConfigurationInfo(KarateExecutorProperties executorProperties,
                                           QualityAssuranceProperties qaProperties,
                                           TestCaseVerification verificationService) {

        StringBuilder info = new StringBuilder();
        info.append("\n").append("=".repeat(60)).append("\n");
        info.append(" TestCaseVerification 配置資訊\n");
        info.append("=".repeat(60)).append("\n");

        info.append(" 執行器配置:\n");
        info.append("   超時時間: ").append(executorProperties.getTimeoutSeconds()).append(" 秒\n");
        info.append("   清理臨時檔案: ").append(executorProperties.isCleanupTempFiles() ? "是" : "否").append("\n");
        info.append("   詳細輸出: ").append(executorProperties.isVerboseOutput() ? "是" : "否").append("\n");
        info.append("   Java 命令: ").append(executorProperties.getJavaCommand()).append("\n");
        info.append("   執行模式: ").append(executorProperties.getExecutionMode()).append("\n");

        info.append("\n 質量保證配置:\n");
        info.append("   最大迭代次數: ").append(qaProperties.getMaxIterations()).append("\n");
        info.append("   啟用執行驗證: ").append(qaProperties.isEnableExecutionValidation() ? "是" : "否").append("\n");
        info.append("   支援自定義 Prompt: ").append(qaProperties.isEnableCustomPrompt() ? "是" : "否").append("\n");

        info.append("\n 環境檢查:\n");
        info.append(verificationService.getExecutorEnvironmentInfo());

        info.append("=".repeat(60)).append("\n");

        System.out.println(info.toString());

        return "TestCaseVerification 配置已載入";
    }
}