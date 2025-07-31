package Start.Common;

import org.springframework.stereotype.Component;
import java.util.Scanner;

/**
 * 模式選擇器 - 改進版本
 * 負責處理用戶的模式選擇和繼續確認
 *
 * 改進內容：
 * - 更清楚的檔案類型說明
 * - 改進的使用者體驗
 * - 更好的錯誤處理
 *
 * @author structuralBlackbox Team
 * @version 3.1
 */
@Component
public class ModeSelector {

    private final Scanner scanner = new Scanner(System.in);

    /**
     * 讓用戶選擇執行模式
     * @return 選擇的模式 ("structural", "dynamic", "exit")
     */
    public String selectMode() {
        while (true) {
            displayModeOptions();
            System.out.print(" 請輸入選項 (1/2/3 或 structural/dynamic/exit): ");

            String input = scanner.nextLine().trim().toLowerCase();

            switch (input) {
                case "1":
                case "structural":
                    System.out.println(" 已選擇：structural 模式");
                    displayModeDetails("structural");
                    return "structural";

                case "2":
                case "dynamic":
                    System.out.println(" 已選擇：Dynamic 模式");
                    displayModeDetails("dynamic");
                    return "dynamic";

                case "3":
                case "exit":
                case "quit":
                case "bye":
                    System.out.println(" 已選擇：退出程式");
                    return "exit";

                case "help":
                case "h":
                case "?":
                    displayDetailedHelp();
                    continue;

                default:
                    System.out.println(" 無效的選項：" + input);
                    System.out.println(" 請輸入 1、2、3 或對應的模式名稱");
                    System.out.println("   輸入 'help' 查看詳細說明");
                    continue;
            }
        }
    }

    /**
     * 顯示模式選項
     */
    private void displayModeOptions() {
        System.out.println("\n 請選擇執行模式：");
        System.out.println("    structural 模式  - 基於API文檔生成靜態測試案例");
        System.out.println("    Dynamic 模式 - 動態測試生成和執行，包含前端和用戶行為分析");
        System.out.println("    退出程式");
        System.out.println();
        System.out.println(" 模式差異：");
        System.out.println("   • structural：適用於 API 文檔檔案 (JSON/YAML)，使用 structural_prompt.txt");
        System.out.println("   • Dynamic：適用於前端程式碼和行為分析檔案 (所有格式)，使用 dynamic_prompt.txt");
        System.out.println("   • 輸入 'help' 查看詳細說明");
        System.out.println();
    }

    /**
     * 顯示選擇模式的詳細資訊
     * @param mode 選擇的模式
     */
    private void displayModeDetails(String mode) {
        System.out.println("ℹ " + mode.toUpperCase() + " 模式資訊：");

        switch (mode.toLowerCase()) {
            case "structural":
                System.out.println("   📄 支援檔案：Swagger/OpenAPI 文檔 (.json, .yaml, .yml)");
                System.out.println("   🎯 用途：生成基於 API 規格的測試案例");
                System.out.println("   📝 Prompt：使用 prompts/structural_prompt.txt");
                System.out.println("   🔧 特點：靜態分析，基於 API 端點生成測試");
                break;

            case "dynamic":
                System.out.println("   📄 支援檔案：前端程式碼、需求文件 (所有格式)");
                System.out.println("   🎯 用途：基於用戶行為和前端互動生成動態測試");
                System.out.println("   📝 Prompt：使用 prompts/dynamic_prompt.txt");
                System.out.println("   🔧 特點：動態分析，包含用戶互動流程");
                break;
        }
        System.out.println("   ⏳ 接下來將開啟檔案選擇器...");
    }

    /**
     * 顯示詳細說明
     */
    private void displayDetailedHelp() {
        System.out.println("\n" + "=".repeat(60));
        System.out.println("📖 詳細模式說明");
        System.out.println("=".repeat(60));

        System.out.println("\n🔸 structural 模式：");
        System.out.println("   目的：基於 API 文檔生成靜態測試案例");
        System.out.println("   輸入：Swagger/OpenAPI 規格檔案");
        System.out.println("   格式：JSON (.json), YAML (.yaml, .yml)");
        System.out.println("   輸出：Karate 測試檔案，涵蓋所有 API 端點");
        System.out.println("   適用：後端 API 測試、回歸測試、合約測試");

        System.out.println("\n🔹 Dynamic 模式：");
        System.out.println("   目的：基於前端行為生成動態測試案例");
        System.out.println("   輸入：前端程式碼、用戶流程文件、行為描述");
        System.out.println("   格式：所有檔案類型 (.js, .html, .css, .md, .txt 等)");
        System.out.println("   輸出：Karate 測試檔案，模擬用戶互動流程");
        System.out.println("   適用：端到端測試、用戶流程測試、整合測試");

        System.out.println("=".repeat(60));
    }

    /**
     * 詢問用戶是否繼續使用程式
     * @return true 如果用戶選擇繼續，false 如果選擇退出
     */
    public boolean askContinue() {
        System.out.println("\n" + "=".repeat(50));
        System.out.println("🔄 是否要繼續使用其他模式？");
        System.out.print("👤 請選擇 (y/yes 繼續, n/no 退出): ");

        String input = scanner.nextLine().trim().toLowerCase();

        switch (input) {
            case "y":
            case "yes":
            case "是":
            case "繼續":
            case "continue":
                System.out.println("✅ 繼續使用程式");
                return true;

            case "n":
            case "no":
            case "否":
            case "退出":
            case "exit":
            case "quit":
                System.out.println("✅ 選擇退出程式");
                return false;

            default:
                System.out.println("⚠️ 無效的輸入，預設為繼續");
                System.out.println("💡 下次請輸入 y(繼續) 或 n(退出)");
                return true;
        }
    }

    /**
     * 確認退出程式
     * @return true 如果確認退出
     */
    public boolean confirmExit() {
        System.out.println("\n❓ 確定要退出 Karate 測試生成工具嗎？");
        System.out.print("👤 請確認 (y/yes 退出, n/no 返回): ");

        String input = scanner.nextLine().trim().toLowerCase();
        boolean shouldExit = "y".equals(input) || "yes".equals(input) || "是".equals(input);

        if (shouldExit) {
            System.out.println("👋 感謝使用 Karate 測試生成工具！");
        } else {
            System.out.println("🔄 返回模式選擇");
        }

        return shouldExit;
    }

    /**
     * 關閉 Scanner 資源
     */
    public void close() {
        if (scanner != null) {
            scanner.close();
        }
    }
}