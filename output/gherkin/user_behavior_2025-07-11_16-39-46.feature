```gherkin
Feature: Basketball Dashboard Frontend Functionalities

  Background:
    Given the Basketball Dashboard is loaded with mock data:
      | Countries          | Leagues           | Teams              | Matches           | Highlights                |
      | US, AU, CN, ES, FR | NBA, NBL, CBA, ACB, LNB | Lakers, Warriors, Celtics, Sydney Kings, Melbourne United | Match1 (Lakers vs Warriors), Match2 (Celtics vs Lakers) | 2 highlights for Match1 |

  # Overview Tab and Navigation

  Scenario: User views the overview tab data summary
    When the user opens the dashboard on the "總覽" tab
    Then the user sees the count of support countries as 5
    And the user sees the count of active leagues as 5
    And the user sees the count of matches as 2
    And the user sees the count of highlights as 2

  Scenario: User navigates between tabs
    When the user clicks on the "國家" tab
    Then the country selector panel is visible with 5 countries
    When the user clicks on the "聯賽" tab
    Then the country selector and league selector panels are visible
    When the user clicks on the "球隊" tab
    Then the country selector, league selector and team list are visible
    When the user clicks on the "比賽" tab
    Then the country selector, league selector and match list are visible
    When the user clicks on the "精彩片段" tab
    Then the highlights list panel is visible with 2 highlights
    When the user clicks on the "統計" tab
    Then the country selector, league selector and statistics panel are visible
    When the user clicks on the "賠率" tab
    Then the match list and odds panel are visible

  # Country Selection

  Scenario: User selects a country
    Given the "國家" tab is active
    When the user clicks the country button "United States"
    Then the selected country is "United States"
    And the league selector filters leagues to those in USA (NBA only)
    And the team list filters teams to those in the USA leagues (Lakers, Warriors, Celtics)
    And the match list filters matches to those in USA leagues

  Scenario: Selecting a different country resets league and team selections
    Given the user has selected country "United States" and league "NBA"
    When the user selects country "Australia"
    Then the selected league is cleared
    And the selected team is cleared
    And the league selector filters leagues to those in Australia (NBL)
    And the team list is empty or shows teams in Australia leagues

  # League Selection

  Scenario: User selects a league after selecting a country
    Given the user has selected country "United States"
    When the user clicks the league button "NBA"
    Then the selected league is "NBA"
    And the team list filters teams to those in NBA (Lakers, Warriors, Celtics)
    And the match list filters matches to those in NBA

  Scenario: Selecting a league resets team selection
    Given the user has selected league "NBA" and team "Lakers"
    When the user selects league "NBL"
    Then the selected team is cleared
    And the selected league is "NBL"
    And the team list updates to teams in NBL (Sydney Kings, Melbourne United)

  # Team Selection

  Scenario: User selects a team after selecting a league
    Given the user has selected league "NBA"
    When the user clicks the team button "Lakers"
    Then the selected team is "Lakers"

  # Match Selection

  Scenario: User selects a match after selecting a league
    Given the user has selected league "NBA"
    When the user clicks the match where home team is "Lakers" and away team is "Warriors"
    Then the selected match is that match
    And the statistics panel updates to show this match's details
    And the odds panel updates to show this match's odds

  Scenario: Clicking on a match highlights the match and updates statistics and odds
    Given the user has selected league "NBA"
    When the user selects a match with home team "Celtics" and away team "Lakers"
    Then the match list highlights this match
    And the statistics panel shows "Not started" status and score "0 - 0"
    And the odds panel shows odds for Celtics and Lakers

  # Highlights Viewing

  Scenario: User views highlights list
    Given the "精彩片段" tab is active
    Then the user sees a list of highlights
    And each highlight shows title, type "VERIFIED", source "youtube", and an eye button labeled "觀看片段"
    When the user clicks the "觀看片段" button on a highlight
    Then the highlight video should be viewable (external behavior, mock confirmed)

  # Statistics Panel

  Scenario: Statistics panel shows messages when no selection
    Given the "統計" tab is active
    And no match is selected
    Then the match statistics section shows "請選擇一場比賽"
    And no match details are shown
    And no team is selected
    Then the team statistics section shows "請選擇一支球隊"
    And no team details are shown
    And no league is selected
    Then the league standings section shows "請選擇一個聯賽"

  Scenario: Statistics panel shows match details after match selection
    Given the user has selected a match "Lakers vs Warriors"
    When the "統計" tab is active
    Then the match statistics section shows:
      | 比賽ID    | 1            |
      | 狀態      | Finished     |
      | 比分      | 110 - 108    |
    And a button labeled "查看詳細統計" is visible

  Scenario: Statistics panel shows team details after team selection
    Given the user has selected team "Lakers"
    When the "統計" tab is active
    Then the team statistics section shows the team name and logo "💜 Lakers"
    And buttons "查看球隊統計" and "最近五場比賽" are visible

  Scenario: Statistics panel shows league details after league selection
    Given the user has selected league "NBA"
    When the "統計" tab is active
    Then the league standings section shows league name "NBA" and season "2024"
    And a button labeled "查看排名表" is visible

  # Odds and Bookmakers Panel

  Scenario: Odds panel shows bookmakers list
    Given the "賠率" tab is active
    Then the bookmakers section lists "Bet365", "William Hill", "Ladbrokes", "Paddy Power"
    And each bookmaker has a "查看賠率" button

  Scenario: Odds panel shows odds trend for selected match
    Given the user has selected match "Lakers vs Warriors"
    When the "賠率" tab is active
    Then the odds trend shows home team "Lakers" with odds 1.85
    And away team "Warriors" with odds 1.95
    And a button "查看所有賠率" is visible

  Scenario: Odds panel shows prompt when no match selected
    Given no match is selected
    When the user opens the "賠率" tab
    Then a message "請選擇一場比賽" is shown in the odds trend section

  # Selection Summary Panel

  Scenario: Selection summary panel displays current selections
    Given the user has selected country "United States", league "NBA", team "Lakers", and match "Lakers vs Warriors"
    When the dashboard is visible
    Then the selection summary panel shows:
      | 國家 | 🇺🇸 United States |
      | 聯賽 | 🏀 NBA           |
      | 球隊 | 💜 Lakers        |
      | 比賽 | Lakers vs Warriors |

  Scenario: Selection summary panel hides when no selections
    Given no country, league, team or match is selected
    Then the selection summary panel is not visible

  # Reset Selections on Higher Level Change

  Scenario: Changing country resets league, team, and match selections
    Given the user has selected country "United States", league "NBA", team "Lakers", and match "Lakers vs Warriors"
    When the user selects country "Australia"
    Then the selected league, team, and match are cleared
    And the league selector shows leagues in Australia only

  Scenario: Changing league resets team and match selections
    Given the user has selected league "NBA", team "Lakers", and match "Lakers vs Warriors"
    When the user selects league "NBL"
    Then the selected team and match are cleared
    And the team list updates to teams in NBL
    And the match list updates to matches in NBL

  # UI Interaction

  Scenario: User sees visual feedback on selected items
    Given the user selects country "United States"
    Then the country button "United States" has active styles (blue border, background, text)
    When the user selects league "NBA"
    Then the league button "NBA" has active styles
    When the user selects team "Lakers"
    Then the team button "Lakers" has active styles
    When the user selects match "Lakers vs Warriors"
    Then the match card for that match has active border and background

  # Date Formatting Check

  Scenario: Match dates are displayed in correct localized format
    Given a match with date "2024-07-15T20:00:00.000Z"
    When the match list is rendered
    Then the date is displayed in "yyyy年M月d日 HH:mm" format in zh-TW locale

```
---

以上 Gherkin 測試案例涵蓋了前端所有主要功能模組、用戶互動流程與狀態變更，確保：

- 各 tabs 切換與內容正確顯示
- 各選擇器（國家、聯賽、球隊、比賽）功能完整且互相影響正確
- 統計、賠率和精彩片段面板顯示內容符合選擇狀態
- 選擇摘要面板反映當前用戶選擇
- UI 狀態樣式隨選擇更新
- 日期格式本地化顯示正確

測試人員可依此進行手動或自動化驗證，確保前端功能符合預期。