package RandomChooser;

import FileChooser.MultiFileChooser;

import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.List;
import java.util.zip.*;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 隨機 RAR 文件選擇器 - 使用多檔案選擇器版本
 * 支援同時處理多個 RAR 檔案
 */
public class RandomRarExtractorFixedPath extends JFrame {
    private static final Logger logger = LoggerFactory.getLogger(RandomRarExtractorFixedPath.class);

    private JButton selectButton;
    private JTextArea logArea;
    private JCheckBox skipRootCheckbox;
    private JProgressBar progressBar;
    private JLabel statusLabel;

    // 優先使用 UnRAR.exe（命令行版本）而不是 WinRAR.exe（GUI版本）
    private static final String UNRAR_PATH = "C:\\Program Files\\WinRAR\\UnRAR.exe";
    private static final String WINRAR_PATH = "C:\\Program Files\\WinRAR\\WinRAR.exe";

    public RandomRarExtractorFixedPath() {
        setTitle("RAR 隨機檔案選擇器 (多檔案版)");
        setSize(750, 600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        initializeComponents();
        setupLayout();
        setupEventListeners();
    }

    private void initializeComponents() {
        // 控制面板元件
        selectButton = new JButton("選擇 RAR 檔案 (支援多選)");
        skipRootCheckbox = new JCheckBox("忽略第一層資料夾", true);

        // 進度條和狀態標籤
        progressBar = new JProgressBar(0, 100);
        progressBar.setStringPainted(true);
        progressBar.setString("待處理");
        statusLabel = new JLabel("準備就緒");

        // 日誌區域
        logArea = new JTextArea();
        logArea.setEditable(false);
        logArea.setFont(new Font(Font.MONOSPACED, Font.PLAIN, 12));
    }

    private void setupLayout() {
        setLayout(new BorderLayout());

        // 頂部控制面板
        JPanel topPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        topPanel.add(selectButton);
        topPanel.add(skipRootCheckbox);

        // 進度面板
        JPanel progressPanel = new JPanel(new BorderLayout());
        progressPanel.add(statusLabel, BorderLayout.WEST);
        progressPanel.add(progressBar, BorderLayout.CENTER);

        // 控制區域組合
        JPanel controlPanel = new JPanel(new BorderLayout());
        controlPanel.add(topPanel, BorderLayout.NORTH);
        controlPanel.add(progressPanel, BorderLayout.SOUTH);

        // 日誌區域
        JScrollPane scrollPane = new JScrollPane(logArea);
        scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);

        add(controlPanel, BorderLayout.NORTH);
        add(scrollPane, BorderLayout.CENTER);
    }

    private void setupEventListeners() {
        selectButton.addActionListener(e -> selectRarFiles());
    }

    private void selectRarFiles() {
        // 使用多檔案選擇器選擇 RAR 檔案
        List<String> selectedFiles = MultiFileChooser.selectMultipleFiles(
                "選擇 RAR 檔案 (可選擇多個)",
                new String[]{"rar"}
        );

        if (selectedFiles.isEmpty()) {
            appendLog("使用者取消選擇或未選擇任何檔案");
            return;
        }

        // 驗證選擇的檔案都是 RAR 格式
        List<File> validRarFiles = new ArrayList<>();
        for (String filePath : selectedFiles) {
            File file = new File(filePath);
            if (file.getName().toLowerCase().endsWith(".rar")) {
                validRarFiles.add(file);
            } else {
                appendLog("警告：跳過非 RAR 檔案 - " + file.getName());
            }
        }

        if (validRarFiles.isEmpty()) {
            JOptionPane.showMessageDialog(this,
                    "沒有選擇有效的 RAR 檔案！",
                    "錯誤",
                    JOptionPane.ERROR_MESSAGE);
            return;
        }

        appendLog("已選擇 " + validRarFiles.size() + " 個 RAR 檔案");
        for (File rarFile : validRarFiles) {
            appendLog("  - " + rarFile.getName());
        }

        // 在新執行緒中處理檔案，避免阻塞 UI
        new Thread(() -> processMultipleRarFiles(validRarFiles)).start();
    }

