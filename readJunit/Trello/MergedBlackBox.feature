Feature: 合併 Trello 卡片流程與靜態驗證操作

Background:
  * url 'https://api.trello.com/1'
  * def apiKey = 'yourApiKey'
  * def token = 'yourToken'
  * def auth = { key: '#(apiKey)', token: '#(token)' }

Scenario: 建立看板 → 清單 → 卡片 → checklist → 檢查項目 + 加入成員與標籤

  # 建立看板
  Given path '/boards'
  And param key = apiKey
  And param token = token
  And request { name: '自動化測試看板' }
  When method post
  Then status 200
  * def boardId = response.id

  # 建立清單
  Given path '/lists'
  And param key = apiKey
  And param token = token
  And request { name: '待辦事項', idBoard: '#(boardId)' }
  When method post
  Then status 200
  * def listId = response.id

  # 建立卡片
  Given path '/cards'
  And param key = apiKey
  And param token = token
  And request { name: '整合測試卡片', desc: '測試整合流程', idList: '#(listId)' }
  When method post
  Then status 200
  * def cardId = response.id

  # 建立 checklist
  Given path '/cards/' + cardId + '/checklists'
  And param key = apiKey
  And param token = token
  And request { name: '測試檢查清單' }
  When method post
  Then match [200, 400] contains responseStatus
  * def checklistId = response.id

  # 新增檢查項目
  Given path '/checklists/' + checklistId + '/checkItems'
  And param key = apiKey
  And param token = token
  And request { name: '項目一', pos: 'top', checked: false }
  When method post
  Then status 200

  # 加入卡片成員（模擬 Static 中操作）
  Given path '/cards/' + cardId + '/idMembers'
  And param key = apiKey
  And param token = token
  And request { value: 'dummyMemberId' }
  When method post
  Then match [200, 400] contains responseStatus

  # 加入卡片標籤（模擬 Static 中操作）
  Given path '/cards/' + cardId + '/idLabels'
  And param key = apiKey
  And param token = token
  And request { value: 'dummyLabelId' }
  When method post
  Then match [200, 400] contains responseStatus
