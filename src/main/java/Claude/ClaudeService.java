package Claude;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

@Service
class ClaudeService {

    private static final String API_URL = "https://api.anthropic.com/v1/messages";

    @Value("${claude.api.key:}")
    private String apiKey;

    @Value("${claude.model:claude-sonnet-4-20250514}")
    private String model;

    @Value("${claude.max.tokens:1024}")
    private int maxTokens;

    @Value("${claude.timeout.seconds:60}")
    private int timeoutSeconds;

    private final HttpClient httpClient;
    private final ObjectMapper objectMapper;
    private final ConcurrentHashMap<String, List<Message>> sessionHistories;

    public ClaudeService() {
        this.httpClient = HttpClient.newBuilder()
                .connectTimeout(Duration.ofSeconds(30))
                .build();
        this.objectMapper = new ObjectMapper();
        this.sessionHistories = new ConcurrentHashMap<>();
    }

    /**
     * 檢查Claude服務是否已正確配置
     */
    public boolean isConfigured() {
        return apiKey != null && !apiKey.trim().isEmpty() &&
                !apiKey.equals("YOUR_API_KEY_HERE");
    }

    /**
     * 發送訊息到Claude API
     */
    public String sendMessage(String userMessage, String sessionId) throws IOException, InterruptedException {
        if (!isConfigured()) {
            throw new RuntimeException("Claude API Key 未設定，請在 application.properties 中設定 claude.api.key");
        }

        // 獲取或創建會話歷史
        List<Message> conversationHistory = sessionHistories.computeIfAbsent(sessionId, k -> new ArrayList<>());

        // 添加用戶訊息到對話歷史
        conversationHistory.add(new Message("user", userMessage));

        // 構建請求JSON
        ObjectNode requestBody = objectMapper.createObjectNode();
        requestBody.put("model", model);
        requestBody.put("max_tokens", maxTokens);

        // 添加訊息陣列
        ArrayNode messages = objectMapper.createArrayNode();
        for (Message msg : conversationHistory) {
            ObjectNode messageNode = objectMapper.createObjectNode();
            messageNode.put("role", msg.getRole());
            messageNode.put("content", msg.getContent());
            messages.add(messageNode);
        }
        requestBody.set("messages", messages);

        // 創建HTTP請求
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(API_URL))
                .header("Content-Type", "application/json")
                .header("x-api-key", apiKey)
                .header("anthropic-version", "2023-06-01")
                .POST(HttpRequest.BodyPublishers.ofString(requestBody.toString()))
                .timeout(Duration.ofSeconds(timeoutSeconds))
                .build();

        // 發送請求
        HttpResponse<String> response = httpClient.send(request,
                HttpResponse.BodyHandlers.ofString());

        // 處理回應
        if (response.statusCode() == 200) {
            JsonNode responseJson = objectMapper.readTree(response.body());
            String assistantResponse = responseJson.path("content")
                    .get(0).path("text").asText();

            // 添加助手回應到對話歷史
            conversationHistory.add(new Message("assistant", assistantResponse));

            return assistantResponse;
        } else {
            throw new RuntimeException("API請求失敗: " + response.statusCode() +
                    " - " + response.body());
        }
    }

    /**
     * 清除指定會話的對話歷史
     */
    public void clearHistory(String sessionId) {
        sessionHistories.remove(sessionId);
    }

    /**
     * 獲取指定會話的對話歷史
     */
    public List<Message> getConversationHistory(String sessionId) {
        return new ArrayList<>(sessionHistories.getOrDefault(sessionId, new ArrayList<>()));
    }

    /**
     * 獲取所有活躍會話ID
     */
    public List<String> getActiveSessions() {
        return new ArrayList<>(sessionHistories.keySet());
    }
}
