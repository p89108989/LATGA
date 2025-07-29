package SwaggerEditor;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;

/**
 * Swagger 智能合併工具
 *
 * 功能：
 * - 比對原始 Swagger 與 AI 更新版本的差異
 * - 智能合併：AI 修改優先，原始內容保留
 * - 支援 JSON 和 YAML 格式
 * - 提供詳細的變更記錄
 *
 * 使用範例：
 * SwaggerMerger merger = new SwaggerMerger();
 * String result = merger.mergeSwaggerContent(original, aiUpdated, "swagger.json");
 *
 * @author SwaggerGPT
 * @version 1.0
 */
public class SwaggerMerger {

    private final ObjectMapper jsonMapper;
    private final ObjectMapper yamlMapper;
    private boolean enableVerboseLogging = true;

    /**
     * 建構子 - 初始化 JSON 和 YAML 處理器
     */
    public SwaggerMerger() {
        this.jsonMapper = new ObjectMapper();
        this.yamlMapper = new ObjectMapper(new YAMLFactory());
    }

    /**
     * 建構子 - 支援自訂日誌設定
     * @param enableVerboseLogging 是否啟用詳細日誌輸出
     */
    public SwaggerMerger(boolean enableVerboseLogging) {
        this();
        this.enableVerboseLogging = enableVerboseLogging;
    }

    /**
     * 智能合併 Swagger 內容
     *
     * @param originalContent 原始檔案內容
     * @param aiContent AI 更新的內容
     * @param fileName 檔案名稱（用於格式判斷）
     * @return 合併後的內容，如果合併失敗則回傳 AI 內容
     */
    public String mergeSwaggerContent(String originalContent, String aiContent, String fileName) {
        try {
            // 判斷檔案格式
            boolean isYaml = isYamlFile(fileName);
            ObjectMapper mapper = isYaml ? yamlMapper : jsonMapper;

            // 解析原始和 AI 內容
            JsonNode originalNode = mapper.readTree(originalContent);
            JsonNode aiNode = mapper.readTree(aiContent);

            if (enableVerboseLogging) {
                System.out.println("   🔄 正在進行智能比對與合併...");
            }

            // 執行智能合併
            JsonNode mergedNode = mergeJsonNodes(originalNode, aiNode, "");

            // 轉回字串格式
            return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(mergedNode);

        } catch (Exception e) {
            if (enableVerboseLogging) {
                System.err.println("   ❌ 合併失敗：" + e.getMessage());
                System.err.println("   💡 將使用 AI 原始回應內容");
            }
            return aiContent; // 如果合併失敗，使用 AI 版本
        }
    }

    /**
     * 遞歸合併 JSON 節點
     *
     * @param original 原始節點
     * @param aiUpdated AI 更新的節點
     * @param path 當前路徑（用於日誌記錄）
     * @return 合併後的節點
     */
    public JsonNode mergeJsonNodes(JsonNode original, JsonNode aiUpdated, String path) {
        // 如果 AI 版本為 null，使用原始版本
        if (aiUpdated == null || aiUpdated.isMissingNode()) {
            return original;
        }

        // 如果原始版本為 null，使用 AI 版本
        if (original == null || original.isMissingNode()) {
            if (enableVerboseLogging && !path.isEmpty()) {
                System.out.println("   ➕ 新增：" + path);
            }
            return aiUpdated;
        }

        // 如果節點類型不同，優先使用 AI 版本
        if (original.getNodeType() != aiUpdated.getNodeType()) {
            if (enableVerboseLogging) {
                System.out.println("   🔄 類型變更：" + path + " (" +
                        original.getNodeType() + " → " + aiUpdated.getNodeType() + ")");
            }
            return aiUpdated;
        }

        // 處理物件節點
        if (original.isObject() && aiUpdated.isObject()) {
            return mergeObjectNodes((ObjectNode) original.deepCopy(), (ObjectNode) aiUpdated, path);
        }

        // 處理陣列節點
        if (original.isArray() && aiUpdated.isArray()) {
            return mergeArrayNodes((ArrayNode) original.deepCopy(), (ArrayNode) aiUpdated, path);
        }

        // 處理基本值節點
        if (!original.equals(aiUpdated)) {
            if (enableVerboseLogging) {
                System.out.println("   ✏️  修改：" + path + " (" +
                        formatValueForLog(original) + " → " + formatValueForLog(aiUpdated) + ")");
            }
            return aiUpdated;
        }

        // 沒有變化，保留原始值
        return original;
    }