    private void processMultipleRarFiles(List<File> rarFiles) {
        SwingUtilities.invokeLater(() -> {
            selectButton.setEnabled(false);
            progressBar.setValue(0);
            progressBar.setString("處理中...");
            statusLabel.setText("正在處理 " + rarFiles.size() + " 個檔案");
        });

        try {
            int totalFiles = rarFiles.size();
            int processedFiles = 0;

            for (File rarFile : rarFiles) {
                appendLog("\n" + "=".repeat(50));
                appendLog("開始處理檔案: " + rarFile.getName());
                appendLog("=".repeat(50));

                try {
                    processRarFile(rarFile);
                    processedFiles++;

                    int progress = (int) ((double) processedFiles / totalFiles * 100);
                    int finalProcessedFiles1 = processedFiles;
                    SwingUtilities.invokeLater(() -> {
                        progressBar.setValue(progress);
                        progressBar.setString(finalProcessedFiles1 + "/" + totalFiles + " 完成");
                        statusLabel.setText("已完成 " + finalProcessedFiles1 + " 個檔案");
                    });

                } catch (Exception e) {
                    logger.error("處理檔案 {} 時發生錯誤", rarFile.getName(), e);
                    appendLog("處理 " + rarFile.getName() + " 時發生錯誤: " + e.getMessage());
                }
            }

            appendLog("\n" + "=".repeat(50));
            appendLog("所有檔案處理完成！已成功處理 " + processedFiles + "/" + totalFiles + " 個檔案");
            appendLog("=".repeat(50));

            int finalProcessedFiles = processedFiles;
            SwingUtilities.invokeLater(() -> {
                JOptionPane.showMessageDialog(this,
                        "處理完成！\n成功處理 " + finalProcessedFiles + "/" + totalFiles + " 個檔案",
                        "完成",
                        JOptionPane.INFORMATION_MESSAGE);
            });

        } finally {
            SwingUtilities.invokeLater(() -> {
                selectButton.setEnabled(true);
                progressBar.setString("完成");
                statusLabel.setText("準備就緒");
            });
        }
    }

    private void processRarFile(File rarFile) throws Exception {
        appendLog("處理 RAR 檔案: " + rarFile.getName());

        // 檢查 UnRAR 或 WinRAR 是否可用
        String extractorPath = findExtractorPath();
        if (extractorPath == null) {
            throw new RuntimeException("無法找到 UnRAR.exe 或 WinRAR.exe。請確認 WinRAR 已正確安裝。");
        }

        appendLog("使用工具: " + extractorPath);

        // 創建臨時目錄
        Path tempDir = Files.createTempDirectory("random_rar_extract_");
        appendLog("臨時目錄: " + tempDir);

        try {
            // 列出 RAR 檔案內容
            List<String> allFiles = listRarContents(rarFile, extractorPath);

            if (allFiles.isEmpty()) {
                throw new RuntimeException("無法讀取 RAR 檔案內容或檔案為空");
            }

            // 根據設置決定是否忽略第一層資料夾
            String rootFolder;
            List<String> fileList;

            if (skipRootCheckbox.isSelected()) {
                rootFolder = findCommonRootFolder(allFiles);

                if (rootFolder != null && !rootFolder.isEmpty()) {
                    appendLog("識別到的根資料夾: " + rootFolder);
                    fileList = allFiles.stream()
                            .filter(file -> file.startsWith(rootFolder) && !file.equals(rootFolder))
                            .collect(Collectors.toList());
                } else {
                    fileList = allFiles;
                }

                appendLog("忽略第一層資料夾，過濾後共有 " + fileList.size() + " 個檔案");
            } else {
                rootFolder = null;
                fileList = allFiles;
                appendLog("RAR 檔案中共有 " + fileList.size() + " 個檔案");
            }

            if (fileList.isEmpty()) {
                throw new RuntimeException("過濾後沒有可用的檔案");
            }

            // 按每組 20 個檔案分組並隨機選擇
            List<String> selectedFiles = selectRandomFiles(fileList);

            // 解壓選擇的檔案
            boolean anyFileExtracted = false;
            for (String filePath : selectedFiles) {
                boolean success = extractSpecificFile(rarFile, filePath, tempDir.toFile(), extractorPath);
                if (success) {
                    anyFileExtracted = true;
                }
            }

            if (!anyFileExtracted) {
                throw new RuntimeException("沒有成功解壓任何檔案");
            }

            // 如果啟用了忽略根目錄選項，重組檔案結構
            if (skipRootCheckbox.isSelected() && rootFolder != null && !rootFolder.isEmpty()) {
                reorganizeFiles(tempDir.toFile(), rootFolder);
            }

            // 創建新的 ZIP 檔案
            String newFileName = "Random_" + rarFile.getName().replace(".rar", ".zip");
            File outputZipFile = new File(rarFile.getParent(), newFileName);
            createZipArchive(tempDir.toFile(), outputZipFile);

            appendLog("完成! 已創建新的壓縮檔案: " + outputZipFile.getAbsolutePath());

        } finally {
            // 清理臨時檔案
            deleteDirectory(tempDir.toFile());
        }
    }

