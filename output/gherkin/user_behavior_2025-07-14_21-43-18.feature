```gherkin
Feature: Nager.Date API 前端功能測試

  Background:
    Given 使用者打開 Nager.Date API 前端頁面

  # 初始載入流程
  Scenario: 頁面載入時初始資料載入
    When 頁面剛載入完成
    Then 應該呼叫 API 取得可用國家清單並顯示於國家下拉選單
    And 應該呼叫 API 取得版本資訊並顯示於頁面標題下方
    And 應該呼叫 API 取得全球即將到來的假日並顯示於全球假日區塊

  # 國家選擇流程
  Scenario Outline: 選擇不同國家時載入該國家資料與假日資訊
    Given 使用者選擇國家 "<CountryCode>"
    When 國家被選擇
    Then 應該呼叫 API 取得該國家國家資訊並正確顯示
    And 應該呼叫 API 檢查今天是否為該國公共假日，並顯示正確狀態（是/否）
    And 應該呼叫 API 取得該國接下來的假日並顯示（最多 5 筆）
    And 應該呼叫 API 取得指定年份的公共假日並顯示
    And 應該呼叫 API 取得該年份的長週末資訊並顯示

    Examples:
      | CountryCode |
      | US          |
      | TW          |
      | DE          |

  # 年份選擇流程
  Scenario Outline: 選擇不同年份時更新該年份假日與長週末資訊
    Given 使用者選擇國家 "US"
    And 使用者選擇年份 "<Year>"
    When 年份被選擇
    Then 應該呼叫 API 取得該國指定年份的公共假日並顯示
    And 應該呼叫 API 取得該國該年份的長週末資訊並顯示

    Examples:
      | Year |
      | 2022 |
      | 2024 |
      | 2030 |

  # 錯誤處理流程
  Scenario Outline: API 呼叫失敗時顯示錯誤訊息
    Given 使用者選擇國家 "<CountryCode>"
    And 使用者選擇年份 2023
    When API "<APIKey>" 呼叫失敗
    Then 應該在對應區塊顯示錯誤訊息

    Examples:
      | APIKey          |
      | countries       |
      | version         |
      | worldwideHolidays |
      | countryInfo     |
      | todayHoliday    |
      | nextHolidays    |
      | publicHolidays  |
      | longWeekends    |

  # Loading 狀態顯示流程
  Scenario Outline: 資料載入時顯示載入動畫
    Given 使用者觸發 API "<APIKey>" 載入資料
    When 該 API 尚未回應
    Then 應該在對應區塊顯示載入動畫

    Examples:
      | APIKey          |
      | countries       |
      | version         |
      | worldwideHolidays |
      | countryInfo     |
      | todayHoliday    |
      | nextHolidays    |
      | publicHolidays  |
      | longWeekends    |

  # 公共假日顯示內容驗證
  Scenario: 公共假日列表顯示正確資訊
    Given 使用者選擇國家 "US"
    And 使用者選擇年份 2023
    When 公共假日資料載入完成
    Then 每筆假日應顯示假日名稱、當地名稱、日期（格式為 yyyy年M月d日 星期X）
    And 若假日含有類型，應以標籤形式顯示所有類型

  # 長週末顯示內容驗證
  Scenario: 長週末列表顯示正確資訊
    Given 使用者選擇國家 "US"
    And 使用者選擇年份 2023
    When 長週末資料載入完成
    Then 每筆長週末應顯示長週末編號、天數、開始日期、結束日期
    And 若需要請假，顯示「需要請假: 是」文字
    And 若有請假日，顯示所有請假日期（格式同上）

  # 今日假日檢查顯示狀態
  Scenario Outline: 今日假日檢查區塊顯示正確狀態
    Given 使用者選擇國家 "<CountryCode>"
    When API 回應今天是公共假日狀態為 "<IsHoliday>"
    Then 今日假日區塊背景顏色與圖示狀態應符合結果
    And 顯示文字為 "今天是公共假日！" 或 "今天不是公共假日"

    Examples:
      | CountryCode | IsHoliday |
      | US          | true      |
      | TW          | false     |

  # 全球假日顯示內容驗證
  Scenario: 全球假日區塊顯示未來7天內最多10筆假日
    When 全球假日資料載入完成
    Then 顯示假日名稱、國家代碼與當地名稱、日期（格式同上）
    And 最多顯示 10 筆資料

  # 使用者操作流程整合測試
  Scenario: 使用者完整操作流程測試
    Given 使用者打開前端頁面
    When 頁面載入完成
    Then 顯示可選國家列表、版本資訊與全球假日
    When 使用者從國家下拉選單選擇 "DE"
    And 使用者從年份下拉選單選擇 2025
    Then 更新國家資訊、今日假日狀態、接下來假日、該年公共假日與長週末資料並顯示
    And 所有資料區塊無錯誤訊息且無載入動畫

```