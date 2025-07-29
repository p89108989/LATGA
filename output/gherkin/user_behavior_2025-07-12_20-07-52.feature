```gherkin
Feature: Nager.Date API 前端公共假日查詢系統

  Background:
    Given 使用者開啟 Nager.Date API 前端網頁

  # 測試初始化與主要功能流程

  Scenario: 初始載入時，顯示版本資訊與國家列表
    When 網頁載入完成
    Then 頁面應顯示系統標題 "Nager.Date API 前端"
    And 頁面應顯示版本資訊，包含版本名稱與版本號
    And 國家下拉選單應包含多個可選國家代碼與名稱
    And 預設選擇國家為 "US"
    And 年份下拉選單應包含 2020 到 2030 年的選項
    And 預設選擇年份為當前年份

  Scenario: 選擇不同國家時，載入並顯示該國家資訊、今日假日狀態及未來假日
    Given 使用者選擇國家 "DE"
    When 國家選擇變更後
    Then 請求 /CountryInfo/DE，並顯示該國家正式名稱、通用名稱、國家代碼、地區及鄰國（如有）
    And 請求 /IsTodayPublicHoliday/DE，顯示今日是否為公共假日的狀態
    And 請求 /NextPublicHolidays/DE，顯示未來五個即將到來的假日

  Scenario: 選擇不同年份時，載入並顯示該國家該年份的公共假日與長週末資訊
    Given 使用者已選擇國家 "US"
    When 使用者選擇年份為 2024
    Then 請求 /PublicHolidays/2024/US，並顯示該年份所有公共假日列表
    And 每個假日應顯示名稱、本地名稱、日期以及假日類型（如有）
    And 請求 /LongWeekend/2024/US，並顯示該年份所有長週末資訊
    And 每個長週末應顯示開始日期、結束日期、天數、是否需要請假及請假日（如有）

  Scenario: 公共假日列表區塊顯示加載中狀態與錯誤訊息
    Given API 請求 /PublicHolidays/{year}/{country} 失敗
    When 使用者選擇該年份與國家
    Then 公共假日區塊應顯示加載中樣式（轉圈動畫）
    And 請求失敗後顯示錯誤訊息

  Scenario: 今日假日檢查區塊顯示正確狀態
    Given API 回傳 200 狀態碼表示今天是公共假日
    When 網頁載入或國家選擇改變
    Then 今日假日檢查區塊顯示「今天是公共假日！」，並使用綠色標示及打勾圖示
    Given API 回傳非 200 狀態碼表示今天不是公共假日
    When 網頁載入或國家選擇改變
    Then 今日假日檢查區塊顯示「今天不是公共假日」，並使用灰色標示及警告圖示
    Given API 請求 /IsTodayPublicHoliday/{country} 發生錯誤
    When 網頁載入或國家選擇改變
    Then 今日假日檢查區塊顯示錯誤訊息

  Scenario: 全球假日區塊顯示未來7天內各國假日資訊
    When 網頁載入完成
    Then 請求 /NextPublicHolidaysWorldwide，並顯示未來7天內最多10筆假日資訊
    And 每筆假日顯示名稱、國家代碼、本地名稱及日期

  Scenario: 使用者切換國家與年份時，所有相關資料區塊皆刷新並顯示新資料
    Given 使用者選擇國家 "FR"
    And 使用者選擇年份 2025
    When 選擇變更
    Then 國家資訊區塊顯示法國相關資訊
    And 今日假日檢查區塊顯示法國今天是否為假日
    And 公共假日區塊顯示 2025 年法國的公共假日
    And 即將到來假日區塊顯示法國未來即將到來的假日
    And 長週末區塊顯示 2025 年法國長週末資訊

  Scenario: 所有資料區塊在 API 請求時顯示加載動畫
    Given 使用者選擇國家與年份導致多筆 API 請求啟動
    Then 每個資料區塊在對應 API 正在回應前，顯示轉圈加載動畫
    And 請求成功後隱藏加載動畫並顯示資料
    And 請求失敗時隱藏加載動畫並顯示錯誤訊息

  Scenario: 長週末區塊顯示請假資訊與橋接日（如有）
    Given API 回傳長週末資料中某筆有 needBridgeDay 為 true
    And bridgeDays 為非空陣列
    When 該長週末資料顯示於頁面
    Then 顯示「需要請假: 是」的紅色文字
    And 顯示所有橋接日日期（格式為中文年月日星期）

  Scenario: 國家資訊區塊顯示鄰國標籤（如有）
    Given API 回傳國家資訊中包含 borders 陣列
    When 國家資訊區塊渲染
    Then 鄰國應以藍色背景與文字標籤顯示
    And 每個鄰國標籤顯示鄰國的通用名稱

  Scenario: 下拉選單可正常選擇並觸發資料刷新
    Given 國家下拉選單中有多個國家選項
    When 使用者從下拉選單選擇不同國家
    Then 頁面自動刷新該國家相關資料
    Given 年份下拉選單中有 2020 至 2030 年
    When 使用者從下拉選單選擇不同年份
    Then 頁面自動刷新該年份相關資料

  Scenario: 假日類型標籤顯示正確
    Given 公共假日資料中某筆假日包含多個 types
    When 該假日資料渲染於公共假日列表
    Then 每個假日類型應以紫色背景與文字的小標籤顯示

  Scenario: 當 API 回傳空資料時，列表區塊顯示「無資料」
    Given API 回傳空陣列資料
    When 公共假日、即將到來假日、長週末或全球假日區塊渲染
    Then 該區塊顯示文字「無資料」

  Scenario: 日期格式顯示為中文年月日星期
    Given 假日或長週末日期資料存在
    When 日期顯示於頁面
    Then 日期格式應為「YYYY年M月D日 星期X」的格式（臺灣地區格式）

```