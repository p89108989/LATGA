package Start.Web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 🆕 Updated Web頁面控制器 - 整合 Karate 合併功能
 */
@Controller
public class WebController {

    /**
     * 首頁 - 顯示整合 KarateMerger 的 LATGA 工具界面
     */
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("title", "LATGA Test Case Generation Tool");
        model.addAttribute("version", "v4.1");
        return "LATGA";  // 對應 templates/LATGA.html
    }

    /**
     * 測試端點
     */
    @GetMapping("/test")
    @ResponseBody
    public String test() {
        return """
            <html>
            <head><title>LATGA 測試</title></head>
            <body style="font-family: Arial, sans-serif; margin: 40px; background: #f5f5f5;">
                <div style="background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">
                    <h1 style="color: #28a745;">✅ LATGA 整合版正常運作！</h1>
                    
                    <h2 style="color: #007bff;">🎯 系統狀態:</h2>
                    <ul style="line-height: 1.6;">
                        <li>✅ Spring Boot 啟動成功</li>
                        <li>✅ WebController 正常</li>
                        <li>✅ 四種模式已整合：Structural, Dynamic, EditorGPT, Karate-Merger</li>
                        <li>✅ 回調模式已啟用</li>
                    </ul>
                    
                    <h2 style="color: #ff8c00;">🤖 EditorGPT 功能:</h2>
                    <ul style="line-height: 1.6;">
                        <li>🔍 AI 智能分析 Swagger 文檔</li>
                        <li>📊 自動生成測試參數和邊界值</li>
                        <li>🎯 等價劃分測試數據生成</li>
                        <li>💾 輸出目錄：output/swagger</li>
                    </ul>
                    
                    <h2 style="color: #F59E0B;">🔗 Karate 合併功能:</h2>
                    <ul style="line-height: 1.6;">
                        <li>📄 智能合併多個 .feature 檔案</li>
                        <li>🏷️ 自動重新編號和命名策略</li>
                        <li>🔍 語法驗證和質量保證</li>
                        <li>⚡ 支援多種合併模式</li>
                        <li>💾 輸出目錄：output/merge</li>
                    </ul>
                    
                    <h2 style="color: #6f42c1;">🚀 新特點:</h2>
                    <ul style="line-height: 1.6;">
                        <li>🔄 統一的檔案處理流程</li>
                        <li>🎨 優化的 UI 界面設計</li>
                        <li>📥 智能檔案下載機制</li>
                        <li>⚡ 高效能的回調處理</li>
                        <li>🛠️ 完整的 REST API 支援</li>
                    </ul>
                    
                    <div style="margin-top: 30px; padding: 20px; background: #e7f3ff; border-radius: 5px;">
                        <h3 style="margin-top: 0; color: #0056b3;">💡 使用說明：</h3>
                        <ol style="line-height: 1.6;">
                            <li><strong>EditorGPT 模式：</strong>上傳 Swagger 檔案(.json/.yaml)，AI 將自動增強內容</li>
                            <li><strong>Karate 合併模式：</strong>上傳多個 .feature 檔案，系統將智能合併為單一檔案</li>
                            <li><strong>Structural 模式：</strong>基於 API 文檔生成靜態測試案例</li>
                            <li><strong>Dynamic 模式：</strong>動態測試生成，包含前端行為分析</li>
                        </ol>
                    </div>
                    
                    <div style="margin-top: 20px; padding: 15px; background: #fff3cd; border-radius: 5px;">
                        <h3 style="margin-top: 0; color: #856404;">🔧 API 端點：</h3>
                        <ul style="line-height: 1.6; margin-bottom: 0;">
                            <li><code>POST /api/latga/run</code> - 統一執行端點</li>
                            <li><code>POST /api/latga/merge-karate</code> - 專用合併端點</li>
                            <li><code>GET /api/latga/merge-status</code> - 合併服務狀態</li>
                            <li><code>GET /api/karate/merger/*</code> - 合併服務專用 API</li>
                        </ul>
                    </div>
                    
                    <div style="margin-top: 20px; text-align: center;">
                        <a href="/" style="background: #007bff; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold;">
                            🏠 返回首頁
                        </a>
                        <a href="/karate-merger" style="background: #F59E0B; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; display: inline-block; font-weight: bold; margin-left: 10px;">
                            🔗 Karate 合併
                        </a>
                    </div>
                </div>
            </body>
            </html>
            """;
    }

    /**
     * API 狀態檢查
     */
    @GetMapping("/status")
    @ResponseBody
    public String status() {
        return """
            {
                "status": "✅ LATGA 整合版運作正常",
                "version": "v4.1",
                "features": [
                    "Structural Mode",
                    "Dynamic Mode", 
                    "EditorGPT Mode",
                    "Karate Merger Mode"
                ],
                "timestamp": "%s",
                "endpoints": {
                    "main": "/",
                    "api": "/api/latga/run",
                    "merge": "/api/latga/merge-karate",
                    "debug": "/api/latga/debug/test",
                    "modes": "/api/latga/modes",
                    "merger_api": "/api/karate/merger/"
                }
            }
            """.formatted(java.time.LocalDateTime.now());
    }

    /**
     * 工具頁面的替代路徑
     */
    @GetMapping("/latga")
    public String latga(Model model) {
        return index(model);
    }

    /**
     * EditorGPT 專用頁面（可選）
     */
    @GetMapping("/editorgpt")
    public String editorGPT(Model model) {
        model.addAttribute("title", "EditorGPT - AI Swagger 增強工具");
        model.addAttribute("version", "v4.1 - AI Enhanced");
        model.addAttribute("defaultMode", "editorgpt");
        return "LATGA";
    }

    /**
     * 🆕 Karate 合併專用頁面
     */
    @GetMapping("/karate-merger")
    public String karateMerger(Model model) {
        model.addAttribute("title", "Karate 合併工具 - 智能合併 .feature 檔案");
        model.addAttribute("version", "v4.1 - Karate Merger");
        model.addAttribute("defaultMode", "karate-merger");
        return "LATGA";
    }

    /**
     * 幫助頁面
     */
    @GetMapping("/help")
    @ResponseBody
    public String help() {
        return """
            <html>
            <head>
                <title>LATGA 使用說明</title>
                <meta charset="UTF-8">
                <style>
                    body { font-family: Arial, sans-serif; margin: 40px; background: #f8f9fa; }
                    .container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
                    .mode { margin: 20px 0; padding: 20px; border-left: 4px solid #007bff; background: #f8f9fa; }
                    .mode.editorgpt { border-left-color: #8B5CF6; }
                    .mode.merger { border-left-color: #F59E0B; }
                    .mode.Structural { border-left-color: #28a745; }
                    .mode.dynamic { border-left-color: #dc3545; }
                    code { background: #f1f1f1; padding: 2px 6px; border-radius: 3px; }
                    .api-section { background: #e7f3ff; padding: 15px; border-radius: 5px; margin: 15px 0; }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>📚 LATGA 使用說明</h1>
                    
                    <div class="mode editorgpt">
                        <h2>🤖 EditorGPT 模式</h2>
                        <h3>🎯 功能：</h3>
                        <ul>
                            <li>AI 智能分析 Swagger 文檔結構</li>
                            <li>自動生成測試參數和邊界值</li>
                            <li>等價劃分測試數據生成</li>
                            <li>智能合併原始和增強內容</li>
                        </ul>
                        <h3>📁 支援檔案：</h3>
                        <ul>
                            <li><code>.json</code> - Swagger JSON 格式</li>
                            <li><code>.yaml/.yml</code> - Swagger YAML 格式</li>
                        </ul>
                        <h3>📤 輸出：</h3>
                        <ul>
                            <li>增強的 Swagger 文檔 (.json)</li>
                            <li>包含測試參數和邊界值的完整 API 規範</li>
                        </ul>
                    </div>
                    
                    <div class="mode merger">
                        <h2>🔗 Karate 合併模式</h2>
                        <h3>🎯 功能：</h3>
                        <ul>
                            <li>智能合併多個 Karate 測試檔案</li>
                            <li>自動處理重複的 Background 段落</li>
                            <li>支援多種 Scenario 命名策略</li>
                            <li>語法驗證和質量保證</li>
                            <li>衝突解決和內容優化</li>
                        </ul>
                        <h3>📁 支援檔案：</h3>
                        <ul>
                            <li><code>.feature</code> - Karate 測試檔案</li>
                            <li>需要至少 2 個檔案進行合併</li>
                        </ul>
                        <h3>📤 輸出：</h3>
                        <ul>
                            <li>合併的 Karate 測試檔案 (.feature)</li>
                            <li>統一的 Feature 結構和 Scenario 編號</li>
                        </ul>
                        <h3>🛠️ 合併配置：</h3>
                        <ul>
                            <li><strong>KEEP_ORIGINAL:</strong> 保持原始 Scenario 名稱</li>
                            <li><strong>KEEP_ORIGINAL_WITH_PREFIX:</strong> 添加檔案來源前綴</li>
                            <li><strong>RENUMBER_SEQUENTIALLY:</strong> 重新編號</li>
                            <li><strong>COMBINE_WITH_SOURCE_INFO:</strong> 結合來源資訊</li>
                        </ul>
                    </div>
                    
                    <div class="mode Structural">
                        <h2>📊 Structural 模式</h2>
                        <h3>🎯 功能：</h3>
                        <ul>
                            <li>基於 API 文檔生成靜態測試案例</li>
                            <li>生成 Karate 測試框架代碼</li>
                        </ul>
                        <h3>📁 支援檔案：</h3>
                        <ul>
                            <li><code>.json/.yaml</code> - Swagger 文檔</li>
                            <li><code>.dot</code> - API 操作相依圖</li>
                        </ul>
                        <h3>📤 輸出：</h3>
                        <ul>
                            <li>Karate 測試案例檔案 (.feature)</li>
                        </ul>
                    </div>
                    
                    <div class="mode dynamic">
                        <h2>🚀 Dynamic 模式</h2>
                        <h3>🎯 功能：</h3>
                        <ul>
                            <li>動態測試生成和執行</li>
                            <li>包含前端和用戶行為分析</li>
                            <li>需要 Claude AI 輔助</li>
                        </ul>
                        <h3>📁 支援檔案：</h3>
                        <ul>
                            <li><code>.json/.yaml</code> - Swagger 文檔</li>
                            <li><code>.dot</code> - API 操作相依圖</li>
                            <li>Web前端檔案</li>
                        </ul>
                        <h3>📤 輸出：</h3>
                        <ul>
                            <li>動態 Karate 測試案例檔案 (.feature)</li>
                        </ul>
                    </div>
                    
                    <div class="api-section">
                        <h2>🔧 API 端點說明：</h2>
                        <h3>統一執行端點：</h3>
                        <ul>
                            <li><code>POST /api/latga/run</code> - 支援所有四種模式</li>
                            <li><code>GET /api/latga/modes</code> - 獲取支援的模式</li>
                            <li><code>GET /api/latga/health</code> - 健康檢查</li>
                        </ul>
                        
                        <h3>🆕 Karate 合併專用端點：</h3>
                        <ul>
                            <li><code>POST /api/latga/merge-karate</code> - 快速合併 API</li>
                            <li><code>GET /api/latga/merge-status</code> - 合併服務狀態</li>
                            <li><code>POST /api/karate/merger/merge</code> - 完整合併 API</li>
                            <li><code>POST /api/karate/merger/quick-merge</code> - 快速合併</li>
                            <li><code>GET /api/karate/merger/status</code> - 合併器狀態</li>
                        </ul>
                    </div>
                    
                    <h2>⚙️ 配置需求：</h2>
                    <ul>
                        <li><strong>EditorGPT 模式：</strong>需要 OpenAI API 金鑰配置</li>
                        <li><strong>Karate 合併模式：</strong>需要 KarateMerger 服務</li>
                        <li><strong>Structural/Dynamic 模式：</strong>需要 ModeRunner 服務</li>
                        <li><strong>所有模式：</strong>Java 11+ 和 Spring Boot 環境</li>
                    </ul>
                    
                    <h2>🔍 使用範例：</h2>
                    <h3>Web 界面使用：</h3>
                    <ol>
                        <li>訪問 <code>http://localhost:8080</code></li>
                        <li>選擇對應的模式</li>
                        <li>上傳所需檔案</li>
                        <li>點擊「執行生成」</li>
                        <li>下載結果檔案</li>
                    </ol>
                    
                    <h3>API 調用範例：</h3>
                    <pre><code>
# 合併 Karate 檔案
curl -X POST http://localhost:8080/api/latga/merge-karate \\
  -F "files=@test1.feature" \\
  -F "files=@test2.feature" \\
  -F "mergedFeatureName=Combined Tests" \\
  -F "enableScenarioRenumbering=true"
                    </code></pre>
                    
                    <div style="text-align: center; margin-top: 30px;">
                        <a href="/" style="background: #007bff; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; font-weight: bold;">
                            🏠 返回首頁
                        </a>
                        <a href="/karate-merger" style="background: #F59E0B; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; font-weight: bold; margin-left: 10px;">
                            🔗 Karate 合併工具
                        </a>
                    </div>
                </div>
            </body>
            </html>
            """;
    }

    /**
     * 🆕 API 文檔頁面
     */
    @GetMapping("/api-docs")
    @ResponseBody
    public String apiDocs() {
        return """
            <html>
            <head>
                <title>LATGA API 文檔</title>
                <meta charset="UTF-8">
                <style>
                    body { font-family: Arial, sans-serif; margin: 40px; background: #f8f9fa; }
                    .container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
                    .endpoint { margin: 20px 0; padding: 20px; border-left: 4px solid #007bff; background: #f8f9fa; }
                    .method { font-weight: bold; color: white; padding: 4px 8px; border-radius: 3px; }
                    .post { background: #28a745; }
                    .get { background: #17a2b8; }
                    code { background: #f1f1f1; padding: 2px 6px; border-radius: 3px; }
                    pre { background: #f8f9fa; padding: 15px; border-radius: 5px; overflow-x: auto; }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>📖 LATGA API 文檔</h1>
                    
                    <div class="endpoint">
                        <h2><span class="method post">POST</span> /api/latga/run</h2>
                        <h3>統一執行端點</h3>
                        <p>支援所有四種模式：Structural, dynamic, editorgpt, karate-merger</p>
                        <h4>參數：</h4>
                        <ul>
                            <li><code>files</code> - 多個檔案上傳</li>
                            <li><code>mode</code> - 執行模式</li>
                        </ul>
                        <h4>回應：</h4>
                        <p>檔案下載或錯誤訊息</p>
                        <pre><code>curl -X POST http://localhost:8080/api/latga/run \\
  -F "files=@swagger.json" \\
  -F "mode=editorgpt"</code></pre>
                    </div>
                    
                    <div class="endpoint">
                        <h2><span class="method post">POST</span> /api/latga/merge-karate</h2>
                        <h3>Karate 檔案合併</h3>
                        <p>專用於合併 Karate .feature 檔案</p>
                        <h4>參數：</h4>
                        <ul>
                            <li><code>files</code> - 多個 .feature 檔案</li>
                            <li><code>mergedFeatureName</code> - 合併後的 Feature 名稱</li>
                            <li><code>enableScenarioRenumbering</code> - 是否重新編號</li>
                            <li><code>scenarioNamingStrategy</code> - 命名策略</li>
                        </ul>
                        <h4>回應：</h4>
                        <p>JSON 格式的合併結果</p>
                        <pre><code>curl -X POST http://localhost:8080/api/latga/merge-karate \\
  -F "files=@test1.feature" \\
  -F "files=@test2.feature" \\
  -F "mergedFeatureName=Combined Tests"</code></pre>
                    </div>
                    
                    <div class="endpoint">
                        <h2><span class="method get">GET</span> /api/latga/merge-status</h2>
                        <h3>合併服務狀態</h3>
                        <p>檢查 Karate 合併服務是否可用</p>
                        <h4>回應：</h4>
                        <pre><code>{
  "ready": true,
  "serviceAvailable": true,
  "supportedStrategies": [...],
  "timestamp": "2024-..."
}</code></pre>
                    </div>
                    
                    <div class="endpoint">
                        <h2><span class="method post">POST</span> /api/karate/merger/merge</h2>
                        <h3>完整合併 API</h3>
                        <p>提供完整的合併配置選項</p>
                        <h4>請求體：</h4>
                        <pre><code>{
  "firstFileContent": "Feature: ...",
  "secondFileContent": "Feature: ...",
  "mergedFeatureName": "Combined Test",
  "enableScenarioRenumbering": true,
  "scenarioNamingStrategy": "KEEP_ORIGINAL_WITH_PREFIX"
}</code></pre>
                    </div>
                    
                    <div class="endpoint">
                        <h2><span class="method get">GET</span> /api/latga/modes</h2>
                        <h3>支援的模式</h3>
                        <p>獲取所有支援的執行模式</p>
                        <h4>回應：</h4>
                        <pre><code>["Structural", "dynamic", "editorgpt", "karate-merger"]</code></pre>
                    </div>
                    
                    <div class="endpoint">
                        <h2><span class="method get">GET</span> /api/latga/health</h2>
                        <h3>健康檢查</h3>
                        <p>檢查所有服務的運行狀態</p>
                        <h4>回應：</h4>
                        <pre><code>{
  "status": "UP",
  "version": "v4.1 - Enhanced with KarateMerger",
  "supportedModes": [...],
  "services": {
    "modeRunner": true,
    "editorGPT": true,
    "karateMerger": true
  }
}</code></pre>
                    </div>
                    
                    <h2>📝 錯誤處理</h2>
                    <p>所有 API 端點都遵循統一的錯誤格式：</p>
                    <pre><code>{
  "success": false,
  "message": "錯誤描述",
  "executionId": "exec_...",
  "timestamp": "2024-..."
}</code></pre>
                    
                    <div style="text-align: center; margin-top: 30px;">
                        <a href="/" style="background: #007bff; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; font-weight: bold;">
                            🏠 返回首頁
                        </a>
                        <a href="/help" style="background: #28a745; color: white; padding: 12px 24px; border-radius: 5px; text-decoration: none; font-weight: bold; margin-left: 10px;">
                            📚 使用說明
                        </a>
                    </div>
                </div>
            </body>
            </html>
            """;
    }
}