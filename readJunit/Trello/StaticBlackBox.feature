Feature: Trello API Workflow Integration Tests

  # 001 - Scenario for valid-middle

  Scenario: valid-middle input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'a1'
    * def idChecklist = 'a1'
    * def idCheckItem = 'a1'
    * def idLabel = 'a1'
    * def idMember = 'a1'
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 002 - Scenario for valid-max

  Scenario: valid-max input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 003 - Scenario for valid-min

  Scenario: valid-min input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'x'
    * def idChecklist = 'x'
    * def idCheckItem = 'x'
    * def idLabel = 'x'
    * def idMember = 'x'
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 004 - Scenario for invalid-overmax

  Scenario: invalid-overmax input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 005 - Scenario for invalid-undermin

  Scenario: invalid-undermin input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = ''
    * def idChecklist = ''
    * def idCheckItem = ''
    * def idLabel = ''
    * def idMember = ''
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 006 - Scenario for invalid-format

  Scenario: invalid-format input path through Card Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = '@@@'
    * def idChecklist = '@@@'
    * def idCheckItem = '@@@'
    * def idLabel = '@@@'
    * def idMember = '@@@'
    Given url 'https://api.trello.com/1/cards'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idMembers'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/desc'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/closed'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus

  # 007 - Scenario for valid-middle

  Scenario: valid-middle input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'a1'
    * def idChecklist = 'a1'
    * def idCheckItem = 'a1'
    * def idLabel = 'a1'
    * def idMember = 'a1'
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 008 - Scenario for valid-max

  Scenario: valid-max input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 009 - Scenario for valid-min

  Scenario: valid-min input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'x'
    * def idChecklist = 'x'
    * def idCheckItem = 'x'
    * def idLabel = 'x'
    * def idMember = 'x'
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 010 - Scenario for invalid-overmax

  Scenario: invalid-overmax input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 011 - Scenario for invalid-undermin

  Scenario: invalid-undermin input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = ''
    * def idChecklist = ''
    * def idCheckItem = ''
    * def idLabel = ''
    * def idMember = ''
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 012 - Scenario for invalid-format

  Scenario: invalid-format input path through Checklist Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = '@@@'
    * def idChecklist = '@@@'
    * def idCheckItem = '@@@'
    * def idLabel = '@@@'
    * def idMember = '@@@'
    Given url 'https://api.trello.com/1/checklists'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)/state'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method put
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/checklist/#(idChecklist)/checkItem/#(idCheckItem)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus

  # 013 - Scenario for valid-middle

  Scenario: valid-middle input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'a1'
    * def idChecklist = 'a1'
    * def idCheckItem = 'a1'
    * def idLabel = 'a1'
    * def idMember = 'a1'
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-middle' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 014 - Scenario for valid-max

  Scenario: valid-max input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-max' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 015 - Scenario for valid-min

  Scenario: valid-min input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'x'
    * def idChecklist = 'x'
    * def idCheckItem = 'x'
    * def idLabel = 'x'
    * def idMember = 'x'
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test valid-min' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 016 - Scenario for invalid-overmax

  Scenario: invalid-overmax input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idChecklist = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idCheckItem = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idLabel = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    * def idMember = 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-overmax' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 017 - Scenario for invalid-undermin

  Scenario: invalid-undermin input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = ''
    * def idChecklist = ''
    * def idCheckItem = ''
    * def idLabel = ''
    * def idMember = ''
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-undermin' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus


  # 018 - Scenario for invalid-format

  Scenario: invalid-format input path through Label Flow
    * def key = 'dummyKey'
    * def token = 'dummyToken'
    * def idCard = '@@@'
    * def idChecklist = '@@@'
    * def idCheckItem = '@@@'
    * def idLabel = '@@@'
    * def idMember = '@@@'
    Given url 'https://api.trello.com/1/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/labels'
    And param key = key
    And param token = token
    And request { name: 'Test invalid-format' }
    When method post
    Then match [200, 400] contains responseStatus

    Given url 'https://api.trello.com/1/cards/#(idCard)/idLabels/#(idLabel)'
    And param key = key
    And param token = token
    When method delete
    Then match [200, 400] contains responseStatus

