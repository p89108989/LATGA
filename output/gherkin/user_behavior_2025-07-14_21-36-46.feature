```gherkin
Feature: Nager.Date API 前端公共假日查詢系統功能測試

  Background:
    Given 使用者已開啟 Nager.Date API 前端網頁

  Scenario: 網頁初始載入時顯示版本資訊及可選國家列表
    When 網頁載入完成
    Then 應該呼叫 "/AvailableCountries" API 並顯示國家選單
    And 國家選單中預設選擇 "US"
    And 應該呼叫 "/Version" API 並顯示版本名稱與版本號

  Scenario: 選擇不同國家後，載入並顯示該國家資訊
    Given 國家選單已載入且顯示多個國家
    When 使用者從國家選單選擇 "DE"
    Then 應該呼叫 "/CountryInfo/DE" API 並顯示該國家資訊
      | 欄位       | 說明                   |
      | officialName | 國家正式名稱           |
      | commonName   | 國家通用名稱           |
      | countryCode  | 國家代碼               |
      | region       | 地區                   |
      | borders      | 鄰國（若有）           |
    And 應該呼叫 "/IsTodayPublicHoliday/DE" API 並顯示今日是否為公共假日
    And 應該呼叫 "/NextPublicHolidays/DE" API 並顯示接下來的假日列表(最多5筆)

  Scenario: 選擇不同年份後，載入並顯示該國家該年份的公共假日與長週末
    Given 已選擇國家 "US"
    When 使用者從年份選單選擇 "2025"
    Then 應該呼叫 "/PublicHolidays/2025/US" API 並顯示該年公共假日列表
      And 每筆假日顯示名稱、在地名稱、日期與假日類型標籤(若有)
    And 應該呼叫 "/LongWeekend/2025/US" API 並顯示該年長週末列表
      | 欄位         | 說明                   |
      | dayCount     | 長週末天數             |
      | startDate    | 開始日期               |
      | endDate      | 結束日期               |
      | needBridgeDay| 是否需要請假           |
      | bridgeDays   | 請假日（若有）         |

  Scenario: 顯示「今日假日檢查」區塊狀態
    Given 已選擇國家 "JP"
    When 呼叫 "/IsTodayPublicHoliday/JP" API 返回狀態 200
    Then 頁面應顯示「今天是公共假日！」的綠色提示與勾選圖示
    When 呼叫 "/IsTodayPublicHoliday/JP" API 返回非200狀態
    Then 頁面應顯示「今天不是公共假日」的灰色提示與警告圖示
    When API 呼叫失敗（網路錯誤或其他）
    Then 頁面應顯示錯誤訊息並無顯示假日狀態

  Scenario: 顯示「即將到來的假日」區塊
    Given 已選擇國家 "FR"
    When 呼叫 "/NextPublicHolidays/FR" API 返回5筆以上假日資料
    Then 頁面應顯示前5筆假日，包含名稱、在地名稱及格式化日期
    When API 返回空資料列表
    Then 頁面顯示「無資料」提示
    When API 呼叫失敗
    Then 頁面顯示錯誤訊息

  Scenario: 顯示「全球假日（未來7天）」區塊
    When 頁面載入完成
    Then 應該呼叫 "/NextPublicHolidaysWorldwide" API
    And 顯示前10筆全球假日資料，包含名稱、國家代碼、在地名稱與格式化日期
    When API 返回空資料
    Then 頁面顯示「無資料」提示
    When API 呼叫失敗
    Then 頁面顯示錯誤訊息

  Scenario: 使用者切換國家後，所有相關資料區塊更新
    Given 使用者目前選擇國家為 "US"
    When 使用者選擇國家為 "CA"
    Then 國家資訊區塊更新為 "CA" 資料
    And 今日假日檢查區塊更新為 "CA" 狀態
    And 即將到來假日區塊更新為 "CA" 資料
    And 公共假日與長週末區塊依選擇年份載入 "CA" 資料

  Scenario: 使用者切換年份後，公共假日與長週末區塊更新
    Given 使用者選擇國家為 "US" 且年份為 2023
    When 使用者選擇年份為 2024
    Then 公共假日區塊顯示 2024 年的假日資料
    And 長週末區塊顯示 2024 年的長週末資料

  Scenario: API 呼叫期間顯示載入動畫
    When 任一 API 呼叫中
    Then 對應區塊顯示載入 Spinner

  Scenario: API 呼叫失敗時顯示錯誤訊息
    When 任一 API 呼叫失敗
    Then 對應區塊顯示錯誤訊息包含錯誤圖示與訊息內容

  Scenario Outline: 國家選單顯示格式正確
    Given 網頁載入完成
    Then 國家選單中每個選項格式為 "<countryName> (<countryCode>)"
    Examples:
      | countryName    | countryCode |
      | United States  | US          |
      | Germany        | DE          |
      | Japan          | JP          |

  Scenario Outline: 公共假日日期格式正確顯示
    Given 公共假日資料包含日期 "<dateString>"
    When 日期格式化
    Then 顯示日期格式為 "YYYY年MM月DD日 星期X"
    Examples:
      | dateString    | 
      | 2024-01-01    |
      | 2024-12-25    |

```