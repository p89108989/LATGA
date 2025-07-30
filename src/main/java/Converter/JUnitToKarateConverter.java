package Converter;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.*;

public class JUnitToKarateConverter {

    private static final String DEFAULT_INPUT_PATH = "readJunit/junit.java";
    private static final String DEFAULT_FEATURE_FILENAME = "NominalFuzzer.feature";

    // 配置類來儲存用戶選擇
    private static class ConversionConfig {
        List<String> sourceFiles;
        boolean singleFileMode;
        String outputFileName;
        String fileNamePattern;
        String outputDirectory;

        ConversionConfig() {
            this.sourceFiles = new ArrayList<>();
            this.singleFileMode = true;
            this.outputFileName = DEFAULT_FEATURE_FILENAME;
            this.fileNamePattern = "{className}.feature";
        }
    }

    public static void convertJUnitToKarate(List<String> sourceFiles) throws IOException {
        ConversionConfig config = showConfigurationDialog(sourceFiles);

        if (config == null) {
            System.out.println("用戶取消了轉換操作");
            return;
        }

        if (config.singleFileMode) {
            convertToSingleFile(config);
        } else {
            convertToMultipleFiles(config);
        }
    }

    /**
     * 顯示統一的配置對話框
     */
    private static ConversionConfig showConfigurationDialog(List<String> initialFiles) {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            // 忽略 Look and Feel 設置錯誤
        }

        JDialog dialog = new JDialog((Frame) null, "JUnit 到 Karate 轉換配置", true);
        dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
        dialog.setSize(600, 500);
        dialog.setLocationRelativeTo(null);

        ConversionConfig config = new ConversionConfig();
        if (initialFiles != null && !initialFiles.isEmpty()) {
            config.sourceFiles.addAll(initialFiles);
        }

        JPanel mainPanel = new JPanel(new BorderLayout(10, 10));
        mainPanel.setBorder(BorderFactory.createEmptyBorder(15, 15, 15, 15));

        // === 檔案選擇區域 ===
        JPanel filePanel = new JPanel(new BorderLayout(5, 5));
        filePanel.setBorder(new TitledBorder(" 選擇 JUnit 檔案"));

        DefaultListModel<String> fileListModel = new DefaultListModel<>();
        for (String file : config.sourceFiles) {
            fileListModel.addElement(new File(file).getName());
        }

        JList<String> fileList = new JList<>(fileListModel);
        fileList.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        JScrollPane fileScrollPane = new JScrollPane(fileList);
        fileScrollPane.setPreferredSize(new Dimension(400, 120));

        JPanel fileButtonPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        JButton addFilesBtn = new JButton(" 新增檔案");
        JButton removeFilesBtn = new JButton("🗑️ 移除選取");
        JButton clearAllBtn = new JButton(" 清空全部");

        addFilesBtn.addActionListener(e -> {
            List<String> newFiles = showJUnitFileChooser();
            for (String file : newFiles) {
                if (!config.sourceFiles.contains(file)) {
                    config.sourceFiles.add(file);
                    fileListModel.addElement(new File(file).getName());
                }
            }
        });

        removeFilesBtn.addActionListener(e -> {
            int[] selectedIndices = fileList.getSelectedIndices();
            for (int i = selectedIndices.length - 1; i >= 0; i--) {
                config.sourceFiles.remove(selectedIndices[i]);
                fileListModel.remove(selectedIndices[i]);
            }
        });

        clearAllBtn.addActionListener(e -> {
            config.sourceFiles.clear();
            fileListModel.clear();
        });

        fileButtonPanel.add(addFilesBtn);
        fileButtonPanel.add(removeFilesBtn);
        fileButtonPanel.add(clearAllBtn);

        filePanel.add(fileScrollPane, BorderLayout.CENTER);
        filePanel.add(fileButtonPanel, BorderLayout.SOUTH);

        // === 輸出模式選擇區域 ===
        JPanel modePanel = new JPanel(new BorderLayout(5, 5));
        modePanel.setBorder(new TitledBorder("⚙️ 輸出模式"));

        ButtonGroup modeGroup = new ButtonGroup();
        JRadioButton singleFileRadio = new JRadioButton(" 合併為單一 Karate 檔案", true);
        JRadioButton multiFileRadio = new JRadioButton(" 每個 JUnit 產生個別 Karate 檔案", false);

