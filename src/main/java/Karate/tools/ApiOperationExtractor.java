package Karate.tools;

import FileChooser.MultiFileChooser.FileData;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *  API 操作提取器 - 使用正則表達式分析 Swagger/ODG 文件
 * 提取 API 操作數量、名稱、路徑等信息，用於後續比對驗證
 *
 * @author StaticBlackbox Team
 * @version 1.1 - Fixed ODG Extraction & Enhanced Regex
 */
public class ApiOperationExtractor {

    /**
     * API 操作信息封裝類
     */
    public static class ApiOperation {
        private final String method;      // HTTP 方法 (GET, POST, etc.)
        private final String path;        // API 路徑 (/users, /products/{id}, etc.)
        private final String operationId; // 操作 ID (getUserById, createUser, etc.)
        private final String summary;     // 操作描述

        public ApiOperation(String method, String path, String operationId, String summary) {
            this.method = method.toUpperCase();
            this.path = path;
            this.operationId = operationId;
            this.summary = summary;
        }

        // Getters
        public String getMethod() { return method; }
        public String getPath() { return path; }
        public String getOperationId() { return operationId; }
        public String getSummary() { return summary; }

        public String getFullSignature() {
            return method + " " + path;
        }

        @Override
        public String toString() {
            return String.format("%s %s (%s)", method, path,
                    operationId != null ? operationId : "N/A");
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) return true;
            if (!(obj instanceof ApiOperation)) return false;
            ApiOperation other = (ApiOperation) obj;
            return Objects.equals(method, other.method) &&
                    Objects.equals(path, other.path);
        }