    private List<String> selectRandomFiles(List<String> fileList) {
        int groupCount = (int) Math.ceil(fileList.size() / 20.0);
        appendLog("將分為 " + groupCount + " 組，每組最多 20 個檔案");

        List<String> selectedFiles = new ArrayList<>();
        Random random = new Random();

        for (int i = 0; i < groupCount; i++) {
            int startIndex = i * 20;
            int endIndex = Math.min((i + 1) * 20, fileList.size());
            List<String> group = fileList.subList(startIndex, endIndex);

            int randomIndex = random.nextInt(group.size());
            String selectedFile = group.get(randomIndex);
            selectedFiles.add(selectedFile);

            appendLog("從第 " + (i + 1) + " 組中選擇: " + selectedFile);
        }

        return selectedFiles;
    }

    /**
     * 重組檔案結構，移除根目錄
     */
    private void reorganizeFiles(File tempDir, String rootFolder) throws IOException {
        appendLog("重組檔案結構，移除根目錄: " + rootFolder);

        File rootDir = new File(tempDir, rootFolder.replace('\\', '/').replace("/", ""));
        if (!rootDir.exists() || !rootDir.isDirectory()) {
            appendLog("警告: 找不到根目錄 " + rootDir.getPath() + "，無法重組檔案結構");
            return;
        }

        File[] files = rootDir.listFiles();
        if (files == null || files.length == 0) {
            appendLog("警告: 根目錄為空，無法重組檔案結構");
            return;
        }

        for (File file : files) {
            File destFile = new File(tempDir, file.getName());
            if (destFile.exists()) {
                if (destFile.isDirectory()) {
                    mergeDirectories(file, destFile);
                } else {
                    Files.copy(file.toPath(), destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                }
            } else {
                Files.move(file.toPath(), destFile.toPath());
            }
        }

        rootDir.delete();
    }

    /**
     * 合併兩個目錄
     */
    private void mergeDirectories(File source, File destination) throws IOException {
        File[] files = source.listFiles();
        if (files == null) {
            return;
        }

        for (File file : files) {
            File destFile = new File(destination, file.getName());
            if (file.isDirectory()) {
                if (!destFile.exists()) {
                    destFile.mkdir();
                }
                mergeDirectories(file, destFile);
            } else {
                Files.copy(file.toPath(), destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }
        }
    }

    /**
     * 查找所有檔案的共同根資料夾
     */
    private String findCommonRootFolder(List<String> files) {
        if (files.isEmpty()) {
            return null;
        }

        List<String> rootFolders = new ArrayList<>();

        for (String file : files) {
            int slashIndex = file.indexOf('/');
            int backslashIndex = file.indexOf('\\');

            int firstSeparator = -1;
            if (slashIndex >= 0 && backslashIndex >= 0) {
                firstSeparator = Math.min(slashIndex, backslashIndex);
            } else if (slashIndex >= 0) {
                firstSeparator = slashIndex;
            } else if (backslashIndex >= 0) {
                firstSeparator = backslashIndex;
            }

            if (firstSeparator >= 0) {
                String rootFolder = file.substring(0, firstSeparator + 1);
                rootFolders.add(rootFolder);
            }
        }

        if (!rootFolders.isEmpty()) {
            Map<String, Long> folderCounts = rootFolders.stream()
                    .collect(Collectors.groupingBy(folder -> folder, Collectors.counting()));

            Optional<Map.Entry<String, Long>> mostCommonEntry = folderCounts.entrySet().stream()
                    .max(Map.Entry.comparingByValue());

            if (mostCommonEntry.isPresent()) {
                String mostCommonFolder = mostCommonEntry.get().getKey();
                long count = mostCommonEntry.get().getValue();

                if (count > files.size() * 0.5) {
                    return mostCommonFolder;
                }
            }
        }

        return null;
    }

    private String findExtractorPath() {
        File unrar = new File(UNRAR_PATH);
        if (unrar.exists()) {
            return UNRAR_PATH;
        }

        File winrar = new File(WINRAR_PATH);
        if (winrar.exists()) {
            return WINRAR_PATH;
        }

        String[] possiblePaths = {
                "C:\\Program Files (x86)\\WinRAR\\UnRAR.exe",
                "C:\\Program Files (x86)\\WinRAR\\WinRAR.exe",
                "C:\\WinRAR\\UnRAR.exe",
                "C:\\WinRAR\\WinRAR.exe"
        };

        for (String path : possiblePaths) {
            if (new File(path).exists()) {
                return path;
            }
        }

        return null;
    }

    private List<String> listRarContents(File rarFile, String extractorPath) throws IOException {
        List<String> fileList = new ArrayList<>();

        boolean isUnrar = extractorPath.toLowerCase().endsWith("unrar.exe");

        ProcessBuilder pb;
        if (isUnrar) {
            pb = new ProcessBuilder(extractorPath, "vb", rarFile.getAbsolutePath());
        } else {
            pb = new ProcessBuilder(extractorPath, "vb", rarFile.getAbsolutePath());
        }

        appendLog("執行命令: " + pb.command().toString());
        pb.redirectErrorStream(true);

        Process process = pb.start();

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (!line.isEmpty()) {
                    fileList.add(line);
                    logger.debug("找到檔案: {}", line);
                }
            }
        }

        try {
            int exitCode = process.waitFor();
            appendLog("命令執行完成，退出碼: " + exitCode);

            if (exitCode != 0) {
                appendLog("警告: 命令返回非零退出碼，可能表示發生錯誤");
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            appendLog("命令執行被中斷");
        }

        appendLog("RAR 檔案中共有 " + fileList.size() + " 個項目");

        int displayCount = Math.min(10, fileList.size());
        for (int i = 0; i < displayCount; i++) {
            appendLog("檔案 " + (i + 1) + ": " + fileList.get(i));
        }

        return fileList;
    }

    private boolean extractSpecificFile(File rarFile, String specificFile, File outputDir, String extractorPath) throws IOException {
        appendLog("正在解壓: " + specificFile);

        boolean isUnrar = extractorPath.toLowerCase().endsWith("unrar.exe");

        ProcessBuilder pb;
        if (isUnrar) {
            pb = new ProcessBuilder(
                    extractorPath,
                    "x",
                    "-o+",
                    "-y",
                    rarFile.getAbsolutePath(),
                    specificFile,
                    outputDir.getAbsolutePath() + "\\"
            );
        } else {
            pb = new ProcessBuilder(
                    extractorPath,
                    "x",
                    "-o+",
                    "-y",
                    rarFile.getAbsolutePath(),
                    specificFile,
                    outputDir.getAbsolutePath() + "\\"
            );
        }

        appendLog("執行命令: " + pb.command().toString());

        pb.redirectErrorStream(true);
        Process process = pb.start();

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
            String line;
            while ((line = reader.readLine()) != null) {
                logger.debug("Extraction output: {}", line);
                if (line.contains("OK") || line.contains("100%") || line.contains("Error") || line.contains("Cannot")) {
                    appendLog("解壓輸出: " + line);
                }
            }
        }

        try {
            int exitCode = process.waitFor();
            if (exitCode == 0) {
                appendLog("已成功解壓: " + specificFile);
                return true;
            } else {
                appendLog("解壓失敗: " + specificFile + " (錯誤碼: " + exitCode + ")");
                return false;
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            appendLog("解壓操作被中斷");
            return false;
        }
    }

    private void createZipArchive(File sourceDir, File zipFile) throws IOException {
        appendLog("正在創建 ZIP 檔案: " + zipFile.getName());

        try (FileOutputStream fos = new FileOutputStream(zipFile);
             ZipOutputStream zos = new ZipOutputStream(fos)) {

            File[] files = sourceDir.listFiles();
            if (files == null || files.length == 0) {
                appendLog("警告: 來源目錄中沒有檔案");
                return;
            }

            for (File file : files) {
                if (file.isDirectory()) {
                    zipDirectory(file, file.getName(), zos);
                } else {
                    zipFile(file, "", zos);
                }
            }
        }
    }

    private void zipDirectory(File folder, String parentFolder, ZipOutputStream zos) throws IOException {
        File[] files = folder.listFiles();
        if (files == null) {
            return;
        }

        for (File file : files) {
            if (file.isDirectory()) {
                zipDirectory(file, parentFolder + "/" + file.getName(), zos);
                continue;
            }
            zipFile(file, parentFolder, zos);
        }
    }

    private void zipFile(File file, String parentFolder, ZipOutputStream zos) throws IOException {
        String entryPath = parentFolder.isEmpty() ? file.getName() : parentFolder + "/" + file.getName();
        ZipEntry zipEntry = new ZipEntry(entryPath);
        zos.putNextEntry(zipEntry);

        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] buffer = new byte[1024];
            int length;
            while ((length = fis.read(buffer)) > 0) {
                zos.write(buffer, 0, length);
            }
        }

        zos.closeEntry();
        appendLog("已添加到 ZIP: " + entryPath);
    }

    private void deleteDirectory(File dir) {
        try {
            Files.walk(dir.toPath())
                    .sorted((a, b) -> -a.compareTo(b))
                    .forEach(path -> {
                        try {
                            Files.delete(path);
                        } catch (IOException e) {
                            logger.warn("無法刪除: {}", path, e);
                        }
                    });
        } catch (IOException e) {
            logger.error("刪除目錄時發生錯誤", e);
        }
    }

    private void appendLog(String message) {
        SwingUtilities.invokeLater(() -> {
            logArea.append(message + "\n");
            logArea.setCaretPosition(logArea.getDocument().getLength());
        });
        logger.info(message);
    }

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            logger.warn("無法設置系統外觀", e);
        }

        SwingUtilities.invokeLater(() -> {
            RandomRarExtractorFixedPath app = new RandomRarExtractorFixedPath();
            app.setLocationRelativeTo(null);
            app.setVisible(true);
        });
    }
}