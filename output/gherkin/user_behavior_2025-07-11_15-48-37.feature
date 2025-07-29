```gherkin
Feature: Nager.Date API 前端公共假日查詢系統功能測試

  Background:
    Given 使用者開啟 Nager.Date API 前端頁面

  # 全域初始化測試
  Scenario: 初始載入頁面時，顯示版本資訊、可用國家與全球假日資料
    When 頁面載入完成
    Then 版本資訊應正確顯示
    And 國家下拉選單應包含所有可用國家
    And 全球假日區塊應顯示未來7天內的全球假日列表
    And 不應顯示任何錯誤訊息
    And 不應顯示載入指示器

  # 國家與年份選擇功能測試
  Scenario Outline: 使用者選擇不同國家與年份後，更新顯示相關資料
    Given 使用者選擇國家為 "<CountryCode>"
    And 使用者選擇年份為 <Year>
    When 系統載入該國家及年份相關資料
    Then 國家資訊區塊應顯示該國家詳細資訊，包括正式名稱、通用名稱、國家代碼及地區
    And 今日假日檢查區塊應顯示今天是否為該國家的公共假日
    And 公共假日列表應顯示該年份該國家的所有公共假日
    And 即將到來的假日區塊應顯示該國家未來的假日（最多5筆）
    And 長週末區塊應顯示該年份該國家的長週末資訊
    And 不應顯示任何錯誤訊息
    And 不應顯示載入指示器

    Examples:
      | CountryCode | Year |
      | US          | 2023 |
      | DE          | 2024 |
      | JP          | 2025 |

  # 錯誤處理測試
  Scenario Outline: 當 API 呼叫失敗時，各區塊應顯示錯誤訊息並停止載入指示器
    Given 使用者選擇國家為 "<CountryCode>"
    And 使用者選擇年份為 <Year>
    When API 回傳錯誤狀態碼或連線異常
    Then 對應區塊應顯示錯誤訊息
    And 載入指示器應消失

    Examples:
      | CountryCode | Year |
      | XX          | 2023 | # 假設 XX 是不存在的國家代碼，API 呼叫會失敗

  # 今日假日檢查功能測試
  Scenario: 今日假日檢查結果顯示正確狀態
    Given 使用者選擇國家為 "US"
    When 系統呼叫 IsTodayPublicHoliday API
    Then 今日假日檢查區塊應顯示「今天是公共假日！」如果今天是假日
    Or 今日假日檢查區塊應顯示「今天不是公共假日」如果今天不是假日
    And 今日假日區塊背景顏色與 icon 應與狀態一致（假日為綠色與勾勾，非假日為灰色與警告）

  # 公共假日列表顯示測試
  Scenario: 公共假日列表正確顯示日期與類型標籤
    Given 使用者選擇國家為 "JP"
    And 使用者選擇年份為 2024
    When 公共假日資料成功載入
    Then 公共假日列表中每筆假日應顯示假日名稱、當地名稱、格式化後的日期
    And 如果該假日有類型，應以標籤形式顯示所有類型名稱

  # 即將到來假日列表顯示測試
  Scenario: 即將到來的假日清單顯示最多五筆資料
    Given 使用者選擇國家為 "DE"
    When 下一個假日資料成功載入
    Then 即將到來的假日區塊中應顯示最多5筆假日資料
    And 每筆假日應包含假日名稱、當地名稱與格式化日期

  # 長週末資料顯示測試
  Scenario: 長週末區塊正確呈現所有詳細資訊
    Given 使用者選擇國家為 "US"
    And 使用者選擇年份為 2023
    When 長週末資料成功載入
    Then 長週末區塊應顯示所有長週末項目
    And 每筆項目應包含長週末編號、天數、起訖日期
    And 如果需要請假，應顯示「需要請假: 是」標示
    And 如果有請假日，應列出所有請假日期（格式化顯示）

  # 全球假日區塊顯示測試
  Scenario: 全球假日區塊顯示未來7天內的假日清單
    When 全球假日資料成功載入
    Then 全球假日區塊應顯示最多10筆未來7天內的假日
    And 每筆假日包含假日名稱、國家代碼與當地名稱、格式化日期

  # 載入狀態與錯誤訊息顯示測試
  Scenario Outline: 各資料區塊在載入時顯示載入動畫，錯誤時顯示錯誤訊息
    Given 使用者選擇國家為 "<CountryCode>"
    And 使用者選擇年份為 <Year>
    When 該區塊資料正在載入中
    Then 該區塊應顯示載入動畫
    When 該區塊資料載入失敗
    Then 該區塊應顯示錯誤訊息

    Examples:
      | CountryCode | Year |
      | US          | 2023 |

  # UI互動流程測試
  Scenario: 使用者切換國家與年份，前端資料更新流程
    Given 使用者初始國家為 "US"
    And 初始年份為 2023
    When 使用者將國家切換為 "JP"
    Then 國家資訊、今日假日檢查、即將到來假日資料應重新載入並更新
    When 使用者將年份切換為 2025
    Then 公共假日與長週末資料應重新載入並更新
    And 其他區塊資料維持不變

```
---

### 測試說明與Workflow分析

- 頁面初始化時，會同時呼叫三個 API：AvailableCountries、Version、NextPublicHolidaysWorldwide，確保全域資料正確載入。
- 使用者選擇國家時，會呼叫三個 API：CountryInfo、IsTodayPublicHoliday、NextPublicHolidays，更新該國家相關資料。
- 使用者選擇國家或年份時，會呼叫兩個 API：PublicHolidays、LongWeekend，更新該年份的假日與長週末資訊。
- 每個 API 呼叫皆有獨立的載入狀態與錯誤處理機制，UI 會根據狀態顯示載入動畫或錯誤訊息。
- UI 元素包含多個資料區塊，每個區塊依賴不同 API 資料，切換條件會觸發相應資料重新載入。
- 日期格式統一以「yyyy年MM月dd日 星期X」格式顯示，確保使用者易讀。
- 長週末區塊額外顯示是否需要請假及請假日資訊，提供使用者假期規劃參考。

此 Gherkin 測試案例涵蓋了整體前端功能的主要使用流程與狀態變化，適合用於手動或自動化測試，確保前端與 API 互動符合預期且用戶體驗流暢。