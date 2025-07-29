```gherkin
Feature: Bandsintown Explorer 前端功能測試

  Background:
    Given 使用者開啟 Bandsintown Explorer 應用程式

  # 測試搜尋藝術家流程
  Scenario: 搜尋藝術家成功顯示藝術家資訊
    Given 輸入框中輸入有效的藝術家名稱 "Coldplay"
    When 按下「搜尋」按鈕
    Then 頁面顯示載入中動畫
    And 藝術家資訊分頁顯示藝術家名稱 "Coldplay"
    And 顯示藝術家追蹤者數量（數字格式化顯示）
    And 顯示即將舉行的演出場次數量
    And 提供 Bandsintown 頁面和 Facebook 連結，點擊開啟新分頁

  Scenario: 搜尋藝術家時未輸入名稱顯示錯誤訊息
    Given 輸入框為空白
    When 按下「搜尋」按鈕
    Then 頁面顯示錯誤訊息 "請輸入藝術家名稱"

  Scenario: 搜尋藝術家時按下 Enter 鍵觸發搜尋
    Given 輸入框中輸入藝術家名稱 "Adele"
    When 使用者在輸入框按下 Enter 鍵
    Then 執行搜尋並顯示該藝術家資訊分頁

  # 測試藝術家資訊與演出活動分頁切換
  Scenario: 在藝術家資訊分頁與演出活動分頁間切換
    Given 已成功搜尋到藝術家 "Linkin Park"
    When 點擊「演出活動」分頁
    Then 頁面顯示載入中狀態
    And 載入並顯示該藝術家的演出活動列表
    When 點擊「藝術家資訊」分頁
    Then 顯示該藝術家的基本資訊

  # 測試演出活動列表載入與日期篩選功能
  Scenario: 演出活動列表正確顯示並能切換日期篩選條件
    Given 已載入藝術家 "Maroon 5" 的演出活動列表
    When 預設選擇「即將舉行」篩選
    Then 顯示 5 筆模擬演出資料的活動卡片
    When 點擊「過往演出」篩選按鈕
    Then 篩選條件變更為「過往演出」
    And 使用者點擊「載入活動」按鈕
    Then 演出活動列表重新載入並顯示對應篩選結果

  Scenario: 使用自訂日期篩選載入演出活動
    Given 演出活動分頁已開啟
    When 選擇「自訂日期」篩選
    And 輸入開始日期 "2024-01-01" 與結束日期 "2024-01-31"
    And 按下「載入活動」按鈕
    Then 演出活動列表依照指定日期範圍載入並顯示活動

  Scenario: 載入演出活動按鈕在載入中狀態時被禁用
    Given 演出活動正在載入中
    Then 「載入活動」按鈕為禁用狀態且顯示「載入中...」

  # 錯誤處理測試
  Scenario: 載入演出活動時發生錯誤顯示錯誤訊息
    Given 已搜尋到藝術家資料
    And 模擬載入活動時發生錯誤
    When 使用者點擊「載入活動」按鈕
    Then 顯示錯誤訊息 "載入活動時發生錯誤"

  # UI元件互動與顯示測試
  Scenario: 藝術家資訊頁面顯示藝術家照片與相關資料
    Given 已搜尋到藝術家 "Imagine Dragons"
    Then 藝術家照片顯示正確且 alt 屬性為藝術家名稱
    And 顯示藝術家名稱、追蹤者數量、即將舉行場次
    And 提供 Bandsintown 與 Facebook 外部連結按鈕

  Scenario: 演出活動卡片顯示完整資訊且提供票券連結
    Given 已載入演出活動列表
    Then 每筆活動卡片顯示演出描述、時間（格式化為 yyyy年M月d日 HH:mm）、場地資訊（名稱、城市、國家）
    And 顯示演出陣容名單
    And 票券連結按鈕為可點擊狀態，並以綠色底色標示可購買狀態

  # API工作流程說明區塊顯示測試
  Scenario: 頁面底部顯示 API 工作流程說明
    Then 頁面底部顯示 2 個 API 工作流程說明區塊
    And 區塊一標題為 "1. 獲取藝術家資訊" 並說明 GET /artists/{artistname}
    And 區塊二標題為 "2. 獲取演出活動" 並說明 GET /artists/{artistname}/events
    And 有提醒文字說明此為演示版，需申請有效 app_id

```
### 附註說明
- 各 Scenario 皆涵蓋關鍵互動流程與 UI 元素狀態驗證。
- 錯誤訊息與按鈕狀態均有明確測試。
- 日期篩選包含預設與自訂日期範圍，確保完整測試不同條件。
- API 工作流程區塊存在並清楚呈現對應資訊。
- 模擬資料部分因為程式碼中使用 mock 物件，測試主要聚焦於前端行為與 UI 呈現。

此 Gherkin 文件可作為前端整合測試及自動化測試的藍本。