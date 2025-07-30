package Start;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.WebApplicationType;
import org.springframework.context.annotation.ComponentScan;

/**
 * Karate測試生成工具主程式 - Web 版本
 * 支援 Structural、Behavior、EditorGPT 和 Karate-Merger 四種模式，提供 Web API 介面
 *
 * Web 版本特點：
 * - 提供 REST API 接口
 * - 支援檔案上傳
 * - 支援多種檔案格式
 * - 自動打包結果為 ZIP
 * -  整合 EditorGPT AI 增強功能
 * -  整合 KarateMerger 智能合併功能
 *
 * @author StructuralBlackbox Team
 * @version 4.1 - Web Edition (整合 KarateMerger)
 */
@SpringBootApplication
@ComponentScan(basePackages = {
        "Start",
        "Karate",          //  掃描 Karate 包（包含 KarateMerger 和相關工具）
        "UserBehavior",
        "FileChooser",
        "SwaggerEditor"    // EditorGPT 包掃描
})
public class LATGAexecutor {

    public static void main(String[] args) {
        System.out.println(" 正在啟動 LATGA Web 伺服器...");

        // 設定 Web 應用配置
        configureWebEnvironment();

        // 啟動 Spring Boot Web 應用
        SpringApplicationBuilder builder = new SpringApplicationBuilder(LATGAexecutor.class);
        builder.web(WebApplicationType.SERVLET)  // 設為 Web 應用
                .bannerMode(org.springframework.boot.Banner.Mode.OFF)
                .run(args);

        System.out.println(" LATGA Web 伺服器啟動完成！");
        System.out.println(" 訪問網址：http://localhost:8080");
        System.out.println(" API 文檔：http://localhost:8080/api-docs");

        displayWebWelcomeMessage();
    }

    /**
     * 配置 Web 環境
     */
    private static void configureWebEnvironment() {
        try {
            System.out.println(" 正在配置 Web 環境...");

            // 設定系統屬性
            System.setProperty("server.port", "8080");
            System.setProperty("spring.servlet.multipart.max-file-size", "50MB");
            System.setProperty("spring.servlet.multipart.max-request-size", "50MB");

            // 設定 macOS 特殊屬性（如果在 macOS 上運行）
            String osName = System.getProperty("os.name").toLowerCase();
            if (osName.contains("mac")) {
                System.setProperty("apple.awt.UIElement", "true");  // Web 模式下隱藏 Dock 圖示
            }

            System.out.println(" Web 環境配置完成");

        } catch (Exception e) {
            System.err.println(" Web 環境配置警告：" + e.getMessage());
        }
    }

    /**
     * 顯示 Web 模式歡迎訊息
     */
    private static void displayWebWelcomeMessage() {
        System.out.println("\n" + "=".repeat(80));
        System.out.println(" LATGA 測試生成工具 v4.1 - Web Edition (整合 KarateMerger)");
        System.out.println("=".repeat(80));
        System.out.println();
        System.out.println(" Web 服務已啟動，支援以下功能：");
        System.out.println("    檔案上傳 (支援多檔案)");
        System.out.println("    Structural 模式      - 基於 API 文檔生成靜態測試案例");
        System.out.println("    Behavior 模式     - 動態測試生成和執行，包含前端和用戶行為分析");
        System.out.println("    EditorGPT 模式   - AI 智能分析和增強 Swagger 文檔");
        System.out.println("    Karate-Merger 模式 - 智能合併多個 Karate 測試檔案");
        System.out.println("    自動打包結果為 ZIP 檔案");
        System.out.println();
        System.out.println(" 主要端點：");
        System.out.println("   POST /api/latga/run              - 統一執行測試生成");
        System.out.println("   POST /api/latga/merge-karate     -  Karate 檔案合併");
        System.out.println("   GET  /api/latga/merge-status     -  合併服務狀態");
        System.out.println("   GET  /api/latga/modes            - 獲取支援的模式");
        System.out.println("   GET  /api/latga/health           - 健康檢查");
        System.out.println();
        System.out.println(" Karate 合併專用 API：");
        System.out.println("   POST /api/karate/merger/merge           - 完整合併 API");
        System.out.println("   POST /api/karate/merger/merge/upload    - 檔案上傳合併");
        System.out.println("   POST /api/karate/merger/quick-merge     - 快速合併");
        System.out.println("   GET  /api/karate/merger/status          - 合併器狀態");
        System.out.println("   GET  /api/karate/merger/config-options  - 配置選項");
        System.out.println();
        System.out.println(" EditorGPT 調試端點：");
        System.out.println("   GET  /debug/config               - EditorGPT 配置檢查");
        System.out.println("   GET  /debug/test-api             - OpenAI API 測試");
        System.out.println();
        System.out.println(" 支援檔案格式：");
        System.out.println("    Structural 模式：JSON, YAML, YML (Swagger/OpenAPI)");
        System.out.println("    Behavior 模式：所有檔案格式 (JS, HTML, CSS, MD, TXT 等)");
        System.out.println("    EditorGPT 模式：JSON, YAML, YML (Swagger/OpenAPI)");
        System.out.println("    Karate-Merger 模式：FEATURE (Karate 測試檔案)");
        System.out.println();
        System.out.println(" 使用方式：");
        System.out.println("   1. 開啟瀏覽器訪問 http://localhost:8080");
        System.out.println("   2. 選擇檔案和執行模式");
        System.out.println("   3. 點擊執行生成");
        System.out.println("   4. 下載結果檔案");
        System.out.println();
        System.out.println(" 專用工具頁面：");
        System.out.println("    主頁面：http://localhost:8080/");
        System.out.println("    EditorGPT：http://localhost:8080/editorgpt");
        System.out.println("    Karate 合併：http://localhost:8080/karate-merger");
        System.out.println("    使用說明：http://localhost:8080/help");
        System.out.println("    API 文檔：http://localhost:8080/api-docs");
        System.out.println();
        System.out.println(" EditorGPT 配置：");
        System.out.println("    需要設置 OPENAI_API_KEY 環境變數");
        System.out.println("    訪問 /debug/config 檢查配置狀態");
        System.out.println("    輸出目錄：output/swagger");
        System.out.println();
        System.out.println(" Karate 合併配置：");
        System.out.println("    支援多個 .feature 檔案智能合併");
        System.out.println("    自動重新編號和命名策略");
        System.out.println("    內建語法驗證和質量保證");
        System.out.println("    輸出目錄：output/merge");
        System.out.println();
        System.out.println(" Prompt 檔案位置：prompts/ 目錄");
        System.out.println(" 可自行修改 prompt 檔案來調整 AI 行為");
        System.out.println();
        System.out.println(" 新功能亮點：");
        System.out.println("   • 四種模式統一整合在單一界面");
        System.out.println("   • 智能檔案格式檢測和驗證");
        System.out.println("   • 完整的 REST API 支援");
        System.out.println("   • 實時進度顯示和狀態更新");
        System.out.println("   • 自動下載和檔案管理");
        System.out.println("   • 全面的錯誤處理和提示");
        System.out.println("=".repeat(80));
        System.out.println();
        System.out.println(" 快速開始：");
        System.out.println("   1. 測試系統狀態：curl http://localhost:8080/status");
        System.out.println("   2. 檢查支援模式：curl http://localhost:8080/api/latga/modes");
        System.out.println("   3. 測試合併功能：curl http://localhost:8080/api/latga/merge-status");
        System.out.println();
        System.out.println(" 提示：如果您是第一次使用，建議先訪問 /help 查看詳細使用說明");
        System.out.println("=".repeat(80));
    }
}