    /**
     * 合併物件節點
     *
     * @param original 原始物件節點
     * @param aiUpdated AI 更新的物件節點
     * @param path 當前路徑
     * @return 合併後的物件節點
     */
    public JsonNode mergeObjectNodes(ObjectNode original, ObjectNode aiUpdated, String path) {
        ObjectNode result = original.deepCopy();

        // 處理 AI 更新的所有欄位
        aiUpdated.fields().forEachRemaining(entry -> {
            String fieldName = entry.getKey();
            JsonNode aiValue = entry.getValue();
            String fieldPath = path.isEmpty() ? fieldName : path + "." + fieldName;

            if (result.has(fieldName)) {
                // 欄位存在，遞歸合併
                JsonNode originalValue = result.get(fieldName);
                JsonNode mergedValue = mergeJsonNodes(originalValue, aiValue, fieldPath);
                result.set(fieldName, mergedValue);
            } else {
                // 新欄位，直接添加
                if (enableVerboseLogging) {
                    System.out.println("   ➕ 新增欄位：" + fieldPath);
                }
                result.set(fieldName, aiValue);
            }
        });

        return result;
    }

    /**
     * 合併陣列節點
     *
     * 策略：
     * - 如果 AI 陣列更長，使用 AI 版本（可能包含新的測試資料）
     * - 如果 AI 陣列更短，保留原始版本（避免意外刪除）
     * - 如果長度相同但內容不同，使用 AI 版本
     *
     * @param original 原始陣列節點
     * @param aiUpdated AI 更新的陣列節點
     * @param path 當前路徑
     * @return 合併後的陣列節點
     */
    public JsonNode mergeArrayNodes(ArrayNode original, ArrayNode aiUpdated, String path) {
        // 比較陣列內容
        if (!original.equals(aiUpdated)) {
            if (enableVerboseLogging) {
                System.out.println("   🔄 陣列更新：" + path +
                        " (長度: " + original.size() + " → " + aiUpdated.size() + ")");
            }

            // 策略：如果 AI 的陣列更完整（例如添加了測試資料），使用 AI 版本
            if (aiUpdated.size() >= original.size()) {
                return aiUpdated;
            } else {
                // 如果 AI 的陣列更短，可能是部分更新，需要更謹慎
                if (enableVerboseLogging) {
                    System.out.println("   ⚠️  AI 陣列較短，保留原始版本");
                }
                return original;
            }
        }

        return original;
    }

    /**
     * 格式化值用於日誌顯示（避免日誌過長）
     *
     * @param value JSON 值
     * @return 格式化後的字串
     */
    private String formatValueForLog(JsonNode value) {
        if (value == null) return "null";

        String str = value.toString();
        // 如果值太長，截斷並加上省略號
        if (str.length() > 50) {
            return str.substring(0, 47) + "...";
        }
        return str;
    }

    /**
     * 判斷是否為 YAML 檔案
     *
     * @param fileName 檔案名稱
     * @return true 如果是 YAML 檔案
     */
    private boolean isYamlFile(String fileName) {
        if (fileName == null) return false;
        String lowerName = fileName.toLowerCase();
        return lowerName.endsWith(".yaml") || lowerName.endsWith(".yml");
    }

    /**
     * 設定是否啟用詳細日誌
     *
     * @param enable true 啟用，false 關閉
     */
    public void setVerboseLogging(boolean enable) {
        this.enableVerboseLogging = enable;
    }

    /**
     * 檢查是否啟用詳細日誌
     *
     * @return true 如果啟用詳細日誌
     */
    public boolean isVerboseLoggingEnabled() {
        return enableVerboseLogging;
    }

    /**
     * 取得支援的檔案格式列表
     *
     * @return 支援的檔案格式陣列
     */
    public static String[] getSupportedFormats() {
        return new String[]{"json", "yaml", "yml"};
    }

    /**
     * 驗證檔案格式是否受支援
     *
     * @param fileName 檔案名稱
     * @return true 如果格式受支援
     */
    public static boolean isSupportedFormat(String fileName) {
        if (fileName == null) return false;
        String lowerName = fileName.toLowerCase();
        return lowerName.endsWith(".json") ||
                lowerName.endsWith(".yaml") ||
                lowerName.endsWith(".yml");
    }

    /**
     * 建立 SwaggerMerger 實例的靜態工廠方法
     *
     * @return 新的 SwaggerMerger 實例
     */
    public static SwaggerMerger create() {
        return new SwaggerMerger();
    }

    /**
     * 建立 SwaggerMerger 實例的靜態工廠方法（自訂日誌設定）
     *
     * @param enableVerboseLogging 是否啟用詳細日誌
     * @return 新的 SwaggerMerger 實例
     */
    public static SwaggerMerger create(boolean enableVerboseLogging) {
        return new SwaggerMerger(enableVerboseLogging);
    }
}