        modeGroup.add(singleFileRadio);
        modeGroup.add(multiFileRadio);

        JPanel radioPanel = new JPanel(new GridLayout(2, 1));
        radioPanel.add(singleFileRadio);
        radioPanel.add(multiFileRadio);
        modePanel.add(radioPanel, BorderLayout.CENTER);

        // === 檔名設定區域 ===
        JPanel namePanel = new JPanel(new BorderLayout(5, 5));
        namePanel.setBorder(new TitledBorder(" 檔名設定"));

        // 單一檔案模式的設定
        JPanel singleNamePanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        singleNamePanel.add(new JLabel("輸出檔名:"));
        JTextField singleNameField = new JTextField(DEFAULT_FEATURE_FILENAME, 20);
        singleNamePanel.add(singleNameField);

        // 多檔案模式的設定
        JPanel multiNamePanel = new JPanel(new GridLayout(3, 1, 5, 5));

        ButtonGroup nameGroup = new ButtonGroup();
        JRadioButton classNameRadio = new JRadioButton("使用類名: {className}.feature", true);
        JRadioButton customPatternRadio = new JRadioButton("自定義格式:", false);
        JRadioButton fixedNameRadio = new JRadioButton("統一檔名:", false);

        nameGroup.add(classNameRadio);
        nameGroup.add(customPatternRadio);
        nameGroup.add(fixedNameRadio);

        JTextField customPatternField = new JTextField("{className}_karate.feature", 15);
        JTextField fixedNameField = new JTextField("Karate.feature", 15);

        customPatternField.setEnabled(false);
        fixedNameField.setEnabled(false);

        customPatternRadio.addActionListener(e -> {
            customPatternField.setEnabled(true);
            fixedNameField.setEnabled(false);
        });

        fixedNameRadio.addActionListener(e -> {
            customPatternField.setEnabled(false);
            fixedNameField.setEnabled(true);
        });

        classNameRadio.addActionListener(e -> {
            customPatternField.setEnabled(false);
            fixedNameField.setEnabled(false);
        });

        JPanel customPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        customPanel.add(customPatternRadio);
        customPanel.add(customPatternField);

        JPanel fixedPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
        fixedPanel.add(fixedNameRadio);
        fixedPanel.add(fixedNameField);

        multiNamePanel.add(classNameRadio);
        multiNamePanel.add(customPanel);
        multiNamePanel.add(fixedPanel);

        // CardLayout 來切換檔名設定
        CardLayout nameCardLayout = new CardLayout();
        JPanel nameCardPanel = new JPanel(nameCardLayout);
        nameCardPanel.add(singleNamePanel, "single");
        nameCardPanel.add(multiNamePanel, "multi");

        namePanel.add(nameCardPanel, BorderLayout.CENTER);

        // 模式選擇的事件監聽器
        singleFileRadio.addActionListener(e -> {
            config.singleFileMode = true;
            nameCardLayout.show(nameCardPanel, "single");
        });

        multiFileRadio.addActionListener(e -> {
            config.singleFileMode = false;
            nameCardLayout.show(nameCardPanel, "multi");
        });

        // === 輸出目錄選擇 ===
        JPanel outputPanel = new JPanel(new BorderLayout(5, 5));
        outputPanel.setBorder(new TitledBorder(" 輸出目錄"));

        JTextField outputDirField = new JTextField("", 25);
        JButton browseDirBtn = new JButton(" 瀏覽");

        browseDirBtn.addActionListener(e -> {
            JFileChooser dirChooser = new JFileChooser();
            dirChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
            dirChooser.setDialogTitle("選擇輸出目錄");

            if (!config.sourceFiles.isEmpty()) {
                File firstFile = new File(config.sourceFiles.get(0));
                dirChooser.setCurrentDirectory(firstFile.getParentFile());
            }

            if (dirChooser.showOpenDialog(dialog) == JFileChooser.APPROVE_OPTION) {
                outputDirField.setText(dirChooser.getSelectedFile().getAbsolutePath());
            }
        });

        JPanel outputFieldPanel = new JPanel(new BorderLayout(5, 5));
        outputFieldPanel.add(outputDirField, BorderLayout.CENTER);
        outputFieldPanel.add(browseDirBtn, BorderLayout.EAST);
        outputPanel.add(outputFieldPanel, BorderLayout.CENTER);

