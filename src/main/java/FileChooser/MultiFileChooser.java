package FileChooser;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * 多檔案選擇器工具類
 * 提供圖形化界面選擇多個檔案的功能
 */
public class MultiFileChooser {

    /**
     * 檔案資料類別
     */
    public static class FileData {
        private final String filePath;
        private final String fileName;
        private final String content;

        public FileData(String filePath, String content) {
            this.filePath = filePath;
            this.fileName = Paths.get(filePath).getFileName().toString();
            this.content = content;
        }

        public String getFilePath() { return filePath; }
        public String getFileName() { return fileName; }
        public String getContent() { return content; }

        @Override
        public String toString() {
            return "FileData{fileName='" + fileName + "', contentLength=" + content.length() + "}";
        }
    }

    /**
     * 顯示多檔案選擇器
     * @param title 對話框標題
     * @param allowedExtensions 允許的副檔名陣列，例如: {"json", "yaml", "yml"}，若為 null 則選擇所有檔案
     * @return 選擇的檔案路徑列表，如果取消選擇則返回空列表
     */
    public static List<String> selectMultipleFiles(String title, String[] allowedExtensions) {
        //return selectMultipleFiles(title, allowedExtensions, System.getProperty("user.dir"));
        return selectMultipleFiles(title, allowedExtensions, "C:/Users/soselab707/Desktop/實驗Data/swagger");
    }

    /**
     * 顯示多檔案選擇器 (完整版)
     * @param title 對話框標題
     * @param allowedExtensions 允許的副檔名陣列，若為 null 則選擇所有檔案
     * @param defaultDirectory 預設目錄
     * @return 選擇的檔案路徑列表，如果取消選擇則返回空列表
     */
    public static List<String> selectMultipleFiles(String title, String[] allowedExtensions, String defaultDirectory) {
        try {
            // 設定系統外觀
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            // 如果設定失敗，使用預設外觀
            System.out.println("警告：無法設定系統外觀，使用預設外觀");
        }

        JFileChooser fileChooser = new JFileChooser();

        // 設定基本屬性
        fileChooser.setDialogTitle(title);
        fileChooser.setMultiSelectionEnabled(true);
        fileChooser.setCurrentDirectory(new File(defaultDirectory));

        // 設定文件過濾器
        if (allowedExtensions != null && allowedExtensions.length > 0) {
            setupFileFilters(fileChooser, allowedExtensions);
        } else {
            // 預設顯示所有檔案
            fileChooser.setAcceptAllFileFilterUsed(true);
        }

        // 顯示文件選擇對話框
        int result = fileChooser.showOpenDialog(null);

        if (result == JFileChooser.APPROVE_OPTION) {
            File[] selectedFiles = fileChooser.getSelectedFiles();
            List<String> filePaths = new ArrayList<>();

            System.out.println("已選擇 " + selectedFiles.length + " 個文件：");
            for (File file : selectedFiles) {
                String filePath = file.getAbsolutePath();
                filePaths.add(filePath);
                System.out.println("  - " + filePath);
            }

            return filePaths;
        } else {
            System.out.println("使用者取消選擇文件。");
            return new ArrayList<>(); // 返回空列表而不是 null
        }
    }

    /**
     * 快速選擇 Swagger 檔案 (預設支援 json, yaml, yml)
     * @return 選擇的檔案路徑列表
     */
    public static List<String> selectSwaggerFiles() {
        return selectMultipleFiles(
                "選擇 Swagger 文件 (可選擇多個)",
                new String[]{"json", "yaml", "yml"}
        );
    }

    /**
     * 快速選擇需求檔案 (支援所有檔案類型)
     * @return 選擇的檔案路徑列表
     */
    public static List<String> selectRequirementFiles() {
        return selectMultipleFiles(
                "選擇前端程式碼檔案 (可選擇多個，支援所有格式)",
                null  // null 表示選擇所有檔案類型
        );
    }

    /**
     * 讀取多個檔案內容
     * @param filePaths 檔案路徑列表
     * @return FileData 物件列表
     */
    public static List<FileData> readMultipleFiles(List<String> filePaths) {
        List<FileData> fileDataList = new ArrayList<>();

        for (String filePath : filePaths) {
            try {
                String content = readFileContent(filePath);
                if (content != null) {
                    fileDataList.add(new FileData(filePath, content));
                } else {
                    System.out.println("跳過文件：" + filePath + " (讀取失敗)");
                }
            } catch (Exception e) {
                System.out.println("讀取文件時發生錯誤：" + filePath + " - " + e.getMessage());
            }
        }

        return fileDataList;
    }

    /**
     * 一鍵選擇並讀取多個檔案
     * @param title 對話框標題
     * @param allowedExtensions 允許的副檔名，若為 null 則選擇所有檔案
     * @return FileData 物件列表
     */
    public static List<FileData> selectAndReadFiles(String title, String[] allowedExtensions) {
        List<String> filePaths = selectMultipleFiles(title, allowedExtensions);
        if (filePaths.isEmpty()) {
            return new ArrayList<>();
        }
        return readMultipleFiles(filePaths);
    }

    /**
     * 一鍵選擇並讀取 Swagger 檔案
     * @return FileData 物件列表
     */
    public static List<FileData> selectAndReadSwaggerFiles() {
        return selectAndReadFiles(
                "選擇 Swagger 文件 (可選擇多個)",
                new String[]{"json", "yaml", "yml"}
        );
    }

    /**
     * 一鍵選擇並讀取需求檔案 (支援所有檔案類型)
     * @return FileData 物件列表
     */
    public static List<FileData> selectAndReadRequirementFiles() {
        return selectAndReadFiles(
                "選擇前端程式碼檔案 (可選擇多個，支援所有格式)",
                null  // null 表示選擇所有檔案類型
        );
    }

    // === 私有輔助方法 ===

    /**
     * 設定文件過濾器
     */
    private static void setupFileFilters(JFileChooser fileChooser, String[] extensions) {
        // 創建描述字符串
        String extensionList = String.join(", *.", extensions);
        String description = String.format("支援的文件 (*.%s)", extensionList);

        // 創建並添加過濾器
        FileNameExtensionFilter allFilter = new FileNameExtensionFilter(description, extensions);
        fileChooser.addChoosableFileFilter(allFilter);
        fileChooser.setFileFilter(allFilter);

        // 為每種類型創建單獨的過濾器
        for (String ext : extensions) {
            String singleDesc = ext.toUpperCase() + " 文件 (*." + ext + ")";
            FileNameExtensionFilter singleFilter = new FileNameExtensionFilter(singleDesc, ext);
            fileChooser.addChoosableFileFilter(singleFilter);
        }
    }

    /**
     * 讀取檔案內容
     */
    private static String readFileContent(String filePath) {
        try {
            Path path = Paths.get(filePath);
            if (Files.exists(path)) {
                return Files.readString(path);
            } else {
                System.out.println("檔案未找到：" + filePath);
                return null;
            }
        } catch (IOException e) {
            System.out.println("讀取檔案時發生錯誤：" + filePath + " - " + e.getMessage());
            return null;
        }
    }
}