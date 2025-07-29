```gherkin
Feature: CircleCI API 管理器前端功能測試
  為確保 CircleCI API 管理器前端各功能完整且正確執行，針對主要使用流程及操作進行完整測試。

  Background:
    Given 使用者開啟 CircleCI API 管理器前端
    And 使用者尚未設定 API Token

  # API Token 設定流程
  Scenario: 設定並連接 API Token 成功取得使用者資訊與專案列表
    When 使用者輸入有效的 API Token
    And 點擊連接按鈕
    Then 系統應呼叫 GET /me 取得使用者資訊
    And 顯示目前使用者的登入名稱
    And 系統應呼叫 GET /projects 取得專案列表
    And 系統應呼叫 GET /recent-builds 取得最近建置清單

  # 專案選擇及資料載入流程
  Scenario: 選擇專案後載入專案相關資料
    Given 使用者已成功連接 API Token 且取得專案列表
    When 使用者點擊左側某個專案
    Then 設定所選專案為當前專案
    And 系統應呼叫 GET /project/{username}/{project}/envvar 取得環境變數
    And 系統應呼叫 GET /project/{username}/{project}/checkout-key 取得部署金鑰列表
    And 顯示專案名稱、預設分支及語言等資訊

  # Tab 切換功能
  Scenario Outline: 切換標籤頁顯示對應內容
    Given 使用者已選擇專案
    When 使用者點擊 "<Tab>" 標籤
    Then 畫面切換至 "<Tab>" 內容區域

    Examples:
      | Tab      |
      | overview |
      | builds   |
      | envvars  |
      | keys     |
      | cache    |

  # overview Tab 測試
  Scenario: overview 標籤頁 - 觸發建置及清除快取功能
    Given 使用者在 overview 標籤頁
    When 使用者點擊「觸發建置」按鈕
    Then 系統應呼叫 POST /project/{username}/{project} 觸發新建置
    When 使用者點擊「清除快取」按鈕
    Then 系統應呼叫 DELETE /project/{username}/{project}/build-cache 清除建置快取

  Scenario: overview 標籤頁 - 重新整理並顯示最近建置
    Given 使用者在 overview 標籤頁
    When 使用者點擊「重新整理」按鈕
    Then 系統應呼叫 GET /recent-builds?limit=20 取得最近建置清單
    And 只顯示所選專案相關的最近 5 筆建置

  Scenario: overview 標籤頁 - 查看建置詳情與操作按鈕
    Given overview 標籤頁顯示最近建置清單
    When 使用者點擊某筆建置的「詳情」按鈕
    Then 系統應呼叫 GET /project/{username}/{project}/{build_num} 取得該建置詳情
    And 顯示建置編號、狀態、分支、建置時間、提交者、開始時間等資訊
    When 該建置狀態為 running
    Then 顯示「取消」按鈕
    And 點擊該按鈕時，系統呼叫 POST /project/{username}/{project}/{build_num}/cancel
    When 該建置狀態為 failed 或 canceled
    Then 顯示「重試」按鈕
    And 點擊該按鈕時，系統呼叫 POST /project/{username}/{project}/{build_num}/retry
    When 使用者點擊「產物」按鈕
    Then 系統呼叫 GET /project/{username}/{project}/{build_num}/artifacts
    When 使用者點擊「測試」按鈕
    Then 系統呼叫 GET /project/{username}/{project}/{build_num}/tests

  # builds Tab 測試
  Scenario: builds 標籤頁 - 觸發新建置
    Given 使用者在 builds 標籤頁
    When 使用者輸入分支名稱
    And 輸入有效的 JSON 格式建置參數
    And 點擊「觸發建置」按鈕
    Then 系統應呼叫 POST /project/{username}/{project} 觸發新建置，並帶入分支及參數
    When 點擊「在指定分支觸發」按鈕
    Then 系統應呼叫 POST /project/{username}/{project}/tree/{branch} 觸發指定分支建置

  Scenario: builds 標籤頁 - 顯示及操作選擇的建置詳情
    Given 使用者已選擇某筆建置且顯示詳情
    When 使用者點擊「產物」按鈕
    Then 系統呼叫 GET /project/{username}/{project}/{build_num}/artifacts
    When 使用者點擊「測試」按鈕
    Then 系統呼叫 GET /project/{username}/{project}/{build_num}/tests

  # envvars Tab 測試
  Scenario: envvars 標籤頁 - 新增環境變數
    Given 使用者在 envvars 標籤頁
    When 使用者輸入環境變數名稱及值
    And 點擊新增按鈕
    Then 系統應呼叫 POST /project/{username}/{project}/envvar 新增環境變數
    And 之後系統自動呼叫 GET /project/{username}/{project}/envvar 重新取得環境變數列表
    And 輸入欄位清空

  Scenario: envvars 標籤頁 - 刪除環境變數
    Given envvars 標籤頁顯示環境變數列表
    When 使用者點擊某環境變數的刪除按鈕
    Then 系統應呼叫 DELETE /project/{username}/{project}/envvar/{name} 刪除該環境變數
    And 之後系統自動呼叫 GET /project/{username}/{project}/envvar 重新取得列表

  # keys Tab 測試
  Scenario: keys 標籤頁 - 新增部署金鑰
    Given 使用者在 keys 標籤頁
    When 使用者選擇金鑰類型 (deploy-key 或 github-user-key)
    And 點擊新增金鑰按鈕
    Then 系統應呼叫 POST /project/{username}/{project}/checkout-key，帶入所選金鑰類型
    And 之後系統自動呼叫 GET /project/{username}/{project}/checkout-key 重新取得部署金鑰列表

  Scenario: keys 標籤頁 - 刪除部署金鑰
    Given keys 標籤頁顯示部署金鑰列表
    When 使用者點擊某金鑰的刪除按鈕
    Then 系統應呼叫 DELETE /project/{username}/{project}/checkout-key/{fingerprint} 刪除該金鑰
    And 之後系統自動呼叫 GET /project/{username}/{project}/checkout-key 重新取得列表

  Scenario: keys 標籤頁 - 新增 SSH 金鑰
    Given 使用者在 keys 標籤頁
    When 使用者輸入 SSH 金鑰的主機名及私鑰內容
    And 點擊新增 SSH 金鑰按鈕
    Then 系統應呼叫 POST /project/{username}/{project}/ssh-key，帶入 hostname 與 private_key
    And 輸入欄位清空

  # cache Tab 測試
  Scenario: cache 標籤頁 - 清除建置快取
    Given 使用者在 cache 標籤頁
    When 使用者點擊清除建置快取按鈕
    Then 系統應呼叫 DELETE /project/{username}/{project}/build-cache

  # API 回應顯示測試
  Scenario: API 呼叫後顯示回應訊息
    Given 使用者執行任一 API 操作
    Then 頁面下方顯示該 API 的 HTTP 狀態碼及回應內容
    And 如果狀態碼為錯誤 (>=400 或 error)，文字顯示為紅色
    And 如果狀態碼為成功 (<400)，文字顯示為綠色

  # 載入狀態指示器測試
  Scenario: API 請求期間顯示載入指示器
    Given 使用者觸發 API 呼叫
    Then 畫面顯示載入動畫與「載入中...」字樣
    When API 回應完成
    Then 載入指示器消失

  # 異常處理測試
  Scenario: 未設定 API Token 時嘗試呼叫 API
    Given 使用者尚未設定 API Token
    When 使用者嘗試執行任何 API 呼叫
    Then 系統顯示警告「請先設定 API Token」
    And 不進行 API 呼叫

```
以上 Gherkin 測試案例涵蓋了前端所有主要功能與使用流程，包含 API Token 設定、專案選擇與資料載入、標籤頁切換、各功能操作（建置、環境變數、金鑰、快取）、API 回應顯示、載入狀態及異常處理，符合 BDD 最佳實踐且具體可執行。