        // === 按鈕區域 ===
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        JButton okButton = new JButton(" 開始轉換");
        JButton cancelButton = new JButton(" 取消");

        final boolean[] confirmed = {false};

        okButton.addActionListener(e -> {
            // 驗證輸入
            if (config.sourceFiles.isEmpty()) {
                JOptionPane.showMessageDialog(dialog, "請至少選擇一個 JUnit 檔案！", "錯誤", JOptionPane.ERROR_MESSAGE);
                return;
            }

            // 設定輸出目錄
            String outputDir = outputDirField.getText().trim();
            if (outputDir.isEmpty()) {
                File firstFile = new File(config.sourceFiles.get(0));
                config.outputDirectory = firstFile.getParent();
            } else {
                config.outputDirectory = outputDir;
            }

            // 設定檔名
            if (config.singleFileMode) {
                config.outputFileName = singleNameField.getText().trim();
                if (config.outputFileName.isEmpty()) {
                    config.outputFileName = DEFAULT_FEATURE_FILENAME;
                }
            } else {
                if (classNameRadio.isSelected()) {
                    config.fileNamePattern = "{className}.feature";
                } else if (customPatternRadio.isSelected()) {
                    config.fileNamePattern = customPatternField.getText().trim();
                    if (config.fileNamePattern.isEmpty()) {
                        config.fileNamePattern = "{className}.feature";
                    }
                } else {
                    config.fileNamePattern = fixedNameField.getText().trim();
                    if (config.fileNamePattern.isEmpty()) {
                        config.fileNamePattern = "Karate.feature";
                    }
                }
            }

            confirmed[0] = true;
            dialog.dispose();
        });

        cancelButton.addActionListener(e -> {
            confirmed[0] = false;
            dialog.dispose();
        });

        buttonPanel.add(okButton);
        buttonPanel.add(cancelButton);

        // === 組裝界面 ===
        JPanel topPanel = new JPanel(new GridLayout(2, 1, 10, 10));
        topPanel.add(filePanel);
        topPanel.add(modePanel);

        JPanel centerPanel = new JPanel(new GridLayout(2, 1, 10, 10));
        centerPanel.add(namePanel);
        centerPanel.add(outputPanel);

        mainPanel.add(topPanel, BorderLayout.NORTH);
        mainPanel.add(centerPanel, BorderLayout.CENTER);
        mainPanel.add(buttonPanel, BorderLayout.SOUTH);

        dialog.add(mainPanel);
        dialog.setVisible(true);

