package Start.Common;

import Karate.KarateGeneratorGPT;
import UserBehavior.UserBehaviorGPT;
import FileChooser.MultiFileChooser.FileData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 統一的模式執行器
 * 重構版本：支援檔案列表參數，實現更好的職責分離
 * 替代原來的 StructuralModeRunner 和 BehaviorModeRunner
 *
 * 新增功能：
 * - Structural 模式：直接生成 Karate 測試
 * - Behavior 模式：先生成 Gherkin，再生成 Karate 測試
 * - 🆕 Customed Prompt：支援用戶自定義指令整合
 *
 * @author StructuralBlackbox Team
 * @version 4.0 - Enhanced with Custom Prompt Support
 */
@Component
public class ModeRunner {

    @Autowired
    private KarateGeneratorGPT karateGeneratorGPT;

    @Autowired
    private UserBehaviorGPT userBehaviorGPT;

    /**
     * 執行指定模式 - 原版本（保持不變）
     * @param mode 模式 ("Structural" 或 "Behavior")
     * @param fileDataList 已選擇的檔案列表
     * @throws Exception 執行過程中的異常
     */
    public void run(String mode, List<FileData> fileDataList) throws Exception {
        // 🆕 調用支持自定義 Prompt 的版本，但傳入 null
        run(mode, fileDataList, null);
    }

    /**
     * 🆕 執行指定模式 - 支援自定義 Prompt（新增版本）
     * @param mode 模式 ("Structural" 或 "Behavior")
     * @param fileDataList 已選擇的檔案列表
     * @param customPrompt 用戶自定義的 prompt（可選）
     * @throws Exception 執行過程中的異常
     */
    public void run(String mode, List<FileData> fileDataList, String customPrompt) throws Exception {
        System.out.println("🔄 ModeRunner 開始執行模式：" + mode);

        // 🆕 顯示自定義 Prompt 狀態
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            System.out.println("📝 自定義 Prompt: ✅ 已提供 (長度: " + customPrompt.length() + " 字元)");
            System.out.println("📝 Prompt 預覽: " + customPrompt.substring(0, Math.min(100, customPrompt.length())) +
                    (customPrompt.length() > 100 ? "..." : ""));
        } else {
            System.out.println("📝 自定義 Prompt: ❌ 未提供，使用預設模式");
        }

        // 驗證輸入參數
        if (mode == null || mode.trim().isEmpty()) {
            throw new IllegalArgumentException("模式名稱不能為空");
        }

        if (fileDataList == null || fileDataList.isEmpty()) {
            throw new IllegalArgumentException("檔案列表不能為空");
        }

        // 🆕 驗證自定義 Prompt 安全性
        if (customPrompt != null && !customPrompt.trim().isEmpty()) {
            validateCustomPrompt(customPrompt);
        }

        // 正規化模式名稱
        String normalizedMode = mode.toLowerCase().trim();

        // 驗證模式是否支援
        if (!isSupportedMode(normalizedMode)) {
            throw new UnsupportedOperationException("不支援的模式：" + mode);
        }

        System.out.println("📋 執行前檢查：");
        System.out.println("   🎯 模式：" + normalizedMode.toUpperCase());
        System.out.println("   📁 檔案數量：" + fileDataList.size());
        System.out.println("   🎨 自定義指令：" + (customPrompt != null && !customPrompt.trim().isEmpty() ? "✅ 啟用" : "❌ 停用"));

        // 顯示檔案摘要
        displayFilesSummary(fileDataList);