        @Override
        public int hashCode() {
            return Objects.hash(method, path);
        }
    }

    /**
     * API 分析結果封裝類
     */
    public static class ApiAnalysisResult {
        private final List<ApiOperation> operations;
        private final Map<String, Integer> methodCounts;
        private final int totalOperations;
        private final String sourceType; // "swagger", "odg", "mixed"
        private final List<String> warnings;

        public ApiAnalysisResult(List<ApiOperation> operations, String sourceType) {
            this.operations = new ArrayList<>(operations);
            this.sourceType = sourceType;
            this.totalOperations = operations.size();
            this.warnings = new ArrayList<>();

            // 統計各 HTTP 方法數量
            this.methodCounts = new HashMap<>();
            for (ApiOperation op : operations) {
                methodCounts.merge(op.getMethod(), 1, Integer::sum);
            }
        }

        // Getters
        public List<ApiOperation> getOperations() { return new ArrayList<>(operations); }
        public Map<String, Integer> getMethodCounts() { return new HashMap<>(methodCounts); }
        public int getTotalOperations() { return totalOperations; }
        public String getSourceType() { return sourceType; }
        public List<String> getWarnings() { return new ArrayList<>(warnings); }

        public void addWarning(String warning) {
            this.warnings.add(warning);
        }

        public int getMethodCount(String method) {
            return methodCounts.getOrDefault(method.toUpperCase(), 0);
        }

        public String getSummary() {
            StringBuilder summary = new StringBuilder();
            summary.append(String.format("總操作數: %d 個", totalOperations));

            if (!methodCounts.isEmpty()) {
                summary.append(" (");
                List<String> methodStats = new ArrayList<>();
                for (Map.Entry<String, Integer> entry : methodCounts.entrySet()) {
                    methodStats.add(entry.getKey() + ":" + entry.getValue());
                }
                summary.append(String.join(", ", methodStats));
                summary.append(")");
            }

            return summary.toString();
        }
    }

    /**
     *  主要分析方法：從文件列表中提取 API 操作
     */
    public ApiAnalysisResult extractApiOperations(List<FileData> fileDataList) {
        List<ApiOperation> allOperations = new ArrayList<>();
        String sourceType = "mixed";
        List<String> warnings = new ArrayList<>();

        if (fileDataList == null || fileDataList.isEmpty()) {
            return new ApiAnalysisResult(allOperations, "empty");
        }

        System.out.println(" 開始分析 " + fileDataList.size() + " 個文件...");

        for (FileData fileData : fileDataList) {
            String fileName = fileData.getFileName().toLowerCase();
            String content = fileData.getContent();

            System.out.println(" 處理文件: " + fileName);

            try {
                if (fileName.endsWith(".json") || fileName.contains("swagger")) {
                    // 分析 Swagger JSON
                    List<ApiOperation> swaggerOps = extractFromSwagger(content);
                    allOperations.addAll(swaggerOps);
                    sourceType = allOperations.size() == swaggerOps.size() ? "swagger" : "mixed";
                    System.out.println("   Swagger JSON: 提取了 " + swaggerOps.size() + " 個操作");

                } else if (fileName.endsWith(".yaml") || fileName.endsWith(".yml")) {
                    // 分析 Swagger YAML
                    List<ApiOperation> yamlOps = extractFromSwaggerYaml(content);
                    allOperations.addAll(yamlOps);
                    sourceType = allOperations.size() == yamlOps.size() ? "swagger" : "mixed";
                    System.out.println("   Swagger YAML: 提取了 " + yamlOps.size() + " 個操作");

                } else if (fileName.endsWith(".dot") || fileName.contains("odg")) {
                    // 分析 ODG (操作依賴圖)
                    List<ApiOperation> odgOps = extractFromOdg(content);
                    allOperations.addAll(odgOps);
                    sourceType = allOperations.size() == odgOps.size() ? "odg" : "mixed";
                    System.out.println("   ODG: 提取了 " + odgOps.size() + " 個操作");

                } else {
                    warnings.add("未知文件類型: " + fileName + "，嘗試通用解析");
                    List<ApiOperation> genericOps = extractFromGeneric(content);
                    allOperations.addAll(genericOps);
                    System.out.println("   通用解析: 提取了 " + genericOps.size() + " 個操作");
                }

            } catch (Exception e) {
                String errorMsg = "解析文件 " + fileName + " 時發生錯誤: " + e.getMessage();
                warnings.add(errorMsg);
                System.err.println(" " + errorMsg);
                e.printStackTrace();
            }
        }

        // 去重（基於 method + path）
        Set<ApiOperation> uniqueOps = new LinkedHashSet<>(allOperations);
        ApiAnalysisResult result = new ApiAnalysisResult(new ArrayList<>(uniqueOps), sourceType);

        // 添加警告
        warnings.forEach(result::addWarning);

        if (uniqueOps.size() < allOperations.size()) {
            String dedupeMsg = String.format("發現重複操作 %d 個，已自動去重",
                    allOperations.size() - uniqueOps.size());
            result.addWarning(dedupeMsg);
            System.out.println(" " + dedupeMsg);
        }

        System.out.println(" 總計提取 " + uniqueOps.size() + " 個唯一操作");
        return result;
    }

    /**
     *  從 Swagger JSON 中提取操作
     */
    private List<ApiOperation> extractFromSwagger(String jsonContent) {
        List<ApiOperation> operations = new ArrayList<>();

        try {
            // 提取路徑定義：/"paths":\s*\{(.*?)\}/
            Pattern pathsPattern = Pattern.compile("\"paths\"\\s*:\\s*\\{(.*?)\\}(?=\\s*,\\s*\"[^\"]*\"\\s*:|\\s*\\}\\s*$)",
                    Pattern.DOTALL);
            Matcher pathsMatcher = pathsPattern.matcher(jsonContent);

            if (pathsMatcher.find()) {
                String pathsContent = pathsMatcher.group(1);

                // 提取每個路徑："/api/path": { ... }
                Pattern pathPattern = Pattern.compile("\"([^\"]+)\"\\s*:\\s*\\{([^{}]*(?:\\{[^{}]*\\}[^{}]*)*)\\}",
                        Pattern.DOTALL);
                Matcher pathMatcher = pathPattern.matcher(pathsContent);

                while (pathMatcher.find()) {
                    String path = pathMatcher.group(1);
                    String pathContent = pathMatcher.group(2);

                    // 提取 HTTP 方法 (get, post, put, delete, etc.)
                    Pattern methodPattern = Pattern.compile("\"(get|post|put|delete|patch|head|options)\"\\s*:\\s*\\{([^{}]*(?:\\{[^{}]*\\}[^{}]*)*)\\}",
                            Pattern.CASE_INSENSITIVE | Pattern.DOTALL);
                    Matcher methodMatcher = methodPattern.matcher(pathContent);

                    while (methodMatcher.find()) {
                        String method = methodMatcher.group(1);
                        String methodContent = methodMatcher.group(2);

                        // 提取 operationId 和 summary
                        String operationId = extractJsonValue(methodContent, "operationId");
                        String summary = extractJsonValue(methodContent, "summary");

                        operations.add(new ApiOperation(method, path, operationId, summary));
                    }
                }
            }
        } catch (Exception e) {
            // 如果正則解析失敗，嘗試簡單的文字搜索
            operations.addAll(extractFromGeneric(jsonContent));
        }

        return operations;
    }

    /**
     *  從 Swagger YAML 中提取操作
     */
    private List<ApiOperation> extractFromSwaggerYaml(String yamlContent) {
        List<ApiOperation> operations = new ArrayList<>();

        try {
            // YAML 格式：paths: 後的內容
            Pattern pathsPattern = Pattern.compile("paths:\\s*\\n(.*?)(?=\\n\\w+:|$)",
                    Pattern.DOTALL);
            Matcher pathsMatcher = pathsPattern.matcher(yamlContent);

            if (pathsMatcher.find()) {
                String pathsContent = pathsMatcher.group(1);

                // 提取每個路徑：  /api/path:
                Pattern pathPattern = Pattern.compile("^\\s+(/[^:\\n]+):\\s*\\n((?:^\\s{4,}.*\\n?)*)",
                        Pattern.MULTILINE);
                Matcher pathMatcher = pathPattern.matcher(pathsContent);

                while (pathMatcher.find()) {
                    String path = pathMatcher.group(1);
                    String pathContent = pathMatcher.group(2);

                    // 提取 HTTP 方法
                    Pattern methodPattern = Pattern.compile("^\\s+(get|post|put|delete|patch|head|options):\\s*\\n((?:^\\s{6,}.*\\n?)*)",
                            Pattern.CASE_INSENSITIVE | Pattern.MULTILINE);
                    Matcher methodMatcher = methodPattern.matcher(pathContent);

                    while (methodMatcher.find()) {
                        String method = methodMatcher.group(1);
                        String methodContent = methodMatcher.group(2);

                        // 提取 operationId 和 summary
                        String operationId = extractYamlValue(methodContent, "operationId");
                        String summary = extractYamlValue(methodContent, "summary");

                        operations.add(new ApiOperation(method, path, operationId, summary));
                    }
                }
            }
        } catch (Exception e) {
            // 回退到通用解析
            operations.addAll(extractFromGeneric(yamlContent));
        }

        return operations;
    }

    /**
     *  從 ODG (操作依賴圖) 中提取操作 - 修復版本
     */
    private List<ApiOperation> extractFromOdg(String odgContent) {
        List<ApiOperation> operations = new ArrayList<>();

        if (odgContent == null || odgContent.trim().isEmpty()) {
            System.out.println("   ODG 內容為空");
            return operations;
        }

        try {
            System.out.println("   開始分析 ODG 內容...");

            // 修復 1: 精確匹配 DOT 格式的節點標籤
            // 匹配格式: 1 [ label="GET /api/v3/path" ];
            Pattern labelPattern = Pattern.compile("\\d+\\s*\\[\\s*label=\"([^\"]+)\"\\s*\\]\\s*;?", Pattern.CASE_INSENSITIVE);
            Matcher labelMatcher = labelPattern.matcher(odgContent);

            int nodeCount = 0;
            while (labelMatcher.find()) {
                String label = labelMatcher.group(1);
                nodeCount++;
                System.out.println("    找到節點標籤 " + nodeCount + ": " + label);

                ApiOperation op = parseOperationFromLabel(label);
                if (op != null) {
                    operations.add(op);
                    System.out.println("       解析成功: " + op);
                } else {
                    System.out.println("       解析失敗");
                }
            }

            System.out.println("   節點標籤分析完成，共處理 " + nodeCount + " 個節點，成功提取 " + operations.size() + " 個操作");

            // 修復 2: 檢查邊標籤（有些 ODG 可能在邊上也有操作信息）
            Pattern edgePattern = Pattern.compile("\\w+\\s*->\\s*\\w+\\s*\\[\\s*label=\"([^\"]+)\"\\s*\\]\\s*;?", Pattern.CASE_INSENSITIVE);
            Matcher edgeMatcher = edgePattern.matcher(odgContent);

            int edgeCount = 0;
            while (edgeMatcher.find()) {
                String label = edgeMatcher.group(1);
                edgeCount++;

                // 只處理看起來像 HTTP 操作的標籤
                if (label.matches("(?i)(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)\\s+.*")) {
                    System.out.println("    找到邊操作標籤: " + label);
                    ApiOperation op = parseOperationFromLabel(label);
                    if (op != null && !operations.contains(op)) {
                        operations.add(op);
                        System.out.println("       新增邊操作: " + op);
                    }
                }
            }

            if (edgeCount > 0) {
                System.out.println("   邊標籤分析完成，共處理 " + edgeCount + " 條邊");
            }

            // 修復 3: 方法調用模式的增強匹配
            Pattern[] callPatterns = {
                    // GET_users(), POST_create()
                    Pattern.compile("(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)_([a-zA-Z0-9_/]+)\\(\\)", Pattern.CASE_INSENSITIVE),
                    // get_users(), post_create()
                    Pattern.compile("(get|post|put|delete|patch|head|options)_([a-zA-Z0-9_/]+)\\(\\)", Pattern.CASE_INSENSITIVE),
                    // getUsersAPI(), postCreateAPI()
                    Pattern.compile("(get|post|put|delete|patch|head|options)([A-Z][a-zA-Z0-9]*)(?:API)?\\(\\)", Pattern.CASE_INSENSITIVE)
            };

            int callCount = 0;
            for (int i = 0; i < callPatterns.length; i++) {
                Pattern callPattern = callPatterns[i];
                Matcher callMatcher = callPattern.matcher(odgContent);

                while (callMatcher.find()) {
                    String method = callMatcher.group(1);
                    String pathPart = callMatcher.group(2);
                    callCount++;

                    // 將下劃線轉換為路徑分隔符
                    String path = "/" + pathPart.replace("_", "/");

                    ApiOperation op = new ApiOperation(method, path, null, null);
                    if (!operations.contains(op)) {
                        operations.add(op);
                        System.out.println("     找到方法調用模式 " + (i+1) + ": " + op);
                    }
                }
            }

            if (callCount > 0) {
                System.out.println("   方法調用模式分析完成，共處理 " + callCount + " 個調用");
            }

        } catch (Exception e) {
            System.err.println("   ODG 解析錯誤: " + e.getMessage());
            e.printStackTrace();

            // 回退到通用解析
            System.out.println("   回退到通用解析...");
            operations.addAll(extractFromGeneric(odgContent));
        }

        System.out.println("   ODG 解析完成，共提取 " + operations.size() + " 個操作");
        return operations;
    }

    /**
     *  通用解析（當其他方法都失敗時）- 增強版本
     */
    private List<ApiOperation> extractFromGeneric(String content) {
        List<ApiOperation> operations = new ArrayList<>();

        // 增強的通用模式陣列
        Pattern[] genericPatterns = {
                // 標準格式: GET /api/path
                Pattern.compile("(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)\\s+([/\\w{}:.\\-_~%]+)",
                        Pattern.CASE_INSENSITIVE),
                // 帶引號: "GET /api/path"
                Pattern.compile("\"(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)\\s+([/\\w{}:.\\-_~%]+)\"",
                        Pattern.CASE_INSENSITIVE),
                // 方法在後: /api/path GET
                Pattern.compile("([/\\w{}:.\\-_~%]+)\\s+(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)",
                        Pattern.CASE_INSENSITIVE),
                // URL 格式: http://host/api/path [METHOD]
                Pattern.compile("https?://[^/]+([/\\w{}:.\\-_~%]+).*?(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)",
                        Pattern.CASE_INSENSITIVE)
        };

        for (int i = 0; i < genericPatterns.length; i++) {
            Pattern pattern = genericPatterns[i];
            Matcher matcher = pattern.matcher(content);

            while (matcher.find()) {
                String method, path;

                if (i == 2) {  // 路徑在前的模式
                    path = matcher.group(1);
                    method = matcher.group(2);
                } else {
                    method = matcher.group(1);
                    path = matcher.group(2);
                }

                // 清理路徑
                if (!path.startsWith("/")) {
                    path = "/" + path;
                }

                ApiOperation op = new ApiOperation(method, path, null, null);
                if (!operations.contains(op)) {
                    operations.add(op);
                }
            }
        }

        return operations;
    }

    // ========== 輔助方法 ==========

    /**
     * 從 JSON 內容中提取指定鍵的值
     */
    private String extractJsonValue(String content, String key) {
        Pattern pattern = Pattern.compile("\"" + key + "\"\\s*:\\s*\"([^\"]+)\"", Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(content);
        return matcher.find() ? matcher.group(1) : null;
    }

    /**
     * 從 YAML 內容中提取指定鍵的值
     */
    private String extractYamlValue(String content, String key) {
        Pattern pattern = Pattern.compile("^\\s*" + key + ":\\s*(.+)$", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE);
        Matcher matcher = pattern.matcher(content);
        return matcher.find() ? matcher.group(1).trim() : null;
    }

    /**
     * 從標籤文字中解析操作 - 修復版本
     */
    private ApiOperation parseOperationFromLabel(String label) {
        if (label == null || label.trim().isEmpty()) {
            return null;
        }

        String cleanLabel = label.trim();

        // 修復: 增強的路徑字符支援，支援版本號和更多 URL 字符
        Pattern pattern = Pattern.compile(
                "(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)\\s+([/\\w{}:.\\-_~%]+)(?:\\s*-\\s*(.+))?",
                Pattern.CASE_INSENSITIVE
        );
        Matcher matcher = pattern.matcher(cleanLabel);

        if (matcher.find()) {
            String method = matcher.group(1);
            String path = matcher.group(2);
            String summary = matcher.group(3);

            // 路徑清理和驗證
            if (!path.startsWith("/")) {
                path = "/" + path;
            }

            return new ApiOperation(method, path, null, summary);
        }

        // 如果標準格式不匹配，嘗試更寬鬆的匹配
        Pattern relaxedPattern = Pattern.compile(
                "(GET|POST|PUT|DELETE|PATCH|HEAD|OPTIONS)[\\s:]+([^\\s]+)",
                Pattern.CASE_INSENSITIVE
        );
        Matcher relaxedMatcher = relaxedPattern.matcher(cleanLabel);

        if (relaxedMatcher.find()) {
            String method = relaxedMatcher.group(1);
            String path = relaxedMatcher.group(2);

            // 確保路徑格式正確
            if (!path.startsWith("/")) {
                path = "/" + path;
            }

            return new ApiOperation(method, path, null, null);
        }

        return null;
    }

    /**
     *  從 Karate 內容中提取已實現的操作（用於比對）
     */
    public List<ApiOperation> extractImplementedOperations(String karateContent) {
        List<ApiOperation> implementedOps = new ArrayList<>();

        if (karateContent == null || karateContent.trim().isEmpty()) {
            return implementedOps;
        }

        try {
            // 查找 path + method 組合
            // 模式1: Given path '/users' + When method GET
            Pattern pathMethodPattern = Pattern.compile(
                    "Given\\s+path\\s+['\"]([^'\"]+)['\"].*?When\\s+method\\s+(GET|POST|PUT|DELETE|PATCH)",
                    Pattern.CASE_INSENSITIVE | Pattern.DOTALL
            );
            Matcher pathMethodMatcher = pathMethodPattern.matcher(karateContent);

            while (pathMethodMatcher.find()) {
                String path = pathMethodMatcher.group(1);
                String method = pathMethodMatcher.group(2);
                implementedOps.add(new ApiOperation(method, path, null, null));
            }

            // 模式2: 直接的 URL 模式（如果有的話）
            Pattern urlPattern = Pattern.compile(
                    "url\\s+['\"]https?://[^/]+([/\\w{}:-]+)['\"].*?method\\s+(GET|POST|PUT|DELETE|PATCH)",
                    Pattern.CASE_INSENSITIVE | Pattern.DOTALL
            );
            Matcher urlMatcher = urlPattern.matcher(karateContent);

            while (urlMatcher.find()) {
                String path = urlMatcher.group(1);
                String method = urlMatcher.group(2);
                implementedOps.add(new ApiOperation(method, path, null, null));
            }

        } catch (Exception e) {
            System.err.println(" 提取已實現操作時發生錯誤: " + e.getMessage());
        }

        // 去重
        return new ArrayList<>(new LinkedHashSet<>(implementedOps));
    }
}