        return confirmed[0] ? config : null;
    }

    /**
     * 專門的 JUnit 檔案選擇器
     */
    private static List<String> showJUnitFileChooser() {
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setDialogTitle("選擇 JUnit 測試檔案");
        fileChooser.setMultiSelectionEnabled(true);

        FileNameExtensionFilter filter = new FileNameExtensionFilter("Java 檔案 (*.java)", "java");
        fileChooser.setFileFilter(filter);

        File defaultDir = new File("readJunit");
        if (defaultDir.exists() && defaultDir.isDirectory()) {
            fileChooser.setCurrentDirectory(defaultDir);
        }

        List<String> selectedFiles = new ArrayList<>();
        if (fileChooser.showOpenDialog(null) == JFileChooser.APPROVE_OPTION) {
            File[] files = fileChooser.getSelectedFiles();
            for (File file : files) {
                selectedFiles.add(file.getAbsolutePath());
            }
        }

        return selectedFiles;
    }

    private static void convertToSingleFile(ConversionConfig config) throws IOException {
        String outputFileName = config.outputFileName;
        if (!outputFileName.toLowerCase().endsWith(".feature")) {
            outputFileName += ".feature";
        }

        String commonBaseURL = findCommonBaseURL(config.sourceFiles);

        StringBuilder combinedContent = new StringBuilder();
        combinedContent.append("Feature: 多個 JUnit 轉換為 Karate\n\n");
        combinedContent.append("Background:\n");
        combinedContent.append("  * url '").append(commonBaseURL).append("/'\n\n");

        int scenarioCount = 0;
        for (String sourceFile : config.sourceFiles) {
            Path sourcePath = Paths.get(sourceFile);

            if (!Files.exists(sourcePath)) {
                System.err.println("檔案不存在: " + sourcePath);
                continue;
            }

            if (Files.isDirectory(sourcePath)) {
                List<Path> javaFiles = new ArrayList<>();
                Files.walk(sourcePath)
                        .filter(Files::isRegularFile)
                        .filter(path -> path.toString().endsWith(".java"))
                        .forEach(javaFiles::add);

                for (Path javaFile : javaFiles) {
                    String scenarioContent = generateScenarioContent(javaFile, commonBaseURL);
                    if (scenarioContent != null) {
                        combinedContent.append(scenarioContent);
                        scenarioCount++;
                    }
                }
            } else {
                String scenarioContent = generateScenarioContent(sourcePath, commonBaseURL);
                if (scenarioContent != null) {
                    combinedContent.append(scenarioContent);
                    scenarioCount++;
                }
            }
        }

        if (scenarioCount == 0) {
            JOptionPane.showMessageDialog(
                    null,
                    "沒有找到可轉換的 JUnit 檔案或轉換過程中發生錯誤。",
                    "錯誤",
                    JOptionPane.ERROR_MESSAGE
            );
            return;
        }

        File outputDir = new File(config.outputDirectory);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }

        File outputFile = new File(outputDir, outputFileName);

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {
            writer.write(combinedContent.toString());
        }

        JOptionPane.showMessageDialog(
                null,
                "成功將 " + scenarioCount + " 個 JUnit 測試合併轉換為單一 Karate Feature 檔案！\n" +
                        "輸出路徑: " + outputFile.getAbsolutePath(),
                "轉換成功",
                JOptionPane.INFORMATION_MESSAGE
        );

        System.out.println("轉換完成！產生了 " + outputFile.getAbsolutePath());
    }

    private static void convertToMultipleFiles(ConversionConfig config) throws IOException {
        int successCount = 0;

        for (String sourceFile : config.sourceFiles) {
            Path sourcePath = Paths.get(sourceFile);

            if (!Files.exists(sourcePath)) {
                System.err.println("檔案不存在: " + sourcePath);
                continue;
            }

            if (Files.isDirectory(sourcePath)) {
                Files.walk(sourcePath)
                        .filter(Files::isRegularFile)
                        .filter(path -> path.toString().endsWith(".java"))
                        .forEach(path -> {
                            try {
                                convertSingleFile(path, config.outputDirectory, config.fileNamePattern);
                            } catch (IOException e) {
                                System.err.println("轉換文件時出錯: " + path + " - " + e.getMessage());
                            }
                        });
            } else {
                convertSingleFile(sourcePath, config.outputDirectory, config.fileNamePattern);
                successCount++;
            }
        }

        JOptionPane.showMessageDialog(
                null,
                "成功轉換 " + successCount + " 個 JUnit 檔案為個別的 Karate Feature 檔案！\n" +
                        "輸出目錄: " + config.outputDirectory,
                "轉換成功",
                JOptionPane.INFORMATION_MESSAGE
        );
    }

    // === 以下是原有的處理邏輯方法，保持不變 ===

    private static String findCommonBaseURL(List<String> sourceFiles) throws IOException {
        for (String sourceFile : sourceFiles) {
            Path sourcePath = Paths.get(sourceFile);

            if (Files.exists(sourcePath) && !Files.isDirectory(sourcePath)) {
                String content = new String(Files.readAllBytes(sourcePath));
                String baseURL = extractBaseURL(content);
                if (baseURL != null && !baseURL.equals("https://example.com")) {
                    return baseURL;
                }
            }
        }

        return "https://example.com";
    }

    private static String generateScenarioContent(Path sourcePath, String commonBaseURL) throws IOException {
        try {
            String content = new String(Files.readAllBytes(sourcePath));

            String className = extractClassName(content);
            String orderValue = extractOrderValue(content);
            String baseURL = extractBaseURL(content);

            String endpoint = "";
            String httpMethod = "GET";

            String[] lines = content.split("\n");
            for (String line : lines) {
                line = line.trim();
                if (line.contains("Response") && line.contains("=") && line.contains("when()")) {

                    if (line.contains(".get(")) {
                        httpMethod = "GET";
                    } else if (line.contains(".post(")) {
                        httpMethod = "POST";
                    } else if (line.contains(".put(")) {
                        httpMethod = "PUT";
                    } else if (line.contains(".delete(")) {
                        httpMethod = "DELETE";
                    } else if (line.contains(".patch(")) {
                        httpMethod = "PATCH";
                    }

                    int baseUrlIndex = line.indexOf("baseURL+");
                    if (baseUrlIndex != -1) {
                        int startQuote = line.indexOf("\"", baseUrlIndex);
                        int endQuote = line.indexOf("\"", startQuote + 1);

                        if (startQuote != -1 && endQuote != -1) {
                            endpoint = line.substring(startQuote + 1, endQuote);
                        }
                    }

                    break;
                }
            }

            if (endpoint.isEmpty()) {
                endpoint = "/api/endpoint";
            }

            if (!endpoint.startsWith("/")) {
                endpoint = "/" + endpoint;
            }

            Map<String, String> pathParams = extractPathParams(content);
            StatusCodeRange statusRange = extractStatusCodeRange(content);

            StringBuilder scenarioContent = new StringBuilder();

            scenarioContent.append("# 原始檔案: ").append(sourcePath.getFileName()).append("\n");

            String originalFullUrl = baseURL + endpoint;
            scenarioContent.append("# 原始 URL: ").append(originalFullUrl).append("\n");

            scenarioContent.append("Scenario: test_").append(className).append(" (Order: ").append(orderValue).append(")\n");

            for (Map.Entry<String, String> param : pathParams.entrySet()) {
                scenarioContent.append("  * def ").append(param.getKey()).append(" = ");

                String paramValue = param.getValue();
                if (paramValue.startsWith("\"") && paramValue.endsWith("\"")) {
                    scenarioContent.append(paramValue).append("\n");
                } else {
                    scenarioContent.append(paramValue).append("\n");
                }
            }

            if (endpoint.startsWith("/")) {
                endpoint = endpoint.substring(1);
            }

            String pathWithParams = endpoint;
            for (String paramName : pathParams.keySet()) {
                pathWithParams = pathWithParams.replace("{" + paramName + "}", "<" + paramName + ">");
            }

            scenarioContent.append("  Given path '").append(pathWithParams).append("'\n");
            scenarioContent.append("  When method ").append(httpMethod.toLowerCase()).append("\n");

            if (statusRange.isExact) {
                scenarioContent.append("  Then status ").append(statusRange.minCode).append("\n");
            } else {
                scenarioContent.append("  Then assert responseStatus >= ").append(statusRange.minCode)
                        .append(" && responseStatus <= ").append(statusRange.maxCode).append("\n");
                scenarioContent.append("  # 註：預期狀態碼範圍 ").append(statusRange.minCode)
                        .append("-").append(statusRange.maxCode).append("\n");
            }

            if (statusRange.originalAssertion != null && !statusRange.originalAssertion.equals("無明確斷言")) {
                scenarioContent.append("  # 原始斷言： ").append(statusRange.originalAssertion).append("\n");
            }

            scenarioContent.append("  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')\n\n");

            return scenarioContent.toString();

        } catch (Exception e) {
            System.err.println("轉換檔案時出錯: " + sourcePath + " - " + e.getMessage());
            return null;
        }
    }

    private static void convertSingleFile(Path sourcePath, String outputDirectory, String fileNamePattern) throws IOException {
        String content = new String(Files.readAllBytes(sourcePath));

        String className = extractClassName(content);
        String orderValue = extractOrderValue(content);
        String baseURL = extractBaseURL(content);

        String endpoint = "";
        String httpMethod = "GET";

        String[] lines = content.split("\n");
        for (String line : lines) {
            line = line.trim();
            if (line.contains("Response") && line.contains("=") && line.contains("when()")) {

                if (line.contains(".get(")) {
                    httpMethod = "GET";
                } else if (line.contains(".post(")) {
                    httpMethod = "POST";
                } else if (line.contains(".put(")) {
                    httpMethod = "PUT";
                } else if (line.contains(".delete(")) {
                    httpMethod = "DELETE";
                } else if (line.contains(".patch(")) {
                    httpMethod = "PATCH";
                }

                int baseUrlIndex = line.indexOf("baseURL+");
                if (baseUrlIndex != -1) {
                    int startQuote = line.indexOf("\"", baseUrlIndex);
                    int endQuote = line.indexOf("\"", startQuote + 1);

                    if (startQuote != -1 && endQuote != -1) {
                        endpoint = line.substring(startQuote + 1, endQuote);
                    }
                }

                break;
            }
        }

        if (endpoint.isEmpty()) {
            endpoint = "/api/endpoint";
        }

        if (!endpoint.startsWith("/")) {
            endpoint = "/" + endpoint;
        }

        Map<String, String> pathParams = extractPathParams(content);
        StatusCodeRange statusRange = extractStatusCodeRange(content);

        String karateFeatureContent = generateKarateFeature(className, orderValue, baseURL, endpoint, httpMethod, pathParams, statusRange);

        File outputDir = new File(outputDirectory);
        if (!outputDir.exists()) {
            outputDir.mkdirs();
        }

        String outputFileName = fileNamePattern.replace("{className}", className);

        if (!outputFileName.toLowerCase().endsWith(".feature")) {
            outputFileName += ".feature";
        }

        File outputFile = new File(outputDir, outputFileName);

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {
            writer.write(karateFeatureContent);
        }

        System.out.println("成功轉換: " + sourcePath + " -> " + outputFile.getAbsolutePath());
    }

    private static String extractClassName(String content) {
        Pattern classPattern = Pattern.compile("\\bclass\\s+(\\w+)\\s*\\{");
        Matcher matcher = classPattern.matcher(content);

        if (matcher.find()) {
            return matcher.group(1);
        }

        return "UnknownClass";
    }

    private static String extractOrderValue(String content) {
        Pattern orderPattern = Pattern.compile("@Order\\((\\d+)\\)");
        Matcher matcher = orderPattern.matcher(content);

        if (matcher.find()) {
            return matcher.group(1);
        }

        return "";
    }

    private static String generateKarateFeature(String className, String orderValue,
                                                String baseURL, String endpoint, String httpMethod, Map<String, String> pathParams, StatusCodeRange statusRange) {

        StringBuilder karateFeature = new StringBuilder();

        if (baseURL.endsWith("/")) {
            baseURL = baseURL.substring(0, baseURL.length() - 1);
        }

        if (endpoint.startsWith("/")) {
            endpoint = endpoint.substring(1);
        }

        karateFeature.append("Feature: Converted from JUnit to Karate\n\n");

        karateFeature.append("Background:\n");
        karateFeature.append("  * url '").append(baseURL).append("/'\n\n");

        String originalFullUrl = baseURL + "/" + endpoint;
        karateFeature.append("# 原始 URL: ").append(originalFullUrl).append("\n");

        karateFeature.append("Scenario: test_").append(className).append(" (Order: ").append(orderValue).append(")\n");

        for (Map.Entry<String, String> param : pathParams.entrySet()) {
            karateFeature.append("  * def ").append(param.getKey()).append(" = ");

            String paramValue = param.getValue();
            if (paramValue.startsWith("\"") && paramValue.endsWith("\"")) {
                karateFeature.append(paramValue).append("\n");
            } else {
                karateFeature.append(paramValue).append("\n");
            }
        }

        String pathWithParams = endpoint;
        for (String paramName : pathParams.keySet()) {
            pathWithParams = pathWithParams.replace("{" + paramName + "}", "<" + paramName + ">");
        }

        karateFeature.append("  Given path '").append(pathWithParams).append("'\n");
        karateFeature.append("  When method ").append(httpMethod.toLowerCase()).append("\n");

        if (statusRange.isExact) {
            karateFeature.append("  Then status ").append(statusRange.minCode).append("\n");
        } else {
            karateFeature.append("  Then assert responseStatus >= ").append(statusRange.minCode)
                    .append(" && responseStatus <= ").append(statusRange.maxCode).append("\n");
            karateFeature.append("  # 註：預期狀態碼範圍 ").append(statusRange.minCode)
                    .append("-").append(statusRange.maxCode).append("\n");
        }

        if (statusRange.originalAssertion != null && !statusRange.originalAssertion.equals("無明確斷言")) {
            karateFeature.append("  # 原始斷言： ").append(statusRange.originalAssertion).append("\n");
        }

        karateFeature.append("  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')\n\n");

        return karateFeature.toString();
    }

    private static String extractBaseURL(String content) {
        Pattern baseURLPattern = Pattern.compile("String\\s+baseURL\\s*=\\s*\"([^\"]+)\"");
        Matcher matcher = baseURLPattern.matcher(content);

        if (matcher.find()) {
            String url = matcher.group(1);
            return url;
        }

        return "https://example.com";
    }

    private static Map<String, String> extractPathParams(String content) {
        Map<String, String> params = new HashMap<>();

        Pattern pathParamPattern = Pattern.compile("Object\\s+(\\w+)_path_(\\w+)\\s*=\\s*([^;]+);");
        Matcher matcher = pathParamPattern.matcher(content);

        while (matcher.find()) {
            String requestNum = matcher.group(1);
            String paramName = matcher.group(2);
            String paramValue = matcher.group(3).trim();

            Pattern usagePattern = Pattern.compile(requestNum + "\\.pathParam\\(\"" + paramName + "\"");
            Matcher usageMatcher = usagePattern.matcher(content);

            if (usageMatcher.find()) {
                params.put(paramName, paramValue);
            }
        }

        return params;
    }

    private static class StatusCodeRange {
        int minCode;
        int maxCode;
        boolean isExact;
        String originalAssertion;

        StatusCodeRange(int minCode, int maxCode, boolean isExact, String originalAssertion) {
            this.minCode = minCode;
            this.maxCode = maxCode;
            this.isExact = isExact;
            this.originalAssertion = originalAssertion;
        }
    }

    private static StatusCodeRange extractStatusCodeRange(String content) {
        int minCode = 200;
        int maxCode = 299;
        boolean isExact = false;
        String originalAssertion = "無明確斷言";

        List<String> assertionLines = new ArrayList<>();
        Pattern assertPattern = Pattern.compile("Assertions\\.[^;]+;");
        Matcher assertMatcher = assertPattern.matcher(content);

        while (assertMatcher.find()) {
            assertionLines.add(assertMatcher.group(0));
        }

        boolean has2xxNegation = false;
        for (String assertion : assertionLines) {
            if (assertion.contains("assertFalse") && assertion.contains("getStatusCode()<=299")) {
                has2xxNegation = true;
                originalAssertion = assertion.trim();
                break;
            }
        }

        boolean has5xxNegation = false;
        for (String assertion : assertionLines) {
            if (assertion.contains("assertFalse") && assertion.contains("getStatusCode()>=500")) {
                has5xxNegation = true;
                if (originalAssertion.equals("無明確斷言")) {
                    originalAssertion = assertion.trim();
                }
                break;
            }
        }

        if (has2xxNegation && has5xxNegation) {
            return new StatusCodeRange(300, 499, false, originalAssertion);
        } else if (has2xxNegation) {
            return new StatusCodeRange(300, 599, false, originalAssertion);
        } else if (has5xxNegation) {
            return new StatusCodeRange(100, 499, false, originalAssertion);
        }

        for (String assertion : assertionLines) {
            Pattern equalsPattern = Pattern.compile("assertEquals\\(.*getStatusCode\\(\\)\\s*,\\s*(\\d+)\\)");
            Matcher equalsMatcher = equalsPattern.matcher(assertion);

            if (equalsMatcher.find()) {
                int statusCode = Integer.parseInt(equalsMatcher.group(1));
                return new StatusCodeRange(statusCode, statusCode, true, assertion.trim());
            }
        }

        return new StatusCodeRange(minCode, maxCode, false, "無明確斷言");
    }

    public static void main(String[] args) {
        try {
            List<String> inputPaths = new ArrayList<>();

            if (args.length == 0) {
                inputPaths = showJUnitFileChooser();

                if (inputPaths == null || inputPaths.isEmpty()) {
                    System.out.println("未選擇檔案，將使用預設路徑: " + DEFAULT_INPUT_PATH);
                    inputPaths.add(DEFAULT_INPUT_PATH);
                }
            } else {
                for (String arg : args) {
                    inputPaths.add(arg);
                }
            }

            convertJUnitToKarate(inputPaths);

            System.out.println("轉換完成！");
        } catch (IOException e) {
            JOptionPane.showMessageDialog(
                    null,
                    "轉換過程中發生錯誤: " + e.getMessage(),
                    "錯誤",
                    JOptionPane.ERROR_MESSAGE
            );
            System.err.println("轉換過程中發生錯誤: " + e.getMessage());
        }
    }
}