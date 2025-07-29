Feature: Trello Workflow - 建立完整卡片檢查清單流程

Background:
  * url 'https://api.trello.com/1'
  * def apiKey = 'yourApiKey'
  * def token = 'yourToken'
  * def auth = { key: '#(apiKey)', token: '#(token)' }

# --- 測試案例 1: 建立正常中間長度名稱的看板流程 ---
# Case 1: Valid 中間值
Scenario: #TC01 - 建立包含中間名稱長度的看板 → 清單 → 卡片 → 檢查清單 → 檢查項目
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: '工作進度看板' }
  When method post
  Then status 200
  * def boardId = response.id

  Given path '/lists'
  And param key = apiKey
  And param token = token
  And request { name: '待辦事項', idBoard: '#(boardId)' }
  When method post
  Then status 200
  * def listId = response.id

  Given path '/cards'
  And param key = apiKey
  And param token = token
  And request { name: '寫測試腳本', desc: '整合測試設計', idList: '#(listId)' }
  When method post
  Then status 200
  * def cardId = response.id

  Given path '/cards/' + cardId + '/checklists'
  And param key = apiKey
  And param token = token
  And request { name: '驗收清單' }
  When method post
  Then status 200
  * def checklistId = response.id

  Given path '/checklists/' + checklistId + '/checkItems'
  And param key = apiKey
  And param token = token
  And request { name: '功能測試通過' }
  When method post
  Then status 200

# --- 測試案例 2: 最大邊界值看板名稱 ---
# Case 2: Valid 最大值 (長度 16384)
Scenario: #TC02 - 建立最大長度看板名稱
  * def longName = 'A'.repeat(16384)
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: '#(longName)' }
  When method post
  Then status 200

# --- 測試案例 3: 最小合法值（單字） ---
# Case 3: Valid 最小值
Scenario: #TC03 - 建立最小名稱長度看板
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: 'A' }
  When method post
  Then status 200

# --- 測試案例 4: 名稱超過最大值 ---
# Case 4: Invalid - 長度遠大於邊界
Scenario: #TC04 - 看板名稱過長應失敗
  * def tooLong = 'A'.repeat(20000)
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: '#(tooLong)' }
  When method post
  Then match [400, 413] contains responseStatus

# --- 測試案例 5: 空白名稱（低於最小） ---
# Case 5: Invalid - 空字串
Scenario: #TC05 - 看板名稱為空白應失敗
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: '' }
  When method post
  Then match [400, 422] contains responseStatus

# --- 測試案例 6: 非字串格式名稱（數值） ---
# Case 6: Invalid - 格式錯誤
Scenario: #TC06 - 看板名稱為數值應失敗
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: 123456 }
  When method post
  Then match [400, 422] contains responseStatus