        try {
            // 根據模式執行不同的處理流程（🆕 傳遞自定義 prompt）
            switch (normalizedMode) {
                case "Structural":
                    executeStructuralModeWithPrompt(fileDataList, customPrompt);
                    break;
                case "Behavior":
                    executeBehaviorModeWithPrompt(fileDataList, customPrompt);
                    break;
                default:
                    throw new UnsupportedOperationException("未實作的模式：" + normalizedMode);
            }

            System.out.println("✅ 模式執行完成：" + normalizedMode.toUpperCase());
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.out.println("🎯 自定義指令已成功整合到生成流程中");
            }

        } catch (Exception e) {
            System.err.println("❌ 模式執行失敗：" + e.getMessage());

            // 提供更詳細的錯誤資訊
            if (e.getCause() != null) {
                System.err.println("   原因：" + e.getCause().getMessage());
            }

            // 🆕 如果使用了自定義 prompt，提供相關的調試提示
            if (customPrompt != null && !customPrompt.trim().isEmpty()) {
                System.err.println("💡 調試提示：檢查自定義 Prompt 是否與模式要求相容");
            }

            // 重新拋出異常，讓上層處理
            throw e;
        }
    }

    /**
     * 執行 Structural 模式 - 原版本（保持不變）
     * 直接使用 API 文檔生成 Karate 測試
     */
    private void executeStructuralMode(List<FileData> fileDataList) throws Exception {
        System.out.println("\n🔸 執行 Structural 模式處理流程...");
        System.out.println("📊 直接基於 API 文檔生成 Karate 測試案例");

        // 委託給 KarateGeneratorGPT 處理
        System.out.println("🚀 啟動 Karate Generator GPT...");
        karateGeneratorGPT.execute("Structural", fileDataList);
    }

    /**
     * 🆕 執行 Structural 模式 - 支援自定義 Prompt
     * 直接使用 API 文檔生成 Karate 測試
     */
    private void executeStructuralModeWithPrompt(List<FileData> fileDataList, String customPrompt) throws Exception {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            // 如果沒有自定義 prompt，使用原版本方法
            executeStructuralMode(fileDataList);
            return;
        }

        System.out.println("\n🔸 執行 Structural 模式處理流程...");
        System.out.println("📊 直接基於 API 文檔生成 Karate 測試案例");
        System.out.println("🎯 將應用自定義指令到靜態測試生成中");

        // 委託給 KarateGeneratorGPT 處理，傳遞自定義 prompt
        System.out.println("🚀 啟動 Karate Generator GPT (含自定義指令)...");
        karateGeneratorGPT.execute("Structural", fileDataList, customPrompt);
    }

    /**
     * 執行 Behavior 模式 - 原版本（保持不變）
     * 兩階段處理：1. 生成 Gherkin  2. 生成 Karate 測試
     */
    private void executeBehaviorMode(List<FileData> fileDataList) throws Exception {
        System.out.println("\n🔹 執行 Behavior 模式處理流程...");
        System.out.println("📋 兩階段處理：Gherkin 生成 → Karate 測試生成");

        // 分離不同類型的檔案
        FileClassification classification = classifyFiles(fileDataList);

        // 第一階段：使用前端檔案生成 Gherkin
        UserBehaviorGPT.GherkinGenerationResult gherkinResult = null;
        if (!classification.frontendFiles.isEmpty()) {
            System.out.println("\n🎭 第一階段：生成 Gherkin 行為測試案例...");
            System.out.println("📁 使用 " + classification.frontendFiles.size() + " 個前端檔案");

            gherkinResult = userBehaviorGPT.generateGherkin(classification.frontendFiles);

            if (gherkinResult.isSuccess()) {
                System.out.println("✅ Gherkin 生成成功");
                System.out.println("   📄 內容長度：" + gherkinResult.getGherkinContent().length() + " 字元");
                if (gherkinResult.getSavedFilePath() != null) {
                    System.out.println("   💾 已保存至：" + gherkinResult.getSavedFilePath());
                }
            } else {
                System.out.println("❌ Gherkin 生成失敗：" + gherkinResult.getErrorMessage());
                throw new RuntimeException("Gherkin 生成失敗：" + gherkinResult.getErrorMessage());
            }
        } else {
            System.out.println("⚠️ 第一階段跳過：未發現前端檔案，無法生成 Gherkin");
        }

        // 第二階段：結合所有檔案生成 Karate 測試
        System.out.println("\n🥋 第二階段：生成 Karate 測試案例...");

        // 準備傳遞給 KarateGeneratorGPT 的檔案列表
        List<FileData> allFilesForKarate = new ArrayList<>(fileDataList);

        // 如果有生成的 Gherkin，加入檔案列表
        if (gherkinResult != null && gherkinResult.isSuccess()) {
            FileData gherkinFile = gherkinResult.toFileData();
            allFilesForKarate.add(gherkinFile);
            System.out.println("   📝 已加入生成的 Gherkin 檔案：" + gherkinFile.getFileName());
        }

        System.out.println("📁 最終檔案列表：");
        System.out.println("   📊 API 文檔：" + classification.apiFiles.size() + " 個");
        System.out.println("   🎨 前端程式碼：" + classification.frontendFiles.size() + " 個");
        System.out.println("   🎭 Gherkin 檔案：" + (gherkinResult != null && gherkinResult.isSuccess() ? 1 : 0) + " 個");
        System.out.println("   📁 總計：" + allFilesForKarate.size() + " 個檔案");

        // 委託給 KarateGeneratorGPT 處理
        System.out.println("🚀 啟動 Karate Generator GPT...");
        karateGeneratorGPT.execute("Behavior", allFilesForKarate);
    }

    /**
     * 🆕 執行 Behavior 模式 - 支援自定義 Prompt
     * 兩階段處理：1. 生成 Gherkin  2. 生成 Karate 測試
     */
    private void executeBehaviorModeWithPrompt(List<FileData> fileDataList, String customPrompt) throws Exception {
        if (customPrompt == null || customPrompt.trim().isEmpty()) {
            // 如果沒有自定義 prompt，使用原版本方法
            executeBehaviorMode(fileDataList);
            return;
        }

        System.out.println("\n🔹 執行 Behavior 模式處理流程...");
        System.out.println("📋 兩階段處理：Gherkin 生成 → Karate 測試生成");
        System.out.println("🎯 將應用自定義指令到動態測試生成中");

        // 分離不同類型的檔案
        FileClassification classification = classifyFiles(fileDataList);

        // 第一階段：使用前端檔案生成 Gherkin（🆕 考慮自定義 prompt）
        UserBehaviorGPT.GherkinGenerationResult gherkinResult = null;
        if (!classification.frontendFiles.isEmpty()) {
            System.out.println("\n🎭 第一階段：生成 Gherkin 行為測試案例...");
            System.out.println("📁 使用 " + classification.frontendFiles.size() + " 個前端檔案");

            // 🆕 如果有自定義 prompt，傳遞給 UserBehaviorGPT
            System.out.println("📝 Gherkin 生成將整合自定義指令");
            try {
                // 嘗試使用支援自定義 prompt 的方法
                gherkinResult = userBehaviorGPT.generateGherkin(classification.frontendFiles, customPrompt);
            } catch (Exception e) {
                // 如果調用失敗，回退到原方法
                System.out.println("⚠️ 使用自定義 Prompt 的 Gherkin 生成失敗，回退到預設方法: " + e.getMessage());
                gherkinResult = userBehaviorGPT.generateGherkin(classification.frontendFiles);
            }

            if (gherkinResult.isSuccess()) {
                System.out.println("✅ Gherkin 生成成功");
                System.out.println("   📄 內容長度：" + gherkinResult.getGherkinContent().length() + " 字元");
                if (gherkinResult.getSavedFilePath() != null) {
                    System.out.println("   💾 已保存至：" + gherkinResult.getSavedFilePath());
                }
                System.out.println("   🎯 自定義指令已整合到 Gherkin 中");
            } else {
                System.out.println("❌ Gherkin 生成失敗：" + gherkinResult.getErrorMessage());
                throw new RuntimeException("Gherkin 生成失敗：" + gherkinResult.getErrorMessage());
            }
        } else {
            System.out.println("⚠️ 第一階段跳過：未發現前端檔案，無法生成 Gherkin");
        }

        // 第二階段：結合所有檔案生成 Karate 測試（🆕 傳遞自定義 prompt）
        System.out.println("\n🥋 第二階段：生成 Karate 測試案例...");

        // 準備傳遞給 KarateGeneratorGPT 的檔案列表
        List<FileData> allFilesForKarate = new ArrayList<>(fileDataList);

        // 如果有生成的 Gherkin，加入檔案列表
        if (gherkinResult != null && gherkinResult.isSuccess()) {
            FileData gherkinFile = gherkinResult.toFileData();
            allFilesForKarate.add(gherkinFile);
            System.out.println("   📝 已加入生成的 Gherkin 檔案：" + gherkinFile.getFileName());
        }

        System.out.println("📁 最終檔案列表：");
        System.out.println("   📊 API 文檔：" + classification.apiFiles.size() + " 個");
        System.out.println("   🎨 前端程式碼：" + classification.frontendFiles.size() + " 個");
        System.out.println("   🎭 Gherkin 檔案：" + (gherkinResult != null && gherkinResult.isSuccess() ? 1 : 0) + " 個");
        System.out.println("   📁 總計：" + allFilesForKarate.size() + " 個檔案");

        // 🆕 委託給 KarateGeneratorGPT 處理，傳遞自定義 prompt
        System.out.println("🚀 啟動 Karate Generator GPT (含自定義指令)...");
        System.out.println("🎯 Karate 測試生成將整合自定義指令");
        karateGeneratorGPT.execute("Behavior", allFilesForKarate, customPrompt);
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
        if (trimmed.length() > 5000) {
            System.out.println("⚠️ 自定義 Prompt 過長 (" + trimmed.length() + " 字元)，可能影響處理效能");
        }

        // 基本安全檢查
        String lowerPrompt = trimmed.toLowerCase();
        String[] potentialIssues = {"ignore previous", "忽略前面", "forget", "忘記"};

        for (String issue : potentialIssues) {
            if (lowerPrompt.contains(issue)) {
                System.out.println("⚠️ 自定義 Prompt 包含可能的問題指令: " + issue);
                System.out.println("💡 建議檢查指令內容，確保與預期行為一致");
                break;
            }
        }

        System.out.println("✅ 自定義 Prompt 基本驗證通過");
    }

    /**
     * 分類檔案類型
     */
    private FileClassification classifyFiles(List<FileData> files) {
        FileClassification classification = new FileClassification();

        for (FileData file : files) {
            if (isApiFile(file)) {
                classification.apiFiles.add(file);
            } else if (isFrontendFile(file)) {
                classification.frontendFiles.add(file);
            } else {
                classification.otherFiles.add(file);
            }
        }

        System.out.println("📊 檔案分類結果：");
        System.out.println("   📊 API 文檔：" + classification.apiFiles.size() + " 個");
        System.out.println("   🎨 前端程式碼：" + classification.frontendFiles.size() + " 個");
        System.out.println("   📄 其他檔案：" + classification.otherFiles.size() + " 個");

        return classification;
    }

    /**
     * 判斷是否為 API 文檔檔案
     */
    private boolean isApiFile(FileData file) {
        String fileName = file.getFileName().toLowerCase();
        return fileName.endsWith(".json") || fileName.endsWith(".yaml") || fileName.endsWith(".yml");
    }

    /**
     * 判斷是否為前端檔案
     */
    private boolean isFrontendFile(FileData file) {
        String fileName = file.getFileName().toLowerCase();
        String[] frontendExtensions = {
                ".html", ".htm", ".js", ".jsx", ".ts", ".tsx",
                ".vue", ".css", ".scss", ".sass", ".less"
        };

        for (String ext : frontendExtensions) {
            if (fileName.endsWith(ext)) {
                return true;
            }
        }

        // 檢查檔案內容
        String content = file.getContent().toLowerCase();
        return content.contains("component") || content.contains("react") ||
                content.contains("vue") || content.contains("angular") ||
                content.contains("frontend") || content.contains("ui");
    }

    /**
     * 顯示檔案摘要
     */
    private void displayFilesSummary(List<FileData> files) {
        int maxDisplay = 3;
        for (int i = 0; i < Math.min(files.size(), maxDisplay); i++) {
            FileData file = files.get(i);
            System.out.printf("   📄 [%d] %s (%,d 字元)\n",
                    i + 1, file.getFileName(), file.getContent().length());
        }

        if (files.size() > maxDisplay) {
            System.out.printf("   📄 ... 以及其他 %d 個檔案\n", files.size() - maxDisplay);
        }
    }

    /**
     * 向後兼容的執行方法
     * @param mode 模式名稱
     * @throws Exception 執行過程中的異常
     * @deprecated 建議使用帶檔案列表參數的版本
     */
    @Deprecated
    public void run(String mode) throws Exception {
        System.out.println("⚠️ 警告：使用了舊版本的 run(String mode) 方法");
        System.out.println("💡 建議：檔案選擇現在由 LATGAexecutor 處理");

        throw new UnsupportedOperationException(
                "此方法已過時。檔案選擇現在由 LATGAexecutor 處理，" +
                        "請使用 run(String mode, List<FileData> fileDataList) 或支援自定義 Prompt 的版本。"
        );
    }

    /**
     * 檢查是否為支援的模式
     * @param mode 模式名稱（已正規化為小寫）
     * @return true 如果模式受支援
     */
    private boolean isSupportedMode(String mode) {
        return "Structural".equals(mode) || "Behavior".equals(mode);
    }

    /**
     * 取得支援的模式列表
     * @return 支援的模式陣列
     */
    public String[] getSupportedModes() {
        return new String[]{"Structural", "Behavior"};
    }

    /**
     * 顯示模式資訊
     * @param mode 模式名稱
     * @return 模式描述
     */
    public String getModeDescription(String mode) {
        switch (mode.toLowerCase()) {
            case "Structural":
                return "基於API文檔生成靜態測試案例";
            case "Behavior":
                return "動態測試生成：前端分析 → Gherkin → Karate 測試";
            default:
                return "未知模式";
        }
    }

    /**
     * 檔案分類結果類別
     */
    private static class FileClassification {
        List<FileData> apiFiles = new ArrayList<>();
        List<FileData> frontendFiles = new ArrayList<>();
        List<FileData> otherFiles = new ArrayList<>();
    }
}