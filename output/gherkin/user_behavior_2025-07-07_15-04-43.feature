以下是根據你提供的 `spotify-app.tsx` 前端程式碼所生成的 Gherkin 測試案例。這些測試案例涵蓋了主要的使用者流程與功能點，並且符合 BDD 最佳實踐：

```gherkin
Feature: Spotify Artist Explorer

  As a user,
  I want to search for an artist,
  So that I can view the artist's albums, top tracks, and related artists.

  Background:
    Given the Spotify Artist Explorer page is loaded

  Scenario: Initial page load shows welcome message
    Then I should see a welcome message prompting me to search for an artist
    And I should see a search input box
    And the albums, top tracks, and related artists sections should not be visible

  Scenario: Searching with an empty query should not trigger search
    When I clear the search input
    And I press the Enter key
    Then no loading indicator should be displayed
    And no artist information should be shown

  Scenario: Successfully searching for an artist displays artist data
    Given I enter "Coldplay" into the search input
    When I click the Search button
    Then I should see a loading indicator
    And after the loading finishes
    Then I should see the artist name "Coldplay"
    And I should see the number of followers displayed
    And I should see the artist popularity score
    And I should see a list of genres
    And I should see the Albums tab active by default
    And I should see a grid of albums with album names and release years
    And I should not see the welcome message

  Scenario: Switching between tabs shows respective content
    Given I have searched for an artist and the data is loaded
    When I click on the "Top Tracks" tab
    Then I should see a table of top tracks with track name, album, and duration
    When I click on the "Related Artists" tab
    Then I should see a grid of related artists with their names and follower counts
    When I click back on the "Albums" tab
    Then I should see the albums grid again

  Scenario: Tracks duration is formatted correctly
    Given I have searched for an artist and the data is loaded
    When I view the Top Tracks tab
    Then each track's duration should be displayed in "mm:ss" format

  Scenario: Loading indicator appears during artist data fetch
    When I search for an artist
    Then I should see a loading message until the data is loaded

  Scenario: Error message is displayed when an error occurs (simulated)
    Given the API call fails with an error
    When I search for an artist
    Then I should see an error message displayed in a red box

  # Optional: Keyboard search trigger
  Scenario: Pressing Enter triggers search
    Given I enter "Adele" into the search input
    When I press the Enter key
    Then the search should be triggered
    And the loading indicator should appear
```

---

### 說明：

- **Feature** 描述整體功能目標。
- **Background** 用於確保每個 Scenario 都從頁面載入狀態開始。
- Scenario 包含常見使用者行為：初始狀態、搜尋空白字串、搜尋成功、切換 Tab、格式化時間、顯示 loading、錯誤處理、鍵盤事件。
- 對於「API call fails」的情境，需在測試環境模擬錯誤回傳。
- 測試細節如「Albums tab 預設啟用」、「顯示歌手名稱、追蹤數、流派」與「音軌時間格式 mm:ss」均有涵蓋。

這些測試可用於 e2e (例如 Cypress, Playwright) 及整合測試，確保 UI 與使用者流程正常。