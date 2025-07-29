```gherkin
Feature: CircleCI API Manager Frontend

  Background:
    Given the user opens the CircleCI API Manager frontend
    And the API token is not set

  # API Token 設定與使用者資訊取得
  Scenario: Set API Token and retrieve current user info
    When the user inputs a valid CircleCI API Token
    And clicks the "連接" button
    Then the system should call the GET /me API endpoint with the API Token
    And the system displays the current user's login name in the header and user info panel
    And the system loads the projects list and recent builds

  Scenario: Attempt API call without API Token
    When the user tries to perform any API action without setting API Token
    Then the system should alert "請先設定 API Token"
    And no API call is made

  # 專案列表及選擇專案
  Scenario: Retrieve and display projects list
    Given the API Token is set and valid
    When the user clicks the "重新整理" button in the projects list panel
    Then the system calls GET /projects API endpoint
    And the projects list is updated with the returned projects
    And each project displays reponame, username, and language

  Scenario: Select a project from the list
    Given the projects list is displayed
    When the user clicks on a project item
    Then the selected project panel displays the project details: "username/reponame", language, and default branch
    And the system calls GET /project/{username}/{project}/envvar and GET /project/{username}/{project}/checkout-key to load environment variables and checkout keys

  # 建置與建置詳情
  Scenario: Trigger a build without specifying branch
    Given a project is selected
    When the user clicks "觸發建置" in the overview tab's 快速操作區域
    Then the system calls POST /project/{username}/{project} with build parameters if any

  Scenario: Trigger a build on a specified branch
    Given a project is selected
    When the user navigates to the builds tab
    And inputs a branch name
    And clicks the "在指定分支觸發" button
    Then the system calls POST /project/{username}/{project}/tree/{branch} with the specified branch and build parameters

  Scenario: View recent builds filtered by selected project
    Given recent builds are loaded
    When the user views the overview tab
    Then the system displays up to 5 recent builds filtered by selected project's username and reponame
    And each build displays build number, branch, status badge (based on status/outcome)
    And for each build:
      - If status is "running", show "取消" button
      - If status is "failed" or "canceled", show "重試" button
      - Always show "詳情" button

  Scenario: View build details
    Given a recent build is displayed
    When the user clicks the "詳情" button on a build
    Then the system calls GET /project/{username}/{project}/{build_num}
    And the build details are shown in the builds tab below the trigger section

  Scenario: Cancel a running build
    Given a build is in "running" status
    When the user clicks the "取消" button for that build
    Then the system calls POST /project/{username}/{project}/{build_num}/cancel

  Scenario: Retry a failed or canceled build
    Given a build is in "failed" or "canceled" status
    When the user clicks the "重試" button for that build
    Then the system calls POST /project/{username}/{project}/{build_num}/retry

  Scenario: Retrieve build artifacts and tests
    Given build details are displayed
    When the user clicks the "產物" button
    Then the system calls GET /project/{username}/{project}/{build_num}/artifacts

    When the user clicks the "測試" button
    Then the system calls GET /project/{username}/{project}/{build_num}/tests

  # 環境變數管理
  Scenario: View existing environment variables
    Given a project is selected
    When the user navigates to the "環境變數" tab
    Then the system calls GET /project/{username}/{project}/envvar
    And the environment variables list is shown with names and masked values

  Scenario: Add a new environment variable
    Given the user is in the "環境變數" tab with a project selected
    When the user inputs a variable name and value
    And clicks the add button (plus icon)
    Then the system calls POST /project/{username}/{project}/envvar with the new variable
    And the environment variables list is refreshed to include the new variable
    And the input fields are cleared

  Scenario: Delete an environment variable
    Given environment variables are listed
    When the user clicks the delete (trash) button beside an environment variable
    Then the system calls DELETE /project/{username}/{project}/envvar/{name}
    And the environment variables list is refreshed without the deleted variable

  # 金鑰管理
  Scenario: View checkout keys
    Given a project is selected
    When the user navigates to the "金鑰管理" tab
    Then the system calls GET /project/{username}/{project}/checkout-key
    And the checkout keys list is displayed with type, fingerprint, and creation time

  Scenario: Add a new checkout key
    Given the user is in the "金鑰管理" tab with a project selected
    When the user selects a key type ("Deploy Key" or "GitHub User Key")
    And clicks the "新增金鑰" button
    Then the system calls POST /project/{username}/{project}/checkout-key with the selected key type
    And the checkout keys list is refreshed to include the new key

  Scenario: Delete a checkout key
    Given checkout keys are listed
    When the user clicks the delete (trash) button beside a checkout key
    Then the system calls DELETE /project/{username}/{project}/checkout-key/{fingerprint}
    And the checkout keys list is refreshed without the deleted key

  Scenario: Add an SSH key
    Given the user is in the "金鑰管理" tab with a project selected
    When the user inputs hostname and private key
    And clicks the "新增 SSH 金鑰" button
    Then the system calls POST /project/{username}/{project}/ssh-key with hostname and private_key
    And the SSH key input fields are cleared

  # 快取管理
  Scenario: Clear build cache for a project
    Given a project is selected
    When the user navigates to the "快取" tab
    And clicks the "清除建置快取" button
    Then the system calls DELETE /project/{username}/{project}/build-cache

  # API 回應顯示與載入指示器
  Scenario: Display API response after an API call
    When any API call is made
    Then the API response panel is displayed
    And the panel shows the HTTP method, endpoint, status code, and JSON-formatted response data
    And if the status is an error or HTTP status >= 400, the status text is red
    Otherwise, the status text is green

  Scenario: Show loading indicator during API calls
    When an API call is in progress
    Then a modal loading indicator with spinner and "載入中..." text is visible
    And user interactions outside the modal are blocked

  # Error handling
  Scenario: API call failure handling
    Given an API call fails due to network or server error
    Then the API response panel shows status "error"
    And the error message is displayed in the response data

  # Tab switching
  Scenario: Switch between tabs in project detail view
    Given a project is selected
    When the user clicks on different tabs: "總覽", "建置", "環境變數", "金鑰管理", "快取"
    Then the content area updates to the corresponding tab content
    And the active tab button is highlighted

  # Initial loading
  Scenario: Initial data loading after API Token is set
    Given the user sets a valid API Token
    Then the system automatically calls GET /me, GET /projects, and GET /recent-builds
    And displays user info, projects list, and recent builds

  Scenario: Load environment variables and checkout keys when project selected
    Given the user selects a project
    Then the system calls GET /project/{username}/{project}/envvar and GET /project/{username}/{project}/checkout-key
    And displays the environment variables and checkout keys in their respective tabs

```
---

此 Gherkin 文件涵蓋了前端所有主要功能與使用流程，包括 API Token 設定、專案列表管理、建置操作、環境變數、金鑰管理、快取管理、API 回應顯示、載入指示器與錯誤處理，符合 BDD 最佳實踐且具體完整。