```gherkin
Feature: South Park Quotes API 前端功能測試
  確保 South Park Quotes API 頁面所有功能能正常運作並呈現正確資料與狀態

  Background:
    Given 使用者開啟 South Park Quotes API 頁面

  # Workflow 1: 頁面初始狀態與自動載入隨機引言
  Scenario: 頁面載入時顯示初始統計並自動取得一個隨機引言
    Then 頁面統計顯示 "總引言數" 為 0
    And 頁面統計顯示 "搜尋結果" 為 0
    And 頁面統計顯示 "API 呼叫次數" 為 0
    When 頁面載入完成後自動呼叫取得隨機引言 API
    Then "隨機引言" 區塊顯示載入中狀態
    And API 呼叫次數更新為 1
    And "隨機引言" 區塊顯示一則引言卡片，且包含引言文字與角色名稱
    And "總引言數" 至少更新為 1

  # Workflow 2: 使用者按下「獲取隨機引言」按鈕取得單一隨機引言
  Scenario: 使用者點擊「獲取隨機引言」按鈕成功取得單一引言
    When 使用者點擊「獲取隨機引言」按鈕
    Then "隨機引言" 區塊顯示載入中狀態
    And API 呼叫次數增加 1
    And "隨機引言" 區塊顯示一則引言卡片，且包含引言文字與角色名稱
    And "總引言數" 累計增加 1

  Scenario: 使用者點擊「獲取隨機引言」按鈕但 API 回傳錯誤
    Given API 伺服器回傳錯誤
    When 使用者點擊「獲取隨機引言」按鈕
    Then "隨機引言" 區塊顯示錯誤訊息 "無法獲取隨機引言，請檢查網路連線或稍後再試"
    And API 呼叫次數增加 1
    And "總引言數" 不增加

  # Workflow 3: 使用者輸入數字取得多個隨機引言
  Scenario Outline: 使用者輸入有效數值取得多個隨機引言
    Given 使用者在「引言數量」欄位輸入 <count>
    When 使用者點擊「獲取多個引言」按鈕
    Then "多個隨機引言" 區塊顯示載入中狀態
    And API 呼叫次數增加 1
    And "多個隨機引言" 區塊顯示 <count> 則引言卡片，每則包含引言文字與角色名稱
    And "總引言數" 累計增加 <count>

    Examples:
      | count |
      | 1     |
      | 5     |
      | 10    |

  Scenario Outline: 使用者輸入無效數值取得多個隨機引言時顯示錯誤
    Given 使用者在「引言數量」欄位輸入 <invalidCount>
    When 使用者點擊「獲取多個引言」按鈕
    Then "多個隨機引言" 區塊顯示錯誤訊息 "請輸入有效的數量 (1-10)"
    And API 呼叫次數不增加
    And "總引言數" 不增加

    Examples:
      | invalidCount |
      | 0            |
      | 11           |
      | -3           |
      | abc          |
      | (空字串)     |

  Scenario: 使用者按下 Enter 鍵提交多個隨機引言請求
    Given 使用者在「引言數量」欄位輸入 4
    When 使用者按下 Enter 鍵
    Then 等同於點擊「獲取多個引言」按鈕
    And "多個隨機引言" 區塊顯示 4 則引言卡片
    And API 呼叫次數增加 1
    And "總引言數" 累計增加 4

  Scenario: 多個隨機引言 API 回傳錯誤時顯示錯誤訊息
    Given API 伺服器回傳錯誤
    When 使用者輸入有效數值 3 並點擊「獲取多個引言」按鈕
    Then "多個隨機引言" 區塊顯示錯誤訊息 "無法獲取多個引言，請檢查網路連線或稍後再試"
    And API 呼叫次數增加 1
    And "總引言數" 不增加

  # Workflow 4: 使用者輸入關鍵字搜尋引言
  Scenario: 使用者成功搜尋並取得符合關鍵字的引言
    Given 使用者在「搜尋詞」欄位輸入 "Kenny"
    When 使用者點擊「搜尋引言」按鈕
    Then "搜尋引言" 區塊顯示載入中狀態
    And API 呼叫次數增加 1
    And "搜尋引言" 區塊顯示至少一則引言卡片，且包含引言文字與角色名稱
    And "搜尋結果" 顯示搜尋到的引言數量
    And "總引言數" 累計增加搜尋結果數量

  Scenario: 使用者於搜尋欄位按下 Enter 鍵執行搜尋
    Given 使用者在「搜尋詞」欄位輸入 "Stan"
    When 使用者按下 Enter 鍵
    Then 等同於點擊「搜尋引言」按鈕
    And "搜尋引言" 區塊顯示搜尋結果
    And API 呼叫次數增加 1

  Scenario: 搜尋欄位為空白時點擊搜尋按鈕顯示錯誤
    Given 使用者在「搜尋詞」欄位輸入空白字串
    When 使用者點擊「搜尋引言」按鈕
    Then "搜尋引言" 區塊顯示錯誤訊息 "請輸入搜尋詞"
    And API 呼叫次數不增加
    And "搜尋結果" 顯示 0

  Scenario: 搜尋關鍵字無結果時顯示無引言訊息
    Given 使用者在「搜尋詞」欄位輸入 "不存在的角色"
    When 使用者點擊「搜尋引言」按鈕
    Then "搜尋引言" 區塊顯示訊息 "😅 沒有找到引言"
    And "搜尋結果" 顯示 0
    And "總引言數" 不增加
    And API 呼叫次數增加 1

  Scenario: 搜尋 API 回傳錯誤時顯示錯誤訊息並重置搜尋結果數
    Given API 伺服器回傳錯誤
    When 使用者在「搜尋詞」欄位輸入 "Cartman" 並點擊「搜尋引言」按鈕
    Then "搜尋引言" 區塊顯示錯誤訊息 "搜尋失敗，請檢查網路連線或稍後再試"
    And "搜尋結果" 顯示 0
    And API 呼叫次數增加 1

  # Workflow 5: 統計數字更新邏輯
  Scenario: 每次成功取得或搜尋引言後，統計數字正確更新
    When 使用者先後成功取得 1 則隨機引言、3 則多個引言，以及搜尋到 2 則符合關鍵字的引言
    Then "總引言數" 顯示 6
    And "搜尋結果" 顯示 2
    And "API 呼叫次數" 顯示 3

  Scenario: 失敗的 API 呼叫仍計入 API 呼叫次數，但不影響引言數統計
    Given API 伺服器回傳錯誤
    When 使用者嘗試取得隨機引言但失敗
    Then "API 呼叫次數" 增加 1
    And "總引言數" 不增加

  # Workflow 6: UI 元件狀態與錯誤顯示
  Scenario: 輸入框聚焦時邊框顏色變化
    When 使用者點擊「引言數量」輸入框
    Then 輸入框邊框顏色變為 #4ecdc4

  Scenario: 按鈕 hover 時有動畫效果
    When 使用者將滑鼠移到「獲取隨機引言」按鈕上
    Then 按鈕向上輕微移動並出現陰影效果

  Scenario: 按鈕禁用時外觀及游標變化
    Given 按鈕被設為 disabled
    Then 按鈕背景變灰色且游標變為不可點擊

```
---

### 說明

- 以上 Gherkin 測試涵蓋了頁面初始狀態、自動載入、三大主要功能（單一隨機引言、多個隨機引言、搜尋引言）的正常與異常行為。
- 包含輸入驗證、鍵盤事件（Enter 鍵）、API 錯誤處理與 UI 狀態變化。
- 統計數字更新的正確性也被納入測試。
- UI 互動細節（focus、hover、disabled）也被檢查，符合完整測試需求。