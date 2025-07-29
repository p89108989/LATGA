Feature: 多個 JUnit 轉換為 Karate

Background:
  * url 'https://trello.com/1/'

# 原始檔案: TestId_10012_deleteCardsAttachmentsByIdCardByIdAttachment_20250508034936215.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_10012_deleteCardsAttachmentsByIdCardByIdAttachment_20250508034936215 (Order: 10012)
  * def idAttachment = "http:nxg.nkmnt.me"
  * def idCard = "prowl"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10033_deleteCardsLabelsByIdCardByColor_20250508034942963.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_10033_deleteCardsLabelsByIdCardByColor_20250508034942963 (Order: 10033)
  * def color = "J"
  * def idCard = "ungill"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10049_deleteCardsIdMembersByIdCardByIdMember_20250508034949431.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_10049_deleteCardsIdMembersByIdCardByIdMember_20250508034949431 (Order: 10049)
  * def idCard = "unbeginningly"
  * def idMember = "6e15:466e:be83:41a7:3eae:9f2c:8625:79f9"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10071_deleteCardsIdLabelsByIdCardByIdLabel_20250508034955932.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_10071_deleteCardsIdLabelsByIdCardByIdLabel_20250508034955932 (Order: 10071)
  * def idCard = "RPN chimbleys"
  * def idLabel = "dorsi"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10075_deleteCardsIdLabelsByIdCardByIdLabel_20250508034955934.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_10075_deleteCardsIdLabelsByIdCardByIdLabel_20250508034955934 (Order: 10075)
  * def idCard = "ary"
  * def idLabel = "88a0:87ca:d34a:2434:e4e9:f0de:8c15:4e0c"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10105_getBatch_20250508035009336.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_10105_getBatch_20250508035009336 (Order: 10105)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10117_getBatch_20250508035009343.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_10117_getBatch_20250508035009343 (Order: 10117)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10132_getNotificationsCardByIdNotification_20250508035016082.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_10132_getNotificationsCardByIdNotification_20250508035016082 (Order: 10132)
  * def idNotification = "noncuriosity"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10150_getLabelsBoardByIdLabelByField_20250508035022613.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_10150_getLabelsBoardByIdLabelByField_20250508035022613 (Order: 10150)
  * def field = "an-"
  * def idLabel = "7156355936"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10164_getChecklistsBoardByIdChecklist_20250508035029157.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_10164_getChecklistsBoardByIdChecklist_20250508035029157 (Order: 10164)
  * def idChecklist = "B"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1018_addListsArchiveAllCardsByIdList_20250508025928689.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_1018_addListsArchiveAllCardsByIdList_20250508025928689 (Order: 1018)
  * def idList = "X"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10215_getMembersBoardsByIdMemberByFilter_20250508035042574.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_10215_getMembersBoardsByIdMemberByFilter_20250508035042574 (Order: 10215)
  * def filter = "Limnophilidae"
  * def idMember = "nonanarchistic"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10232_getChecklistsCardsByIdChecklistByFilter_20250508035049078.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards/{filter}
Scenario: test_TestId_10232_getChecklistsCardsByIdChecklistByFilter_20250508035049078 (Order: 10232)
  * def filter = "regulatress"
  * def idChecklist = "897-92-161"
  Given path 'checklists/<idChecklist>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10249_getBoardsCardsByIdBoardByFilter_20250508035057437.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_10249_getBoardsCardsByIdBoardByFilter_20250508035057437 (Order: 10249)
  * def filter = "20100613"
  * def idBoard = "detubation"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10261_getNotificationsBoardByIdNotification_20250508035103964.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_10261_getNotificationsBoardByIdNotification_20250508035103964 (Order: 10261)
  * def idNotification = "golfed"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10272_getNotificationsBoardByIdNotification_20250508035103969.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_10272_getNotificationsBoardByIdNotification_20250508035103969 (Order: 10272)
  * def idNotification = "deadeyes"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10291_getLabelsByIdLabel_20250508035110505.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_10291_getLabelsByIdLabel_20250508035110505 (Order: 10291)
  * def idLabel = "989173072"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10311_getLabelsBoardByIdLabel_20250508035117651.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_10311_getLabelsBoardByIdLabel_20250508035117651 (Order: 10311)
  * def idLabel = "hDuoNP"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10336_getActionsCardByIdActionByField_20250508035124230.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_10336_getActionsCardByIdActionByField_20250508035124230 (Order: 10336)
  * def field = "B legibl"
  * def idAction = "14.237.58.92"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10352_getListsCardsByIdListByFilter_20250508035130638.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_10352_getListsCardsByIdListByFilter_20250508035130638 (Order: 10352)
  * def filter = "58cb90a7e1"
  * def idList = "unreliability"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10363_getActionsBoardByIdAction_20250508035137156.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_10363_getActionsBoardByIdAction_20250508035137156 (Order: 10363)
  * def idAction = "ckSW8Gj+pOIfh"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10390_getCardsCheckItemStatesByIdCard_20250508035143652.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_10390_getCardsCheckItemStatesByIdCard_20250508035143652 (Order: 10390)
  * def idCard = "Iyar"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10405_getNotificationsBoardByIdNotificationByField_20250508035150187.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_10405_getNotificationsBoardByIdNotificationByField_20250508035150187 (Order: 10405)
  * def field = "FPVìHtTIsT7_ft7ajHSuyZMM7"
  * def idNotification = "Scripturalism"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10429_getActionsBoardByIdActionByField_20250508035156732.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_10429_getActionsBoardByIdActionByField_20250508035156732 (Order: 10429)
  * def field = "engysseismology"
  * def idAction = "neologianism"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10448_getCardsBoardByIdCard_20250508035203262.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_10448_getCardsBoardByIdCard_20250508035203262 (Order: 10448)
  * def idCard = "VAV"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10452_getCardsBoardByIdCard_20250508035203264.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_10452_getCardsBoardByIdCard_20250508035203264 (Order: 10452)
  * def idCard = ""
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10470_getMembersBoardsInvitedByIdMember_20250508035210375.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_10470_getMembersBoardsInvitedByIdMember_20250508035210375 (Order: 10470)
  * def idMember = "a"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10489_getMembersBoardsInvitedByIdMemberByField_20250508035218738.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_10489_getMembersBoardsInvitedByIdMemberByField_20250508035218738 (Order: 10489)
  * def field = "(+9535) 41047725128"
  * def idMember = "20100210"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10515_getActionsCardByIdAction_20250508035226255.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_10515_getActionsCardByIdAction_20250508035226255 (Order: 10515)
  * def idAction = "dup I"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10532_getChecklistsBoardByIdChecklistByField_20250508035232744.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_10532_getChecklistsBoardByIdChecklistByField_20250508035232744 (Order: 10532)
  * def field = "cubhood"
  * def idChecklist = "J964W2N2exjuf"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10551_getCardsListByIdCard_20250508035239295.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_10551_getCardsListByIdCard_20250508035239295 (Order: 10551)
  * def idCard = "Midlander"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10566_getCardsListByIdCardByField_20250508035245798.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_10566_getCardsListByIdCardByField_20250508035245798 (Order: 10566)
  * def field = "ESMD"
  * def idCard = "20130523"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10594_getNotificationsCardByIdNotificationByField_20250508035252331.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_10594_getNotificationsCardByIdNotificationByField_20250508035252331 (Order: 10594)
  * def field = "GC"
  * def idNotification = "y"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10610_getCardsBoardByIdCardByField_20250508035258896.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_10610_getCardsBoardByIdCardByField_20250508035258896 (Order: 10610)
  * def field = "Pro-oriental"
  * def idCard = "m"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10626_getListsBoardByIdListByField_20250508035305461.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_10626_getListsBoardByIdListByField_20250508035305461 (Order: 10626)
  * def field = "0023 5772157"
  * def idList = "xvH9Fm5atbGIv0dJI"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1063_addCardsIdLabelsByIdCard_20250508025948294.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_1063_addCardsIdLabelsByIdCard_20250508025948294 (Order: 1063)
  * def idCard = "hypophloeodic J T"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10661_getOrganizationsBoardsByIdOrgByFilter_20250508035320973.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_10661_getOrganizationsBoardsByIdOrgByFilter_20250508035320973 (Order: 10661)
  * def filter = "hyperinsulinization"
  * def idOrg = "6071307021"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10673_getOrganizationsBoardsByIdOrgByFilter_20250508035320979.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_10673_getOrganizationsBoardsByIdOrgByFilter_20250508035320979 (Order: 10673)
  * def filter = "v8bjxhBy"
  * def idOrg = "GGP"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10686_getCardsAttachmentsByIdCardByIdAttachment_20250508035327511.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_10686_getCardsAttachmentsByIdCardByIdAttachment_20250508035327511 (Order: 10686)
  * def idAttachment = "20110203"
  * def idCard = "autocrator"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10710_getCardsAttachmentsByIdCard_20250508035334039.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_10710_getCardsAttachmentsByIdCard_20250508035334039 (Order: 10710)
  * def idCard = "20150708"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10734_getListsByIdList_20250508035340579.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_10734_getListsByIdList_20250508035340579 (Order: 10734)
  * def idList = "B"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10744_getChecklistsByIdChecklist_20250508035347704.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_10744_getChecklistsByIdChecklist_20250508035347704 (Order: 10744)
  * def idChecklist = "four-times-accented"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10761_getCardsChecklistsByIdCard_20250508035354189.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_10761_getCardsChecklistsByIdCard_20250508035354189 (Order: 10761)
  * def idCard = "+2767-66633618852"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10779_getCardsChecklistsByIdCard_20250508035354198.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_10779_getCardsChecklistsByIdCard_20250508035354198 (Order: 10779)
  * def idCard = "zo"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10797_getActionsByIdAction_20250508035400741.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_10797_getActionsByIdAction_20250508035400741 (Order: 10797)
  * def idAction = "monopitch NR"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10812_getOrganizationsBoardsByIdOrg_20250508035407252.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_10812_getOrganizationsBoardsByIdOrg_20250508035407252 (Order: 10812)
  * def idOrg = "somedays"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10831_getMembersCardsByIdMember_20250508035413788.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_10831_getMembersCardsByIdMember_20250508035413788 (Order: 10831)
  * def idMember = "hawk's-eye"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10855_getChecklistsCardsByIdChecklist_20250508035420336.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_10855_getChecklistsCardsByIdChecklist_20250508035420336 (Order: 10855)
  * def idChecklist = "H"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10873_getBoardsCardsByIdBoard_20250508035426893.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_10873_getBoardsCardsByIdBoard_20250508035426893 (Order: 10873)
  * def idBoard = "corrupt"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10898_getListsCardsByIdList_20250508035433442.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_10898_getListsCardsByIdList_20250508035433442 (Order: 10898)
  * def idList = "kits"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10912_getCardsActionsByIdCard_20250508035440035.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_10912_getCardsActionsByIdCard_20250508035440035 (Order: 10912)
  * def idCard = "70.130.158.76"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10929_getNotificationsByIdNotification_20250508035446532.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_10929_getNotificationsByIdNotification_20250508035446532 (Order: 10929)
  * def idNotification = "m8cAbbp-"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10942_getListsActionsByIdList_20250508035453068.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_10942_getListsActionsByIdList_20250508035453068 (Order: 10942)
  * def idList = "AFL"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10972_getOrganizationsActionsByIdOrg_20250508035459967.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_10972_getOrganizationsActionsByIdOrg_20250508035459967 (Order: 10972)
  * def idOrg = "overspecialization"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1098_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508025956132.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_1098_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508025956132 (Order: 1098)
  * def idCard = "c3f63fbc-c202-40fd-9e28-7be1da5777b9"
  * def idChecklist = "celiolymph"
  * def idCheckItem = "SokSCgGmoBd"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11004_getBoardsCardsByIdBoardByIdCard_20250508035513284.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_11004_getBoardsCardsByIdBoardByIdCard_20250508035513284 (Order: 11004)
  * def idBoard = "belfry"
  * def idCard = "OUN@"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1100_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508025956134.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_1100_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508025956134 (Order: 1100)
  * def idCard = "intermeddle"
  * def idChecklist = "reapproved"
  * def idCheckItem = "didymolite"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11033_getCardsByIdCard_20250508035519828.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_11033_getCardsByIdCard_20250508035519828 (Order: 11033)
  * def idCard = "WV"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11050_getOrganizationsByIdOrg_20250508035526338.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_11050_getOrganizationsByIdOrg_20250508035526338 (Order: 11050)
  * def idOrg = "libeler"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1106_addLabels_20250508030002727.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_1106_addLabels_20250508030002727 (Order: 1106)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11083_addNotificationsAllRead_20250508035540072.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_11083_addNotificationsAllRead_20250508035540072 (Order: 11083)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11107_addListsArchiveAllCardsByIdList_20250508035546630.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_11107_addListsArchiveAllCardsByIdList_20250508035546630 (Order: 11107)
  * def idList = "11.86.143.178"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11131_addCardsIdMembersByIdCard_20250508035553132.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_11131_addCardsIdMembersByIdCard_20250508035553132 (Order: 11131)
  * def idCard = "awash"
  Given path 'cards/<idCard>/idMembers'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11142_addCardsActionsCommentsByIdCard_20250508035559995.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_11142_addCardsActionsCommentsByIdCard_20250508035559995 (Order: 11142)
  * def idCard = "ANG"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11169_addCardsIdLabelsByIdCard_20250508035606487.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_11169_addCardsIdLabelsByIdCard_20250508035606487 (Order: 11169)
  * def idCard = "semisaint"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11186_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508035612960.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_11186_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508035612960 (Order: 11186)
  * def idCard = "DSTN"
  * def idChecklist = "BFDC"
  * def idCheckItem = "Orly"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11198_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508035612966.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_11198_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508035612966 (Order: 11198)
  * def idCard = "craber"
  * def idChecklist = "outfish"
  * def idCheckItem = "8P,"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11224_addCardsChecklistsByIdCard_20250508035626033.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_11224_addCardsChecklistsByIdCard_20250508035626033 (Order: 11224)
  * def idCard = "bicolourous"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11231_addCardsChecklistsByIdCard_20250508035626035.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_11231_addCardsChecklistsByIdCard_20250508035626035 (Order: 11231)
  * def idCard = "Dorris"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11250_addCardsLabelsByIdCard_20250508035632530.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_11250_addCardsLabelsByIdCard_20250508035632530 (Order: 11250)
  * def idCard = "eag"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11262_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508035639075.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_11262_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508035639075 (Order: 11262)
  * def idCard = "nonagglutinant"
  * def idChecklist = "directness"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11290_addCardsAttachmentsByIdCard_20250508035646972.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_11290_addCardsAttachmentsByIdCard_20250508035646972 (Order: 11290)
  * def idCard = "disillusionis"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11299_addCardsAttachmentsByIdCard_20250508035646976.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_11299_addCardsAttachmentsByIdCard_20250508035646976 (Order: 11299)
  * def idCard = "h's"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11328_addLists_20250508035700433.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_11328_addLists_20250508035700433 (Order: 11328)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11337_addLists_20250508035700436.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_11337_addLists_20250508035700436 (Order: 11337)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11367_addOrganizations_20250508035714486.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_11367_addOrganizations_20250508035714486 (Order: 11367)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11381_addCards_20250508035721031.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_11381_addCards_20250508035721031 (Order: 11381)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11400_addCards_20250508035721042.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_11400_addCards_20250508035721042 (Order: 11400)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11421_updateCardsIdListByIdCard_20250508035734677.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_11421_updateCardsIdListByIdCard_20250508035734677 (Order: 11421)
  * def idCard = "U L"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11437_updateCardsIdListByIdCard_20250508035734683.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_11437_updateCardsIdListByIdCard_20250508035734683 (Order: 11437)
  * def idCard = "00023164921"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11442_updateCardsIdMembersByIdCard_20250508035741196.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_11442_updateCardsIdMembersByIdCard_20250508035741196 (Order: 11442)
  * def idCard = "Ku"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11463_updateCardsDescByIdCard_20250508035747740.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_11463_updateCardsDescByIdCard_20250508035747740 (Order: 11463)
  * def idCard = "m "
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1147_addCardsLabelsByIdCard_20250508030016509.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_1147_addCardsLabelsByIdCard_20250508030016509 (Order: 1147)
  * def idCard = "P"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11512_updateCardsDueByIdCard_20250508035800815.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_11512_updateCardsDueByIdCard_20250508035800815 (Order: 11512)
  * def idCard = "+322081794980207"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1152_addCardsLabelsByIdCard_20250508030016510.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_1152_addCardsLabelsByIdCard_20250508030016510 (Order: 1152)
  * def idCard = "legible"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11532_updateNotificationsByIdNotification_20250508035807320.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_11532_updateNotificationsByIdNotification_20250508035807320 (Order: 11532)
  * def idNotification = "sing-song"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11553_updateCardsIdAttachmentCoverByIdCard_20250508035813887.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_11553_updateCardsIdAttachmentCoverByIdCard_20250508035813887 (Order: 11553)
  * def idCard = "prosupport"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11578_updateLabelsColorByIdLabel_20250508035820351.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_11578_updateLabelsColorByIdLabel_20250508035820351 (Order: 11578)
  * def idLabel = "imbat"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11602_updateActionsByIdAction_20250508035833361.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_11602_updateActionsByIdAction_20250508035833361 (Order: 11602)
  * def idAction = "woady"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11611_updateActionsByIdAction_20250508035833365.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_11611_updateActionsByIdAction_20250508035833365 (Order: 11611)
  * def idAction = "Streetman"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11624_updateCardsIdBoardByIdCard_20250508035839888.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_11624_updateCardsIdBoardByIdCard_20250508035839888 (Order: 11624)
  * def idCard = "cfcd:cb00:5b63:d28d:7338:3cbf:2abc:78ed"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11653_updateCardsActionsCommentsByIdCardByIdAction_20250508035846392.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_11653_updateCardsActionsCommentsByIdCardByIdAction_20250508035846392 (Order: 11653)
  * def idCard = "10:30:22"
  * def idAction = "4580160110"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11675_updateLabelsByIdLabel_20250508035852878.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_11675_updateLabelsByIdLabel_20250508035852878 (Order: 11675)
  * def idLabel = "microcoria"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11693_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508035859386.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_11693_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508035859386 (Order: 11693)
  * def idCard = "Proto-Indo-European"
  * def idChecklist = "biodegradabilities"
  * def idCheckItem = "spjvoiu@gmail.com"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11703_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508035905871.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_11703_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508035905871 (Order: 11703)
  * def idCard = "1m4qlB"
  * def idChecklist = "Iraqis"
  * def idCheckItem = "unsociological"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11723_updateCardsLabelsByIdCard_20250508035912373.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_11723_updateCardsLabelsByIdCard_20250508035912373 (Order: 11723)
  * def idCard = "reconstructionary"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11739_updateCardsLabelsByIdCard_20250508035912380.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_11739_updateCardsLabelsByIdCard_20250508035912380 (Order: 11739)
  * def idCard = "pilaf principled"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11763_updateChecklistsByIdChecklist_20250508035925874.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_11763_updateChecklistsByIdChecklist_20250508035925874 (Order: 11763)
  * def idChecklist = "http:udzfw.jujr.mecyclothure"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11774_updateChecklistsByIdChecklist_20250508035925880.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_11774_updateChecklistsByIdChecklist_20250508035925880 (Order: 11774)
  * def idChecklist = "Dxabrb6f"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11785_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508035932394.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_11785_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508035932394 (Order: 11785)
  * def idCard = "iwtuymbk@live.com"
  * def idCheckItem = "thio-"
  * def idChecklistCurrent = "urography"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11811_updateListsByIdList_20250508035938907.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_11811_updateListsByIdList_20250508035938907 (Order: 11811)
  * def idList = "gunky dorsi"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11825_updateOrganizationsByIdOrg_20250508035946475.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_11825_updateOrganizationsByIdOrg_20250508035946475 (Order: 11825)
  * def idOrg = "a"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11855_updateCardsByIdCard_20250508035953017.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_11855_updateCardsByIdCard_20250508035953017 (Order: 11855)
  * def idCard = "dig."
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11871_updateBoardsByIdBoard_20250508035959539.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_11871_updateBoardsByIdBoard_20250508035959539 (Order: 11871)
  * def idBoard = "http:losd.gsqqyxyr.co.uk60c287fb12"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11880_updateBoardsByIdBoard_20250508035959546.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_11880_updateBoardsByIdBoard_20250508035959546 (Order: 11880)
  * def idBoard = "thae"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11898_deleteActionsByIdAction_20250508040012094.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_11898_deleteActionsByIdAction_20250508040012094 (Order: 11898)
  * def idAction = "http:j.de"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11916_deleteCardsByIdCard_20250508040022212.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_11916_deleteCardsByIdCard_20250508040022212 (Order: 11916)
  * def idCard = "brevicomis"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11939_deleteLabelsByIdLabel_20250508040030789.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_11939_deleteLabelsByIdLabel_20250508040030789 (Order: 11939)
  * def idLabel = "20110729"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11955_deleteOrganizationsByIdOrg_20250508040037904.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_11955_deleteOrganizationsByIdOrg_20250508040037904 (Order: 11955)
  * def idOrg = "UH"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11973_deleteChecklistsByIdChecklist_20250508040046804.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_11973_deleteChecklistsByIdChecklist_20250508040046804 (Order: 11973)
  * def idChecklist = "tetraphenol"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11987_deleteCardsChecklistsByIdCardByIdChecklist_20250508040054501.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_11987_deleteCardsChecklistsByIdCardByIdChecklist_20250508040054501 (Order: 11987)
  * def idCard = "40848-8429"
  * def idChecklist = "Nyx"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12014_deleteCardsActionsCommentsByIdCardByIdAction_20250508040101032.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_12014_deleteCardsActionsCommentsByIdCardByIdAction_20250508040101032 (Order: 12014)
  * def idCard = "ancylostomiasis"
  * def idAction = "Sinae"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12030_deleteCardsAttachmentsByIdCardByIdAttachment_20250508040107602.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_12030_deleteCardsAttachmentsByIdCardByIdAttachment_20250508040107602 (Order: 12030)
  * def idAttachment = "Op"
  * def idCard = "2095393540"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1203_addChecklists_20250508030036295.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_1203_addChecklists_20250508030036295 (Order: 1203)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12058_deleteCardsLabelsByIdCardByColor_20250508040114139.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_12058_deleteCardsLabelsByIdCardByColor_20250508040114139 (Order: 12058)
  * def color = "Panjim"
  * def idCard = "855-458318"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12084_deleteCardsIdLabelsByIdCardByIdLabel_20250508040127082.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_12084_deleteCardsIdLabelsByIdCardByIdLabel_20250508040127082 (Order: 12084)
  * def idCard = "Q"
  * def idLabel = "electrocardiograph"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12095_deleteCardsIdLabelsByIdCardByIdLabel_20250508040127087.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_12095_deleteCardsIdLabelsByIdCardByIdLabel_20250508040127087 (Order: 12095)
  * def idCard = "SBIC"
  * def idLabel = "133.153.66.196"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12120_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508040133572.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_12120_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508040133572 (Order: 12120)
  * def idCard = "PBT"
  * def idChecklist = "extuberance"
  * def idCheckItem = "traffic-congested"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12142_getNotificationsCardByIdNotification_20250508040146557.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_12142_getNotificationsCardByIdNotification_20250508040146557 (Order: 12142)
  * def idNotification = "hypophloeodic"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12147_getNotificationsCardByIdNotification_20250508040146558.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_12147_getNotificationsCardByIdNotification_20250508040146558 (Order: 12147)
  * def idNotification = "IG"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12174_getLabelsBoardByIdLabelByField_20250508040153159.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_12174_getLabelsBoardByIdLabelByField_20250508040153159 (Order: 12174)
  * def field = "Sacramento"
  * def idLabel = "questionably"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12182_getChecklistsBoardByIdChecklist_20250508040201511.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_12182_getChecklistsBoardByIdChecklist_20250508040201511 (Order: 12182)
  * def idChecklist = "acalyculate"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12201_getListsBoardByIdList_20250508040208052.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_12201_getListsBoardByIdList_20250508040208052 (Order: 12201)
  * def idList = "O'"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1221_addLists_20250508030042915.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_1221_addLists_20250508030042915 (Order: 1221)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12242_getChecklistsCardsByIdChecklistByFilter_20250508040222250.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards/{filter}
Scenario: test_TestId_12242_getChecklistsCardsByIdChecklistByFilter_20250508040222250 (Order: 12242)
  * def filter = "21:24:25"
  * def idChecklist = "2ab9b31"
  Given path 'checklists/<idChecklist>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12251_getChecklistsCardsByIdChecklistByFilter_20250508040222254.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards/{filter}
Scenario: test_TestId_12251_getChecklistsCardsByIdChecklistByFilter_20250508040222254 (Order: 12251)
  * def filter = "dispensatively"
  * def idChecklist = "Dorcy"
  Given path 'checklists/<idChecklist>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1227_addLists_20250508030042918.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_1227_addLists_20250508030042918 (Order: 1227)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12288_getNotificationsBoardByIdNotification_20250508040236154.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_12288_getNotificationsBoardByIdNotification_20250508040236154 (Order: 12288)
  * def idNotification = "Kenway"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12313_getLabelsByIdLabel_20250508040242683.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_12313_getLabelsByIdLabel_20250508040242683 (Order: 12313)
  * def idLabel = "sojourns"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1233_addLists_20250508030042921.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_1233_addLists_20250508030042921 (Order: 1233)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12350_getActionsCardByIdActionByField_20250508040255785.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_12350_getActionsCardByIdActionByField_20250508040255785 (Order: 12350)
  * def field = "misleadingly"
  * def idAction = "snuff"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12361_getListsCardsByIdListByFilter_20250508040302323.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_12361_getListsCardsByIdListByFilter_20250508040302323 (Order: 12361)
  * def filter = "photogalvanographic"
  * def idList = "a'"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12393_getActionsBoardByIdAction_20250508040309151.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_12393_getActionsBoardByIdAction_20250508040309151 (Order: 12393)
  * def idAction = "bust-up Jarib"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12396_getActionsBoardByIdAction_20250508040309152.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_12396_getActionsBoardByIdAction_20250508040309152 (Order: 12396)
  * def idAction = "chylaqueous"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12416_getCardsCheckItemStatesByIdCard_20250508040315665.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_12416_getCardsCheckItemStatesByIdCard_20250508040315665 (Order: 12416)
  * def idCard = "smoothes"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12440_getNotificationsBoardByIdNotificationByField_20250508040322176.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_12440_getNotificationsBoardByIdNotificationByField_20250508040322176 (Order: 12440)
  * def field = "Joli"
  * def idNotification = "unwiseness"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12465_getCardsBoardByIdCard_20250508040335271.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_12465_getCardsBoardByIdCard_20250508040335271 (Order: 12465)
  * def idCard = "adcon"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12479_getCardsBoardByIdCard_20250508040335277.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_12479_getCardsBoardByIdCard_20250508040335277 (Order: 12479)
  * def idCard = "20:58:18"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12498_getMembersBoardsInvitedByIdMember_20250508040341806.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_12498_getMembersBoardsInvitedByIdMember_20250508040341806 (Order: 12498)
  * def idMember = "Mt5brT2Hl"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12503_getMembersBoardsInvitedByIdMemberByField_20250508040348344.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_12503_getMembersBoardsInvitedByIdMemberByField_20250508040348344 (Order: 12503)
  * def field = "20040224"
  * def idMember = "back-pedal"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12528_getActionsCardByIdAction_20250508040355291.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_12528_getActionsCardByIdAction_20250508040355291 (Order: 12528)
  * def idAction = "unsociological"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12541_getChecklistsBoardByIdChecklistByField_20250508040402182.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_12541_getChecklistsBoardByIdChecklistByField_20250508040402182 (Order: 12541)
  * def field = "384-265564"
  * def idChecklist = "449-55-698"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12563_getCardsListByIdCard_20250508040408755.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_12563_getCardsListByIdCard_20250508040408755 (Order: 12563)
  * def idCard = "Teague"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12591_getCardsListByIdCardByField_20250508040415297.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_12591_getCardsListByIdCardByField_20250508040415297 (Order: 12591)
  * def field = "HK"
  * def idCard = "bonassus"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12605_getNotificationsCardByIdNotificationByField_20250508040421883.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_12605_getNotificationsCardByIdNotificationByField_20250508040421883 (Order: 12605)
  * def field = "9807264477"
  * def idNotification = "0Lu9Q4pLTZsiLUmKGpXS3_TdHqhBw44B3fo4fmMPvR2pNJ9xwYteVkvi4w=="
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12627_getCardsBoardByIdCardByField_20250508040428424.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_12627_getCardsBoardByIdCardByField_20250508040428424 (Order: 12627)
  * def field = "cyclothure WMC"
  * def idCard = "NAMM"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12635_getCardsBoardByIdCardByField_20250508040428427.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_12635_getCardsBoardByIdCardByField_20250508040428427 (Order: 12635)
  * def field = "20070705"
  * def idCard = "prowl"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12658_getListsBoardByIdListByField_20250508040434962.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_12658_getListsBoardByIdListByField_20250508040434962 (Order: 12658)
  * def field = "Sacramento"
  * def idList = "AJ unslumpe"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1266_addOrganizations_20250508030056036.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_1266_addOrganizations_20250508030056036 (Order: 1266)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12686_getOrganizationsBoardsByIdOrgByFilter_20250508040448507.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_12686_getOrganizationsBoardsByIdOrgByFilter_20250508040448507 (Order: 12686)
  * def filter = "nonindividualistic"
  * def idOrg = "http:prdveb.jjqndsh.co.uk"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12706_getCardsAttachmentsByIdCardByIdAttachment_20250508040455192.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_12706_getCardsAttachmentsByIdCardByIdAttachment_20250508040455192 (Order: 12706)
  * def idAttachment = "misexpound"
  * def idCard = "c347:7d01:4199:7fce:45e3:f2c4:d18e:e77e"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12720_getCardsAttachmentsByIdCardByIdAttachment_20250508040455199.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_12720_getCardsAttachmentsByIdCardByIdAttachment_20250508040455199 (Order: 12720)
  * def idAttachment = "paleographically"
  * def idCard = "OMS"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12755_getListsByIdList_20250508040508869.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_12755_getListsByIdList_20250508040508869 (Order: 12755)
  * def idList = "Z R V"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12765_getChecklistsByIdChecklist_20250508040515420.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_12765_getChecklistsByIdChecklist_20250508040515420 (Order: 12765)
  * def idChecklist = "01:39:41"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12784_getCardsChecklistsByIdCard_20250508040521937.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_12784_getCardsChecklistsByIdCard_20250508040521937 (Order: 12784)
  * def idCard = "scov"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12801_getActionsByIdAction_20250508040528497.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_12801_getActionsByIdAction_20250508040528497 (Order: 12801)
  * def idAction = "F"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12822_getOrganizationsBoardsByIdOrg_20250508040535092.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_12822_getOrganizationsBoardsByIdOrg_20250508040535092 (Order: 12822)
  * def idOrg = "NUS"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12831_getOrganizationsBoardsByIdOrg_20250508040535097.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_12831_getOrganizationsBoardsByIdOrg_20250508040535097 (Order: 12831)
  * def idOrg = "http:tma.ntuwiafab.chchirre BM "
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1285_addCards_20250508030102661.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_1285_addCards_20250508030102661 (Order: 1285)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12875_getChecklistsCardsByIdChecklist_20250508040548163.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_12875_getChecklistsCardsByIdChecklist_20250508040548163 (Order: 12875)
  * def idChecklist = "synagogism"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12884_getBoardsCardsByIdBoard_20250508040554735.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_12884_getBoardsCardsByIdBoard_20250508040554735 (Order: 12884)
  * def idBoard = "ATM"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12901_getListsCardsByIdList_20250508040601663.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_12901_getListsCardsByIdList_20250508040601663 (Order: 12901)
  * def idList = "gold-containing"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12922_getCardsActionsByIdCard_20250508040608309.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_12922_getCardsActionsByIdCard_20250508040608309 (Order: 12922)
  * def idCard = "757772295"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12953_getNotificationsByIdNotification_20250508040614844.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_12953_getNotificationsByIdNotification_20250508040614844 (Order: 12953)
  * def idNotification = "C N"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12956_getNotificationsByIdNotification_20250508040614846.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_12956_getNotificationsByIdNotification_20250508040614846 (Order: 12956)
  * def idNotification = "Ulda"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12989_getOrganizationsActionsByIdOrg_20250508040627913.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_12989_getOrganizationsActionsByIdOrg_20250508040627913 (Order: 12989)
  * def idOrg = "c7483c9"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13000_getOrganizationsActionsByIdOrg_20250508040627920.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_13000_getOrganizationsActionsByIdOrg_20250508040627920 (Order: 13000)
  * def idOrg = "27e06d071564d6"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13021_getBoardsCardsByIdBoardByIdCard_20250508040641003.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_13021_getBoardsCardsByIdBoardByIdCard_20250508040641003 (Order: 13021)
  * def idBoard = "deerlike"
  * def idCard = "motherhoods"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1302_addBoards_20250508030109235.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_1302_addBoards_20250508030109235 (Order: 1302)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13059_getCardsByIdCard_20250508040647575.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_13059_getCardsByIdCard_20250508040647575 (Order: 13059)
  * def idCard = "mignonette-vine"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13065_getOrganizationsByIdOrg_20250508040654085.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_13065_getOrganizationsByIdOrg_20250508040654085 (Order: 13065)
  * def idOrg = "unrestrictively"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1307_addBoards_20250508030109239.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_1307_addBoards_20250508030109239 (Order: 1307)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13114_addNotificationsAllRead_20250508040707161.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_13114_addNotificationsAllRead_20250508040707161 (Order: 13114)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13132_addListsArchiveAllCardsByIdList_20250508040713679.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_13132_addListsArchiveAllCardsByIdList_20250508040713679 (Order: 13132)
  * def idList = "youthlessness"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13139_addListsArchiveAllCardsByIdList_20250508040713683.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_13139_addListsArchiveAllCardsByIdList_20250508040713683 (Order: 13139)
  * def idList = "teleradiography"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13163_addCardsActionsCommentsByIdCard_20250508040727043.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_13163_addCardsActionsCommentsByIdCard_20250508040727043 (Order: 13163)
  * def idCard = "Dunnellon"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13179_addCardsActionsCommentsByIdCard_20250508040727050.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_13179_addCardsActionsCommentsByIdCard_20250508040727050 (Order: 13179)
  * def idCard = "Miro"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13191_addCardsIdLabelsByIdCard_20250508040733538.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_13191_addCardsIdLabelsByIdCard_20250508040733538 (Order: 13191)
  * def idCard = "m "
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13222_addLabels_20250508040747039.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_13222_addLabels_20250508040747039 (Order: 13222)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13235_addLabels_20250508040747045.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_13235_addLabels_20250508040747045 (Order: 13235)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13246_addCardsChecklistsByIdCard_20250508040753615.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_13246_addCardsChecklistsByIdCard_20250508040753615 (Order: 13246)
  * def idCard = "convenor"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13273_addCardsLabelsByIdCard_20250508040800200.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_13273_addCardsLabelsByIdCard_20250508040800200 (Order: 13273)
  * def idCard = "fc778e7d-048b-43da-89b1-f02911c3454d"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13285_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508040806719.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_13285_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508040806719 (Order: 13285)
  * def idCard = "Richfield"
  * def idChecklist = "corrupt"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13303_addCardsAttachmentsByIdCard_20250508040813267.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_13303_addCardsAttachmentsByIdCard_20250508040813267 (Order: 13303)
  * def idCard = "hush"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13320_addCardsAttachmentsByIdCard_20250508040813276.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_13320_addCardsAttachmentsByIdCard_20250508040813276 (Order: 13320)
  * def idCard = "ef5a739c-36c4-4af0-999f-3665fd6f233b"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13333_addChecklists_20250508040819788.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_13333_addChecklists_20250508040819788 (Order: 13333)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13361_addListsCardsByIdList_20250508040832976.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_13361_addListsCardsByIdList_20250508040832976 (Order: 13361)
  * def idList = "SIP"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13381_addOrganizations_20250508040839529.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_13381_addOrganizations_20250508040839529 (Order: 13381)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13396_addOrganizations_20250508040839536.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_13396_addOrganizations_20250508040839536 (Order: 13396)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1340_updateCardsIdListByIdCard_20250508030115954.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_1340_updateCardsIdListByIdCard_20250508030115954 (Order: 1340)
  * def idCard = "X mend"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13425_addBoards_20250508040853589.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_13425_addBoards_20250508040853589 (Order: 13425)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13440_addBoards_20250508040853601.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_13440_addBoards_20250508040853601 (Order: 13440)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13467_updateCardsIdMembersByIdCard_20250508040906794.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_13467_updateCardsIdMembersByIdCard_20250508040906794 (Order: 13467)
  * def idCard = "laryngostroboscope"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13478_updateCardsIdMembersByIdCard_20250508040906799.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_13478_updateCardsIdMembersByIdCard_20250508040906799 (Order: 13478)
  * def idCard = "VL"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13509_updateCardsClosedByIdCard_20250508040920589.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_13509_updateCardsClosedByIdCard_20250508040920589 (Order: 13509)
  * def idCard = "self-sanctification"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13519_updateCardsClosedByIdCard_20250508040920593.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_13519_updateCardsClosedByIdCard_20250508040920593 (Order: 13519)
  * def idCard = "ary"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13539_updateCardsDueByIdCard_20250508040927126.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_13539_updateCardsDueByIdCard_20250508040927126 (Order: 13539)
  * def idCard = "or"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13555_updateNotificationsByIdNotification_20250508040933671.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_13555_updateNotificationsByIdNotification_20250508040933671 (Order: 13555)
  * def idNotification = "Lipman"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13578_updateCardsIdAttachmentCoverByIdCard_20250508040940243.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_13578_updateCardsIdAttachmentCoverByIdCard_20250508040940243 (Order: 13578)
  * def idCard = "Cuda"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13588_updateLabelsColorByIdLabel_20250508040947169.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_13588_updateLabelsColorByIdLabel_20250508040947169 (Order: 13588)
  * def idLabel = "Mansart"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13616_updateLabelsNameByIdLabel_20250508040953781.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_13616_updateLabelsNameByIdLabel_20250508040953781 (Order: 13616)
  * def idLabel = "20130522"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1361_updateCardsDescByIdCard_20250508030129045.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_1361_updateCardsDescByIdCard_20250508030129045 (Order: 1361)
  * def idCard = "0959:a69f:e428:5bea:c864:4432:1b98:7f66"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1363_updateCardsDescByIdCard_20250508030129046.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_1363_updateCardsDescByIdCard_20250508030129046 (Order: 1363)
  * def idCard = "dorso-ulnar"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13668_updateCardsActionsCommentsByIdCardByIdAction_20250508041013750.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_13668_updateCardsActionsCommentsByIdCardByIdAction_20250508041013750 (Order: 13668)
  * def idCard = "hemihypotonia D"
  * def idAction = "bc6c9321-9e62-4cf4-8a1c-30432d903788"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13680_updateCardsActionsCommentsByIdCardByIdAction_20250508041013756.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_13680_updateCardsActionsCommentsByIdCardByIdAction_20250508041013756 (Order: 13680)
  * def idCard = "Ula"
  * def idAction = "i "
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1369_updateCardsDescByIdCard_20250508030129048.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_1369_updateCardsDescByIdCard_20250508030129048 (Order: 1369)
  * def idCard = "monisms"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13718_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508041026911.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_13718_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508041026911 (Order: 13718)
  * def idCard = "5d3c22bde33b"
  * def idChecklist = "bd@live.com"
  * def idCheckItem = "woady"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13735_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508041033498.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_13735_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508041033498 (Order: 13735)
  * def idCard = "Adams"
  * def idChecklist = "112-980212"
  * def idCheckItem = "incomposedness"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13753_updateCardsLabelsByIdCard_20250508041040040.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_13753_updateCardsLabelsByIdCard_20250508041040040 (Order: 13753)
  * def idCard = "signum"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13770_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508041046633.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_13770_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508041046633 (Order: 13770)
  * def idCard = "07:35:51"
  * def idChecklist = "Joela"
  * def idCheckItem = "dup"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13796_updateChecklistsByIdChecklist_20250508041053161.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_13796_updateChecklistsByIdChecklist_20250508041053161 (Order: 13796)
  * def idChecklist = "V"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13801_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508041059694.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_13801_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508041059694 (Order: 13801)
  * def idCard = "noncognizably"
  * def idCheckItem = "haemodilution"
  * def idChecklistCurrent = "Corixidae"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13818_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508041059705.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_13818_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508041059705 (Order: 13818)
  * def idCard = "R"
  * def idCheckItem = "TEC"
  * def idChecklistCurrent = "fire-tailed"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13845_updateOrganizationsByIdOrg_20250508041112847.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_13845_updateOrganizationsByIdOrg_20250508041112847 (Order: 13845)
  * def idOrg = "bruits"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13863_updateCardsByIdCard_20250508041119443.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_13863_updateCardsByIdCard_20250508041119443 (Order: 13863)
  * def idCard = "Ulda"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13885_updateBoardsByIdBoard_20250508041126067.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_13885_updateBoardsByIdBoard_20250508041126067 (Order: 13885)
  * def idBoard = "http:gmtldglbd.df.info"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13892_updateBoardsByIdBoard_20250508041126074.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_13892_updateBoardsByIdBoard_20250508041126074 (Order: 13892)
  * def idBoard = "d@auskzvqy.de"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13916_deleteActionsByIdAction_20250508041132634.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_13916_deleteActionsByIdAction_20250508041132634 (Order: 13916)
  * def idAction = "well-proportioned"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13936_deleteCardsByIdCard_20250508041139145.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_13936_deleteCardsByIdCard_20250508041139145 (Order: 13936)
  * def idCard = "s"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13949_deleteLabelsByIdLabel_20250508041145663.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_13949_deleteLabelsByIdLabel_20250508041145663 (Order: 13949)
  * def idLabel = "Passy"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13975_deleteOrganizationsByIdOrg_20250508041152216.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_13975_deleteOrganizationsByIdOrg_20250508041152216 (Order: 13975)
  * def idOrg = "P "
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13992_deleteChecklistsByIdChecklist_20250508041158818.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_13992_deleteChecklistsByIdChecklist_20250508041158818 (Order: 13992)
  * def idChecklist = "Mennonitism"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1400_updateCardsClosedByIdCard_20250508030135610.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_1400_updateCardsClosedByIdCard_20250508030135610 (Order: 1400)
  * def idCard = "20050107"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14021_deleteCardsActionsCommentsByIdCardByIdAction_20250508041211927.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_14021_deleteCardsActionsCommentsByIdCardByIdAction_20250508041211927 (Order: 14021)
  * def idCard = "TUR"
  * def idAction = "9801238021"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14047_deleteCardsAttachmentsByIdCardByIdAttachment_20250508041218457.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_14047_deleteCardsAttachmentsByIdCardByIdAttachment_20250508041218457 (Order: 14047)
  * def idAttachment = "LTA s Joel"
  * def idCard = "H"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14066_deleteCardsLabelsByIdCardByColor_20250508041224965.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_14066_deleteCardsLabelsByIdCardByColor_20250508041224965 (Order: 14066)
  * def color = "OkMlWfE0ZpLyBBDtluKAW3z9BjQQQaLZWcDhEydJ5NEcCM_dvjraqnnbNlN1FEpcPBnayaD_ZjbH0AZmcBvbqNNbMcaCkPfYfG9NHjcezAXknWyJeA=="
  * def idCard = "http:vgaoiqi.vv.io"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14071_deleteCardsLabelsByIdCardByColor_20250508041224967.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_14071_deleteCardsLabelsByIdCardByColor_20250508041224967 (Order: 14071)
  * def color = "douc"
  * def idCard = "NUS"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14099_deleteCardsIdMembersByIdCardByIdMember_20250508041231478.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_14099_deleteCardsIdMembersByIdCardByIdMember_20250508041231478 (Order: 14099)
  * def idCard = "NyCDmEx-p6l8h7Gz_anIQAyXwwF5uxgGx9JChiv6K-QT_n6bvwrRJw-pvKvj7xY8Ah-tNj-mdt0nbyuIySGITEIRue-kNY9jrEkHAh6FoeGufJW3mFPMeg=="
  * def idMember = "miswend"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1411_updateCardsDueByIdCard_20250508030142165.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_1411_updateCardsDueByIdCard_20250508030142165 (Order: 1411)
  * def idCard = "041-19-334"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14139_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508041244501.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_14139_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508041244501 (Order: 14139)
  * def idCard = "proligerous"
  * def idChecklist = "TC"
  * def idCheckItem = "Caius koruna brawls"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14155_getBatch_20250508041251120.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_14155_getBatch_20250508041251120 (Order: 14155)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14177_getNotificationsCardByIdNotification_20250508041257936.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_14177_getNotificationsCardByIdNotification_20250508041257936 (Order: 14177)
  * def idNotification = "engysseismology"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14191_getLabelsBoardByIdLabelByField_20250508041304568.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_14191_getLabelsBoardByIdLabelByField_20250508041304568 (Order: 14191)
  * def field = "kays"
  * def idLabel = "placet"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14197_getLabelsBoardByIdLabelByField_20250508041304570.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_14197_getLabelsBoardByIdLabelByField_20250508041304570 (Order: 14197)
  * def field = "Sweetser"
  * def idLabel = "manniferous"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14222_getListsBoardByIdList_20250508041317665.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_14222_getListsBoardByIdList_20250508041317665 (Order: 14222)
  * def idList = "Teague"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14233_getListsBoardByIdList_20250508041317671.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_14233_getListsBoardByIdList_20250508041317671 (Order: 14233)
  * def idList = "21:12:12"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14255_getMembersBoardsByIdMemberByFilter_20250508041324232.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_14255_getMembersBoardsByIdMemberByFilter_20250508041324232 (Order: 14255)
  * def filter = "D"
  * def idMember = "forams"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14285_getBoardsCardsByIdBoardByFilter_20250508041337498.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_14285_getBoardsCardsByIdBoardByFilter_20250508041337498 (Order: 14285)
  * def filter = "z"
  * def idBoard = "4IcjL2R6bBM"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14289_getBoardsCardsByIdBoardByFilter_20250508041337500.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_14289_getBoardsCardsByIdBoardByFilter_20250508041337500 (Order: 14289)
  * def filter = "Arbyrd SCS"
  * def idBoard = "signum"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14309_getNotificationsBoardByIdNotification_20250508041344026.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_14309_getNotificationsBoardByIdNotification_20250508041344026 (Order: 14309)
  * def idNotification = "poxy CN DA"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14323_getLabelsByIdLabel_20250508041350585.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_14323_getLabelsByIdLabel_20250508041350585 (Order: 14323)
  * def idLabel = "z468€lw"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14348_getLabelsBoardByIdLabel_20250508041357165.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_14348_getLabelsBoardByIdLabel_20250508041357165 (Order: 14348)
  * def idLabel = "PEI"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14363_getActionsCardByIdActionByField_20250508041403814.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_14363_getActionsCardByIdActionByField_20250508041403814 (Order: 14363)
  * def field = "O'"
  * def idAction = "MK40 056F YQ64 WZ4A 421"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1438_updateNotificationsByIdNotification_20250508030148758.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_1438_updateNotificationsByIdNotification_20250508030148758 (Order: 1438)
  * def idNotification = "miswend"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14396_getListsCardsByIdListByFilter_20250508041410418.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_14396_getListsCardsByIdListByFilter_20250508041410418 (Order: 14396)
  * def filter = "i"
  * def idList = "calfling"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14421_getCardsCheckItemStatesByIdCard_20250508041423541.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_14421_getCardsCheckItemStatesByIdCard_20250508041423541 (Order: 14421)
  * def idCard = "PB"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1442_updateCardsIdAttachmentCoverByIdCard_20250508030155411.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_1442_updateCardsIdAttachmentCoverByIdCard_20250508030155411 (Order: 1442)
  * def idCard = "Levalloisian"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14462_getActionsBoardByIdActionByField_20250508041437278.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_14462_getActionsBoardByIdActionByField_20250508041437278 (Order: 14462)
  * def field = "K"
  * def idAction = "O'"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14479_getActionsBoardByIdActionByField_20250508041437290.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_14479_getActionsBoardByIdActionByField_20250508041437290 (Order: 14479)
  * def field = "RARE"
  * def idAction = "T "
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1448_updateCardsIdAttachmentCoverByIdCard_20250508030155413.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_1448_updateCardsIdAttachmentCoverByIdCard_20250508030155413 (Order: 1448)
  * def idCard = "Cook"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14510_getMembersBoardsInvitedByIdMember_20250508041450427.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_14510_getMembersBoardsInvitedByIdMember_20250508041450427 (Order: 14510)
  * def idMember = "BL48 2120 2282 66TP 8V0A 8B3K C24"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14529_getMembersBoardsInvitedByIdMemberByField_20250508041456991.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_14529_getMembersBoardsInvitedByIdMemberByField_20250508041456991 (Order: 14529)
  * def field = "Seneca"
  * def idMember = "Isaac"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14548_getActionsCardByIdAction_20250508041503626.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_14548_getActionsCardByIdAction_20250508041503626 (Order: 14548)
  * def idAction = "L"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14568_getChecklistsBoardByIdChecklistByField_20250508041510171.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_14568_getChecklistsBoardByIdChecklistByField_20250508041510171 (Order: 14568)
  * def field = "ye"
  * def idChecklist = "Pro-emersonian"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14589_getCardsListByIdCard_20250508041516751.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_14589_getCardsListByIdCard_20250508041516751 (Order: 14589)
  * def idCard = "20041129"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14598_getCardsListByIdCard_20250508041516755.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_14598_getCardsListByIdCard_20250508041516755 (Order: 14598)
  * def idCard = "interlocutors"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14626_getNotificationsCardByIdNotificationByField_20250508041529976.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_14626_getNotificationsCardByIdNotificationByField_20250508041529976 (Order: 14626)
  * def field = "2027400977"
  * def idNotification = "IE70 VBCK 7265 8624 5408 60"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14635_getNotificationsCardByIdNotificationByField_20250508041529980.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_14635_getNotificationsCardByIdNotificationByField_20250508041529980 (Order: 14635)
  * def field = "4040a86e"
  * def idNotification = "MK58 8154 9RES 0LU4 869"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14646_getCardsBoardByIdCardByField_20250508041536565.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_14646_getCardsBoardByIdCardByField_20250508041536565 (Order: 14646)
  * def field = "pdrfcq@outlook.com"
  * def idCard = "Irish-english"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14669_getListsBoardByIdListByField_20250508041543190.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_14669_getListsBoardByIdListByField_20250508041543190 (Order: 14669)
  * def field = "fikh accurateness"
  * def idList = "impish"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14686_getMembersCardsByIdMemberByFilter_20250508041549798.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_14686_getMembersCardsByIdMemberByFilter_20250508041549798 (Order: 14686)
  * def filter = "20:53:08"
  * def idMember = "sayable"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14702_getOrganizationsBoardsByIdOrgByFilter_20250508041556382.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_14702_getOrganizationsBoardsByIdOrgByFilter_20250508041556382 (Order: 14702)
  * def filter = "tineman"
  * def idOrg = "ln"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14723_getCardsAttachmentsByIdCardByIdAttachment_20250508041604152.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_14723_getCardsAttachmentsByIdCardByIdAttachment_20250508041604152 (Order: 14723)
  * def idAttachment = "SCSI Harz"
  * def idCard = "GSC"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1474_updateLabelsColorByIdLabel_20250508030202273.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_1474_updateLabelsColorByIdLabel_20250508030202273 (Order: 1474)
  * def idLabel = "Harz"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14761_getListsByIdList_20250508041617336.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_14761_getListsByIdList_20250508041617336 (Order: 14761)
  * def idList = "D"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14784_getChecklistsByIdChecklist_20250508041623933.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_14784_getChecklistsByIdChecklist_20250508041623933 (Order: 14784)
  * def idChecklist = "foreannouncement"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14790_getChecklistsByIdChecklist_20250508041623935.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_14790_getChecklistsByIdChecklist_20250508041623935 (Order: 14790)
  * def idChecklist = "20110419"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14808_getCardsChecklistsByIdCard_20250508041630499.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_14808_getCardsChecklistsByIdCard_20250508041630499 (Order: 14808)
  * def idCard = "scends"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14830_getActionsByIdAction_20250508041637101.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_14830_getActionsByIdAction_20250508041637101 (Order: 14830)
  * def idAction = "schoolteacherish"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14850_getOrganizationsBoardsByIdOrg_20250508041643695.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_14850_getOrganizationsBoardsByIdOrg_20250508041643695 (Order: 14850)
  * def idOrg = "XO W"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1487_updateLabelsNameByIdLabel_20250508030208839.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_1487_updateLabelsNameByIdLabel_20250508030208839 (Order: 1487)
  * def idLabel = "00026444285"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14884_getChecklistsCardsByIdChecklist_20250508041656944.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_14884_getChecklistsCardsByIdChecklist_20250508041656944 (Order: 14884)
  * def idChecklist = "12:19:58"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14901_getBoardsCardsByIdBoard_20250508041703587.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_14901_getBoardsCardsByIdBoard_20250508041703587 (Order: 14901)
  * def idBoard = "14e6:7888:68c2:803e:1974:06f0:412d:84ff"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14926_getListsCardsByIdList_20250508041710151.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_14926_getListsCardsByIdList_20250508041710151 (Order: 14926)
  * def idList = "DUI"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1494_updateLabelsNameByIdLabel_20250508030208842.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_1494_updateLabelsNameByIdLabel_20250508030208842 (Order: 1494)
  * def idLabel = "molas"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14966_getNotificationsByIdNotification_20250508041723954.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_14966_getNotificationsByIdNotification_20250508041723954 (Order: 14966)
  * def idNotification = "7592a8497c"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14983_getListsActionsByIdList_20250508041731169.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_14983_getListsActionsByIdList_20250508041731169 (Order: 14983)
  * def idList = "ATM"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14994_getListsActionsByIdList_20250508041731175.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_14994_getListsActionsByIdList_20250508041731175 (Order: 14994)
  * def idList = "NUS"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15021_getBoardsActionsByIdBoard_20250508041744978.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_15021_getBoardsActionsByIdBoard_20250508041744978 (Order: 15021)
  * def idBoard = "05:23:45"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15028_getBoardsActionsByIdBoard_20250508041744983.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_15028_getBoardsActionsByIdBoard_20250508041744983 (Order: 15028)
  * def idBoard = "nonadjustability"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15054_getBoardsCardsByIdBoardByIdCard_20250508041751639.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_15054_getBoardsCardsByIdBoardByIdCard_20250508041751639 (Order: 15054)
  * def idBoard = "Bath"
  * def idCard = "countervibration"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15065_getCardsByIdCard_20250508041758206.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_15065_getCardsByIdCard_20250508041758206 (Order: 15065)
  * def idCard = "OB"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15082_getOrganizationsByIdOrg_20250508041805422.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_15082_getOrganizationsByIdOrg_20250508041805422 (Order: 15082)
  * def idOrg = "FAT"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15100_getOrganizationsByIdOrg_20250508041805437.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_15100_getOrganizationsByIdOrg_20250508041805437 (Order: 15100)
  * def idOrg = "IDA"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15114_getBoardsByIdBoard_20250508041812087.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_15114_getBoardsByIdBoard_20250508041812087 (Order: 15114)
  * def idBoard = "Elqw7EdjZK5pKaEWZVxAmWFOPycqlNIKyE8ADZSzyjbRwMv-amdGfjax18vrLY7z4gog-SrEyuYijZDWZlZQ57LoeF8hCVXn"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15132_addNotificationsAllRead_20250508041818727.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_15132_addNotificationsAllRead_20250508041818727 (Order: 15132)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15152_addListsArchiveAllCardsByIdList_20250508041825308.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_15152_addListsArchiveAllCardsByIdList_20250508041825308 (Order: 15152)
  * def idList = "windsurf"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15184_addCardsActionsCommentsByIdCard_20250508041838549.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_15184_addCardsActionsCommentsByIdCard_20250508041838549 (Order: 15184)
  * def idCard = "a9c"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1519_updateActionsByIdAction_20250508030215446.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_1519_updateActionsByIdAction_20250508030215446 (Order: 1519)
  * def idAction = "foam-flanked"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15218_addCardsIdLabelsByIdCard_20250508041845135.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_15218_addCardsIdLabelsByIdCard_20250508041845135 (Order: 15218)
  * def idCard = "avoider"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15229_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508041851674.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_15229_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508041851674 (Order: 15229)
  * def idCard = "O'"
  * def idChecklist = "valve"
  * def idCheckItem = "Thetford"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1523_updateCardsIdBoardByIdCard_20250508030221980.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_1523_updateCardsIdBoardByIdCard_20250508030221980 (Order: 1523)
  * def idCard = "IRE"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15260_addLabels_20250508041858245.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_15260_addLabels_20250508041858245 (Order: 15260)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1527_updateCardsIdBoardByIdCard_20250508030221983.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_1527_updateCardsIdBoardByIdCard_20250508030221983 (Order: 1527)
  * def idCard = "Aerol"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15303_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508041918456.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_15303_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508041918456 (Order: 15303)
  * def idCard = "Pironi"
  * def idChecklist = "a"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15320_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508041918466.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_15320_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508041918466 (Order: 15320)
  * def idCard = "anvilling"
  * def idChecklist = "heroize"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15341_addChecklists_20250508041931573.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_15341_addChecklists_20250508041931573 (Order: 15341)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15350_addChecklists_20250508041931577.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_15350_addChecklists_20250508041931577 (Order: 15350)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15378_addLists_20250508041938166.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_15378_addLists_20250508041938166 (Order: 15378)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15394_addListsCardsByIdList_20250508041944869.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_15394_addListsCardsByIdList_20250508041944869 (Order: 15394)
  * def idList = "maxixe"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15411_addOrganizations_20250508041951440.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_15411_addOrganizations_20250508041951440 (Order: 15411)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1542_updateCardsActionsCommentsByIdCardByIdAction_20250508030228518.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_1542_updateCardsActionsCommentsByIdCardByIdAction_20250508030228518 (Order: 1542)
  * def idCard = "RFE"
  * def idAction = "BYU"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15443_addBoards_20250508042004583.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_15443_addBoards_20250508042004583 (Order: 15443)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1545_updateCardsActionsCommentsByIdCardByIdAction_20250508030228521.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_1545_updateCardsActionsCommentsByIdCardByIdAction_20250508030228521 (Order: 1545)
  * def idCard = "enrobed"
  * def idAction = "insaturable"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1547_updateCardsActionsCommentsByIdCardByIdAction_20250508030228522.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_1547_updateCardsActionsCommentsByIdCardByIdAction_20250508030228522 (Order: 1547)
  * def idCard = "swaddlebill"
  * def idAction = "acara"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1549_updateCardsActionsCommentsByIdCardByIdAction_20250508030228523.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_1549_updateCardsActionsCommentsByIdCardByIdAction_20250508030228523 (Order: 1549)
  * def idCard = "zoaria"
  * def idAction = "http:ofaq.sgnefxism.gov"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15512_updateCardsDescByIdCard_20250508042024362.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_15512_updateCardsDescByIdCard_20250508042024362 (Order: 15512)
  * def idCard = "noninfinitely"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15542_updateCardsDueByIdCard_20250508042037390.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_15542_updateCardsDueByIdCard_20250508042037390 (Order: 15542)
  * def idCard = "Dorris"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15559_updateCardsDueByIdCard_20250508042037397.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_15559_updateCardsDueByIdCard_20250508042037397 (Order: 15559)
  * def idCard = "livelong"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15578_updateNotificationsByIdNotification_20250508042043954.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_15578_updateNotificationsByIdNotification_20250508042043954 (Order: 15578)
  * def idNotification = "anguid"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1559_updateCardsActionsCommentsByIdCardByIdAction_20250508030228528.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_1559_updateCardsActionsCommentsByIdCardByIdAction_20250508030228528 (Order: 1559)
  * def idCard = "inaneness"
  * def idAction = "R"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15612_updateLabelsColorByIdLabel_20250508042057125.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_15612_updateLabelsColorByIdLabel_20250508042057125 (Order: 15612)
  * def idLabel = "http:gyoedq.co.uknonpending"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15629_updateLabelsNameByIdLabel_20250508042103754.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_15629_updateLabelsNameByIdLabel_20250508042103754 (Order: 15629)
  * def idLabel = "molas"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15639_updateLabelsNameByIdLabel_20250508042103758.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_15639_updateLabelsNameByIdLabel_20250508042103758 (Order: 15639)
  * def idLabel = "b43a862"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15655_updateActionsByIdAction_20250508042110346.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_15655_updateActionsByIdAction_20250508042110346 (Order: 15655)
  * def idAction = "improficiency"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15680_updateCardsIdBoardByIdCard_20250508042116904.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_15680_updateCardsIdBoardByIdCard_20250508042116904 (Order: 15680)
  * def idCard = "heart-ill"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15705_updateLabelsByIdLabel_20250508042130059.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_15705_updateLabelsByIdLabel_20250508042130059 (Order: 15705)
  * def idLabel = "edfeS5f€"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15721_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508042137275.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_15721_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508042137275 (Order: 15721)
  * def idCard = "m"
  * def idChecklist = "VL"
  * def idCheckItem = "2"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15726_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508042137278.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_15726_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508042137278 (Order: 15726)
  * def idCard = "ig@gmail.com"
  * def idChecklist = "Anti-spanish"
  * def idCheckItem = "02:06:38"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15751_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508042143813.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_15751_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508042143813 (Order: 15751)
  * def idCard = "antecornu"
  * def idChecklist = "shairn"
  * def idCheckItem = "unscratchable"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1577_updateLabelsByIdLabel_20250508030235089.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_1577_updateLabelsByIdLabel_20250508030235089 (Order: 1577)
  * def idLabel = "F"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15790_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508042156969.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_15790_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508042156969 (Order: 15790)
  * def idCard = "imbibes"
  * def idChecklist = "quasi-historic"
  * def idCheckItem = "all-ending"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15802_updateChecklistsByIdChecklist_20250508042203731.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_15802_updateChecklistsByIdChecklist_20250508042203731 (Order: 15802)
  * def idChecklist = "smoothcoat"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15830_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508042210287.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_15830_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508042210287 (Order: 15830)
  * def idCard = "CY67 7757 8773 338W K57D ROSA B7P2"
  * def idCheckItem = "wa@outlook.com"
  * def idChecklistCurrent = "5"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15842_updateListsByIdList_20250508042216893.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_15842_updateListsByIdList_20250508042216893 (Order: 15842)
  * def idList = "U"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15857_updateListsByIdList_20250508042216902.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_15857_updateListsByIdList_20250508042216902 (Order: 15857)
  * def idList = "2656276711"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1587_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508030241702.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_1587_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508030241702 (Order: 1587)
  * def idCard = "ye 2"
  * def idChecklist = "be2b13d4f326cfb4e4aac12"
  * def idCheckItem = "hyperpiesis"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15905_updateBoardsByIdBoard_20250508042236512.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_15905_updateBoardsByIdBoard_20250508042236512 (Order: 15905)
  * def idBoard = "Zinzendorf"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15917_updateBoardsByIdBoard_20250508042236522.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_15917_updateBoardsByIdBoard_20250508042236522 (Order: 15917)
  * def idBoard = "PEI"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15924_deleteActionsByIdAction_20250508042243043.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_15924_deleteActionsByIdAction_20250508042243043 (Order: 15924)
  * def idAction = ""
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15946_deleteCardsByIdCard_20250508042249557.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_15946_deleteCardsByIdCard_20250508042249557 (Order: 15946)
  * def idCard = "QnU_pC7DT1CtsNJieETmoSGWXlY-65SO4YUiWeN7fxL-kGfxFg=="
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15970_deleteLabelsByIdLabel_20250508042256073.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_15970_deleteLabelsByIdLabel_20250508042256073 (Order: 15970)
  * def idLabel = "Inanna"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15990_deleteOrganizationsByIdOrg_20250508042302747.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_15990_deleteOrganizationsByIdOrg_20250508042302747 (Order: 15990)
  * def idOrg = "el"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_159_getBoardsCardsByIdBoardByFilter_20250508025442910.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_159_getBoardsCardsByIdBoardByFilter_20250508025442910 (Order: 159)
  * def filter = "vomiturition"
  * def idBoard = "(+6102) 15130084406"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16024_deleteCardsChecklistsByIdCardByIdChecklist_20250508042315784.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_16024_deleteCardsChecklistsByIdCardByIdChecklist_20250508042315784 (Order: 16024)
  * def idCard = "crispily"
  * def idChecklist = "n"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16039_deleteCardsChecklistsByIdCardByIdChecklist_20250508042315792.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_16039_deleteCardsChecklistsByIdCardByIdChecklist_20250508042315792 (Order: 16039)
  * def idCard = "onychogryposis"
  * def idChecklist = "i a'"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16053_deleteCardsActionsCommentsByIdCardByIdAction_20250508042322292.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_16053_deleteCardsActionsCommentsByIdCardByIdAction_20250508042322292 (Order: 16053)
  * def idCard = "areic"
  * def idAction = "qReAXOaoqCGXCiSlAK2r9GmyPWR-IQ97lZvv6XDA2GhgY22hHTClRhBAmB3ClYnOeJnA055H4PJKI58Ol1eepuYMhBr4xB9bdWbrgxRbBZ2O"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16082_deleteCardsLabelsByIdCardByColor_20250508042335369.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_16082_deleteCardsLabelsByIdCardByColor_20250508042335369 (Order: 16082)
  * def color = "F "
  * def idCard = "octastrophic"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16086_deleteCardsLabelsByIdCardByColor_20250508042335371.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_16086_deleteCardsLabelsByIdCardByColor_20250508042335371 (Order: 16086)
  * def color = "2562111366"
  * def idCard = "outfish"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1610_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508030248225.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_1610_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508030248225 (Order: 1610)
  * def idCard = "00:25:50"
  * def idChecklist = "Resa y U "
  * def idCheckItem = "cK"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16123_deleteCardsIdLabelsByIdCardByIdLabel_20250508042348585.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_16123_deleteCardsIdLabelsByIdCardByIdLabel_20250508042348585 (Order: 16123)
  * def idCard = "RB"
  * def idLabel = "MN ME TEC "
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16141_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508042355123.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_16141_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508042355123 (Order: 16141)
  * def idCard = "OMS"
  * def idChecklist = "http:osoaycjg.co.uk"
  * def idCheckItem = "7149857485"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16173_getBatch_20250508042401612.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_16173_getBatch_20250508042401612 (Order: 16173)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16190_getNotificationsCardByIdNotification_20250508042408246.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_16190_getNotificationsCardByIdNotification_20250508042408246 (Order: 16190)
  * def idNotification = "Zerma"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1619_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508030248230.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_1619_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508030248230 (Order: 1619)
  * def idCard = "boolean"
  * def idChecklist = "dig."
  * def idCheckItem = "Z"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16223_getChecklistsBoardByIdChecklist_20250508042421459.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_16223_getChecklistsBoardByIdChecklist_20250508042421459 (Order: 16223)
  * def idChecklist = "y "
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16237_getChecklistsBoardByIdChecklist_20250508042421467.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_16237_getChecklistsBoardByIdChecklist_20250508042421467 (Order: 16237)
  * def idChecklist = "caseworks "
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16253_getListsBoardByIdList_20250508042428047.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_16253_getListsBoardByIdList_20250508042428047 (Order: 16253)
  * def idList = "ATJI7OkC"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16275_getMembersBoardsByIdMemberByFilter_20250508042434744.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_16275_getMembersBoardsByIdMemberByFilter_20250508042434744 (Order: 16275)
  * def filter = "fimble"
  * def idMember = "NHL"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16285_getChecklistsCardsByIdChecklistByFilter_20250508042441339.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards/{filter}
Scenario: test_TestId_16285_getChecklistsCardsByIdChecklistByFilter_20250508042441339 (Order: 16285)
  * def filter = "8475969094"
  * def idChecklist = "aftershine"
  Given path 'checklists/<idChecklist>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16305_getBoardsCardsByIdBoardByFilter_20250508042447935.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_16305_getBoardsCardsByIdBoardByFilter_20250508042447935 (Order: 16305)
  * def filter = "B"
  * def idBoard = "atriocoelomic"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1632_updateCardsLabelsByIdCard_20250508030254787.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_1632_updateCardsLabelsByIdCard_20250508030254787 (Order: 1632)
  * def idCard = "CNSR X"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16338_getNotificationsBoardByIdNotification_20250508042454523.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_16338_getNotificationsBoardByIdNotification_20250508042454523 (Order: 16338)
  * def idNotification = "Carnovsky"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16372_getLabelsBoardByIdLabel_20250508042507739.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_16372_getLabelsBoardByIdLabel_20250508042507739 (Order: 16372)
  * def idLabel = "26b045d8e3caecff1d6b4"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16391_getActionsCardByIdActionByField_20250508042514353.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_16391_getActionsCardByIdActionByField_20250508042514353 (Order: 16391)
  * def field = "PCH"
  * def idAction = "http:gwipl.sxm.infofat-backed"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16405_getListsCardsByIdListByFilter_20250508042520965.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_16405_getListsCardsByIdListByFilter_20250508042520965 (Order: 16405)
  * def filter = "pavy"
  * def idList = "amaga"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16425_getActionsBoardByIdAction_20250508042527607.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_16425_getActionsBoardByIdAction_20250508042527607 (Order: 16425)
  * def idAction = "clippie"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16434_getActionsBoardByIdAction_20250508042527611.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_16434_getActionsBoardByIdAction_20250508042527611 (Order: 16434)
  * def idAction = "K sloga"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16449_getCardsCheckItemStatesByIdCard_20250508042534173.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_16449_getCardsCheckItemStatesByIdCard_20250508042534173 (Order: 16449)
  * def idCard = "http:fvfoeabf.cpgxbhh.deprosupport"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16480_getNotificationsBoardByIdNotificationByField_20250508042540802.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_16480_getNotificationsBoardByIdNotificationByField_20250508042540802 (Order: 16480)
  * def field = "lumbers"
  * def idNotification = "variolating"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16496_getActionsBoardByIdActionByField_20250508042547415.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_16496_getActionsBoardByIdActionByField_20250508042547415 (Order: 16496)
  * def field = "1c4520a7-4b6a-44a5-b3bd-cdf599572b02"
  * def idAction = "Iyar"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1650_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508030301410.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_1650_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508030301410 (Order: 1650)
  * def idCard = "jacks-of-all-trades"
  * def idChecklist = "POP"
  * def idCheckItem = ""
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16526_getMembersBoardsInvitedByIdMember_20250508042601120.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_16526_getMembersBoardsInvitedByIdMember_20250508042601120 (Order: 16526)
  * def idMember = "tchu"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1654_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508030301412.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_1654_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508030301412 (Order: 1654)
  * def idCard = "fx84Or"
  * def idChecklist = "_s3JFY-VjSmJvB5K"
  * def idCheckItem = "qo4toqKPT7gZd"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16564_getActionsCardByIdAction_20250508042614288.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_16564_getActionsCardByIdAction_20250508042614288 (Order: 16564)
  * def idAction = "brawls"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16582_getChecklistsBoardByIdChecklistByField_20250508042620871.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_16582_getChecklistsBoardByIdChecklistByField_20250508042620871 (Order: 16582)
  * def field = "http:qlprkqwh.ioPL24 9260 5520 2805 5791 9894 8101"
  * def idChecklist = "maxixe a ET"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16591_getChecklistsBoardByIdChecklistByField_20250508042620877.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_16591_getChecklistsBoardByIdChecklistByField_20250508042620877 (Order: 16591)
  * def field = "Johathan K T "
  * def idChecklist = "06:33:51"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16621_getCardsListByIdCardByField_20250508042634025.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_16621_getCardsListByIdCardByField_20250508042634025 (Order: 16621)
  * def field = "19:18:59"
  * def idCard = "XP"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16630_getCardsListByIdCardByField_20250508042634030.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_16630_getCardsListByIdCardByField_20250508042634030 (Order: 16630)
  * def field = "dimethylnitrosamine"
  * def idCard = "K"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16648_getNotificationsCardByIdNotificationByField_20250508042640595.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_16648_getNotificationsCardByIdNotificationByField_20250508042640595 (Order: 16648)
  * def field = "shovel-headed"
  * def idNotification = "leaseholding"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1666_updateChecklistsByIdChecklist_20250508030307949.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_1666_updateChecklistsByIdChecklist_20250508030307949 (Order: 1666)
  * def idChecklist = "ln"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16683_getListsBoardByIdListByField_20250508042653964.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_16683_getListsBoardByIdListByField_20250508042653964 (Order: 16683)
  * def field = "prowl"
  * def idList = "2k4hc£S"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16704_getMembersCardsByIdMemberByFilter_20250508042700550.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_16704_getMembersCardsByIdMemberByFilter_20250508042700550 (Order: 16704)
  * def filter = "20021009"
  * def idMember = "Caviness"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16732_getOrganizationsBoardsByIdOrgByFilter_20250508042707049.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_16732_getOrganizationsBoardsByIdOrgByFilter_20250508042707049 (Order: 16732)
  * def filter = "didymolite"
  * def idOrg = "legitimizations"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16736_getOrganizationsBoardsByIdOrgByFilter_20250508042707050.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_16736_getOrganizationsBoardsByIdOrgByFilter_20250508042707050 (Order: 16736)
  * def filter = "twie"
  * def idOrg = "HU08 7611 1473 6284 7993 3014 6678"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16769_getCardsAttachmentsByIdCard_20250508042721118.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_16769_getCardsAttachmentsByIdCard_20250508042721118 (Order: 16769)
  * def idCard = "057790496"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16783_getListsByIdList_20250508042727702.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_16783_getListsByIdList_20250508042727702 (Order: 16783)
  * def idList = "treetops"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16800_getListsByIdList_20250508042727710.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_16800_getListsByIdList_20250508042727710 (Order: 16800)
  * def idList = "river-horse"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16820_getChecklistsByIdChecklist_20250508042734561.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_16820_getChecklistsByIdChecklist_20250508042734561 (Order: 16820)
  * def idChecklist = "nonsolidifying"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16833_getCardsChecklistsByIdCard_20250508042741101.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_16833_getCardsChecklistsByIdCard_20250508042741101 (Order: 16833)
  * def idCard = "AT"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16847_getActionsByIdAction_20250508042747665.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_16847_getActionsByIdAction_20250508042747665 (Order: 16847)
  * def idAction = "+948-41805339234"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16876_getOrganizationsBoardsByIdOrg_20250508042754178.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_16876_getOrganizationsBoardsByIdOrg_20250508042754178 (Order: 16876)
  * def idOrg = "nale"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16884_getMembersCardsByIdMember_20250508042800746.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_16884_getMembersCardsByIdMember_20250508042800746 (Order: 16884)
  * def idMember = "meloe"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16906_getChecklistsCardsByIdChecklist_20250508042807323.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_16906_getChecklistsCardsByIdChecklist_20250508042807323 (Order: 16906)
  * def idChecklist = "sonnetry"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16921_getBoardsCardsByIdBoard_20250508042813952.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_16921_getBoardsCardsByIdBoard_20250508042813952 (Order: 16921)
  * def idBoard = "DUI"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16946_getListsCardsByIdList_20250508042820531.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_16946_getListsCardsByIdList_20250508042820531 (Order: 16946)
  * def idList = "superoanterior"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16957_getListsCardsByIdList_20250508042820537.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_16957_getListsCardsByIdList_20250508042820537 (Order: 16957)
  * def idList = "Wolverton"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1696_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508030314596.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_1696_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508030314596 (Order: 1696)
  * def idCard = "0004 9049935"
  * def idCheckItem = "brawls"
  * def idChecklistCurrent = "XN"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16_getBatch_20250508025352807.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_16_getBatch_20250508025352807 (Order: 16)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17014_getListsActionsByIdList_20250508042840318.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_17014_getListsActionsByIdList_20250508042840318 (Order: 17014)
  * def idList = "54ee26372533"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17037_getOrganizationsActionsByIdOrg_20250508042846926.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_17037_getOrganizationsActionsByIdOrg_20250508042846926 (Order: 17037)
  * def idOrg = "hush"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17043_getBoardsActionsByIdBoard_20250508042853537.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_17043_getBoardsActionsByIdBoard_20250508042853537 (Order: 17043)
  * def idBoard = "sculpted"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17069_getBoardsCardsByIdBoardByIdCard_20250508042900169.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_17069_getBoardsCardsByIdBoardByIdCard_20250508042900169 (Order: 17069)
  * def idBoard = "Humist"
  * def idCard = "2184374cebb6a"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17080_getBoardsCardsByIdBoardByIdCard_20250508042900177.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_17080_getBoardsCardsByIdBoardByIdCard_20250508042900177 (Order: 17080)
  * def idBoard = "MGPWekqZlvlNwXp1_QpNRXtD9T7BG5ixStZnx1ZTeBmNTfYtdlvzXFCH6HQ_Awuv-Cv0XSzQq3Yq"
  * def idCard = "mercify"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17101_getOrganizationsByIdOrg_20250508042913301.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_17101_getOrganizationsByIdOrg_20250508042913301 (Order: 17101)
  * def idOrg = "colonialists"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17129_getBoardsByIdBoard_20250508042919948.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_17129_getBoardsByIdBoard_20250508042919948 (Order: 17129)
  * def idBoard = "filmable"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17137_getBoardsByIdBoard_20250508042919962.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_17137_getBoardsByIdBoard_20250508042919962 (Order: 17137)
  * def idBoard = "lovesick RB "
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17164_addListsArchiveAllCardsByIdList_20250508042933557.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_17164_addListsArchiveAllCardsByIdList_20250508042933557 (Order: 17164)
  * def idList = "CrBO"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17178_addListsArchiveAllCardsByIdList_20250508042933563.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_17178_addListsArchiveAllCardsByIdList_20250508042933563 (Order: 17178)
  * def idList = "principled"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1719_updateListsByIdList_20250508030321237.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_1719_updateListsByIdList_20250508030321237 (Order: 1719)
  * def idList = "vorhan"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17204_addCardsActionsCommentsByIdCard_20250508042947733.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_17204_addCardsActionsCommentsByIdCard_20250508042947733 (Order: 17204)
  * def idCard = "multituberculate"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17222_addCardsIdLabelsByIdCard_20250508042954468.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_17222_addCardsIdLabelsByIdCard_20250508042954468 (Order: 17222)
  * def idCard = "http:nxi.sprtfvuz.itRE23 1589 6336 541S PKUZ 4EXY 921"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17241_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508043001131.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_17241_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508043001131 (Order: 17241)
  * def idCard = "0d66f685-2b7b-4761-8af1-82bc29debe28"
  * def idChecklist = "PEI"
  * def idCheckItem = "0007 7461413"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17268_addLabels_20250508043007770.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_17268_addLabels_20250508043007770 (Order: 17268)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17274_addLabels_20250508043007776.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_17274_addLabels_20250508043007776 (Order: 17274)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17293_addCardsChecklistsByIdCard_20250508043014402.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_17293_addCardsChecklistsByIdCard_20250508043014402 (Order: 17293)
  * def idCard = "20030510"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17316_addCardsLabelsByIdCard_20250508043021033.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_17316_addCardsLabelsByIdCard_20250508043021033 (Order: 17316)
  * def idCard = "634-200741"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17339_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508043027662.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_17339_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508043027662 (Order: 17339)
  * def idCard = "0011 1354542"
  * def idChecklist = "Sclerodermi"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17355_addCardsAttachmentsByIdCard_20250508043034264.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_17355_addCardsAttachmentsByIdCard_20250508043034264 (Order: 17355)
  * def idCard = "http:yuh.ixgdb.meprosupport"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17365_addChecklists_20250508043040849.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_17365_addChecklists_20250508043040849 (Order: 17365)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17382_addLists_20250508043047823.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_17382_addLists_20250508043047823 (Order: 17382)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17404_addListsCardsByIdList_20250508043054409.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_17404_addListsCardsByIdList_20250508043054409 (Order: 17404)
  * def idList = "MC34 7571 8055 792E X8O8 CR8C V40"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17426_addOrganizations_20250508043100976.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_17426_addOrganizations_20250508043100976 (Order: 17426)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17436_addOrganizations_20250508043100981.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_17436_addOrganizations_20250508043100981 (Order: 17436)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17466_addBoards_20250508043114196.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_17466_addBoards_20250508043114196 (Order: 17466)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17487_updateCardsIdListByIdCard_20250508043120797.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_17487_updateCardsIdListByIdCard_20250508043120797 (Order: 17487)
  * def idCard = "nudnik"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17495_updateCardsIdListByIdCard_20250508043120801.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_17495_updateCardsIdListByIdCard_20250508043120801 (Order: 17495)
  * def idCard = "B5Wdg4aq2D"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1750_updateCardsByIdCard_20250508030334382.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_1750_updateCardsByIdCard_20250508030334382 (Order: 1750)
  * def idCard = "pentachloride"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1752_updateCardsByIdCard_20250508030334383.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_1752_updateCardsByIdCard_20250508030334383 (Order: 1752)
  * def idCard = "IV"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17544_updateCardsClosedByIdCard_20250508043140476.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_17544_updateCardsClosedByIdCard_20250508043140476 (Order: 17544)
  * def idCard = "Kenway"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17567_updateCardsDueByIdCard_20250508043147022.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_17567_updateCardsDueByIdCard_20250508043147022 (Order: 17567)
  * def idCard = "well-helped"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17585_updateNotificationsByIdNotification_20250508043153546.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_17585_updateNotificationsByIdNotification_20250508043153546 (Order: 17585)
  * def idNotification = "CN"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17610_updateCardsIdAttachmentCoverByIdCard_20250508043200098.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_17610_updateCardsIdAttachmentCoverByIdCard_20250508043200098 (Order: 17610)
  * def idCard = "nudophobia"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17633_updateLabelsColorByIdLabel_20250508043211692.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_17633_updateLabelsColorByIdLabel_20250508043211692 (Order: 17633)
  * def idLabel = "WBfTdRB-7lgZln-vL54Gr_SI6Ug-7w2p8dkgwLU3zqRiyU7QerEJcndD6TfnznfVWhH1i1Eo0DXkyFJcHToZzFY="
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1764_updateBoardsByIdBoard_20250508030340928.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_1764_updateBoardsByIdBoard_20250508030340928 (Order: 1764)
  * def idBoard = "didymolite"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17653_updateLabelsNameByIdLabel_20250508043219269.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_17653_updateLabelsNameByIdLabel_20250508043219269 (Order: 17653)
  * def idLabel = "hidings"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17677_updateActionsByIdAction_20250508043227654.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_17677_updateActionsByIdAction_20250508043227654 (Order: 17677)
  * def idAction = "139.226.140.1"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17693_updateCardsIdBoardByIdCard_20250508043235335.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_17693_updateCardsIdBoardByIdCard_20250508043235335 (Order: 17693)
  * def idCard = "boolean"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17720_updateCardsActionsCommentsByIdCardByIdAction_20250508043243080.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_17720_updateCardsActionsCommentsByIdCardByIdAction_20250508043243080 (Order: 17720)
  * def idCard = "WV"
  * def idAction = "4VVGsKqDAXps6"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17737_updateLabelsByIdLabel_20250508043250183.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_17737_updateLabelsByIdLabel_20250508043250183 (Order: 17737)
  * def idLabel = "Baeda"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17745_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508043256722.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_17745_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508043256722 (Order: 17745)
  * def idCard = "00117387390"
  * def idChecklist = "IRE"
  * def idCheckItem = "transfigurative"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1776_updateBoardsByIdBoard_20250508030340940.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_1776_updateBoardsByIdBoard_20250508030340940 (Order: 1776)
  * def idBoard = "deoxyribonuclease"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17787_updateCardsLabelsByIdCard_20250508043309661.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_17787_updateCardsLabelsByIdCard_20250508043309661 (Order: 17787)
  * def idCard = "http:f.de"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17801_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508043316228.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_17801_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508043316228 (Order: 17801)
  * def idCard = "acara"
  * def idChecklist = "tgrel@afhfylsb.de"
  * def idCheckItem = ""
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17820_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508043316238.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_17820_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508043316238 (Order: 17820)
  * def idCard = "JxsDZnZhow=="
  * def idChecklist = "lighty"
  * def idCheckItem = "acierating"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17844_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508043329333.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_17844_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508043329333 (Order: 17844)
  * def idCard = "8"
  * def idCheckItem = "countermachination"
  * def idChecklistCurrent = "403470076"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1785_deleteActionsByIdAction_20250508030347509.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_1785_deleteActionsByIdAction_20250508030347509 (Order: 1785)
  * def idAction = "Fuehrer "
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17873_updateListsByIdList_20250508043335873.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_17873_updateListsByIdList_20250508043335873 (Order: 17873)
  * def idList = "overcensoriousness"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17897_updateOrganizationsByIdOrg_20250508043342406.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_17897_updateOrganizationsByIdOrg_20250508043342406 (Order: 17897)
  * def idOrg = "PBT"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17917_updateCardsByIdCard_20250508043348980.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_17917_updateCardsByIdCard_20250508043348980 (Order: 17917)
  * def idCard = "kays titha"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17937_updateBoardsByIdBoard_20250508043355493.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_17937_updateBoardsByIdBoard_20250508043355493 (Order: 17937)
  * def idBoard = "HS"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17950_deleteActionsByIdAction_20250508043402031.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_17950_deleteActionsByIdAction_20250508043402031 (Order: 17950)
  * def idAction = "P"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17963_deleteCardsByIdCard_20250508043408516.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_17963_deleteCardsByIdCard_20250508043408516 (Order: 17963)
  * def idCard = "avoider"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17982_deleteLabelsByIdLabel_20250508043415403.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_17982_deleteLabelsByIdLabel_20250508043415403 (Order: 17982)
  * def idLabel = "AQ"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17_getBatch_20250508025352809.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_17_getBatch_20250508025352809 (Order: 17)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18017_deleteOrganizationsByIdOrg_20250508043421955.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_18017_deleteOrganizationsByIdOrg_20250508043421955 (Order: 18017)
  * def idOrg = "2937605502"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1802_deleteCardsByIdCard_20250508030353988.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_1802_deleteCardsByIdCard_20250508030353988 (Order: 1802)
  * def idCard = "VU"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18060_deleteCardsChecklistsByIdCardByIdChecklist_20250508043435065.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_18060_deleteCardsChecklistsByIdCardByIdChecklist_20250508043435065 (Order: 18060)
  * def idCard = "118.254.143.138"
  * def idChecklist = "00023662802"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18067_deleteCardsActionsCommentsByIdCardByIdAction_20250508043441565.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_18067_deleteCardsActionsCommentsByIdCardByIdAction_20250508043441565 (Order: 18067)
  * def idCard = "loans"
  * def idAction = "07:32:36"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1808_deleteCardsByIdCard_20250508030353991.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_1808_deleteCardsByIdCard_20250508030353991 (Order: 1808)
  * def idCard = "boolean"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18110_deleteCardsLabelsByIdCardByColor_20250508043454566.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_18110_deleteCardsLabelsByIdCardByColor_20250508043454566 (Order: 18110)
  * def color = "UirEw8OeGemsyPbkpuEAPBkwYGiaDekzQQmiDapP7nBwl4Hxmy6RRj1Q9jda6jsow7qONhmafPZbU2Rr-Oe08PD-RLI_mg5JWrHQJQ=="
  * def idCard = "IT65 Q745 9540 411W DFNX L96I OGS"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18129_deleteCardsIdMembersByIdCardByIdMember_20250508043501053.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_18129_deleteCardsIdMembersByIdCardByIdMember_20250508043501053 (Order: 18129)
  * def idCard = "L3"
  * def idMember = "tuple"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18146_deleteCardsIdLabelsByIdCardByIdLabel_20250508043507604.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_18146_deleteCardsIdLabelsByIdCardByIdLabel_20250508043507604 (Order: 18146)
  * def idCard = "eugenism"
  * def idLabel = "Territelae"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18169_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508043514169.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_18169_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508043514169 (Order: 18169)
  * def idCard = "F"
  * def idChecklist = "Stokes"
  * def idCheckItem = "xw"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18189_getBatch_20250508043520747.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_18189_getBatch_20250508043520747 (Order: 18189)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18193_getBatch_20250508043520748.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_18193_getBatch_20250508043520748 (Order: 18193)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18218_getNotificationsCardByIdNotification_20250508043527367.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_18218_getNotificationsCardByIdNotification_20250508043527367 (Order: 18218)
  * def idNotification = "eh"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18245_getChecklistsBoardByIdChecklist_20250508043540589.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_18245_getChecklistsBoardByIdChecklist_20250508043540589 (Order: 18245)
  * def idChecklist = "d'"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18249_getChecklistsBoardByIdChecklist_20250508043540590.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_18249_getChecklistsBoardByIdChecklist_20250508043540590 (Order: 18249)
  * def idChecklist = "R"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18270_getListsBoardByIdList_20250508043547180.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_18270_getListsBoardByIdList_20250508043547180 (Order: 18270)
  * def idList = "20120625"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18286_getMembersBoardsByIdMemberByFilter_20250508043553813.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_18286_getMembersBoardsByIdMemberByFilter_20250508043553813 (Order: 18286)
  * def filter = "Inanna"
  * def idMember = "nutty-flavored"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1830_deleteLabelsByIdLabel_20250508030400727.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_1830_deleteLabelsByIdLabel_20250508030400727 (Order: 1830)
  * def idLabel = "Zr douc hogge"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18329_getBoardsCardsByIdBoardByFilter_20250508043607079.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_18329_getBoardsCardsByIdBoardByFilter_20250508043607079 (Order: 18329)
  * def filter = "177.21.41.99"
  * def idBoard = "d257671a-68c5-4011-af43-065e5c6ef6e5"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18341_getNotificationsBoardByIdNotification_20250508043615330.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_18341_getNotificationsBoardByIdNotification_20250508043615330 (Order: 18341)
  * def idNotification = "venially"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18371_getLabelsByIdLabel_20250508043622551.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_18371_getLabelsByIdLabel_20250508043622551 (Order: 18371)
  * def idLabel = "NPG"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18376_getLabelsByIdLabel_20250508043622553.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_18376_getLabelsByIdLabel_20250508043622553 (Order: 18376)
  * def idLabel = "I3HA52uSY4Qa"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18391_getLabelsBoardByIdLabel_20250508043629230.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_18391_getLabelsBoardByIdLabel_20250508043629230 (Order: 18391)
  * def idLabel = "outcries"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18420_getActionsCardByIdActionByField_20250508043635847.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_18420_getActionsCardByIdActionByField_20250508043635847 (Order: 18420)
  * def field = "unentangle"
  * def idAction = "0005 1031832"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18427_getListsCardsByIdListByFilter_20250508043642428.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_18427_getListsCardsByIdListByFilter_20250508043642428 (Order: 18427)
  * def filter = "principled"
  * def idList = "octastrophic"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18444_getActionsBoardByIdAction_20250508043649015.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_18444_getActionsBoardByIdAction_20250508043649015 (Order: 18444)
  * def idAction = "77ba2147-bd0e-4d64-8359-eb6f5c543891"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1846_deleteOrganizationsByIdOrg_20250508030407311.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_1846_deleteOrganizationsByIdOrg_20250508030407311 (Order: 1846)
  * def idOrg = "Charpentier"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18488_getNotificationsBoardByIdNotificationByField_20250508043702177.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_18488_getNotificationsBoardByIdNotificationByField_20250508043702177 (Order: 18488)
  * def field = "Oozy"
  * def idNotification = "modiation"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18508_getActionsBoardByIdActionByField_20250508043708739.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_18508_getActionsBoardByIdActionByField_20250508043708739 (Order: 18508)
  * def field = "moory"
  * def idAction = "40a9720f6f"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18518_getActionsBoardByIdActionByField_20250508043708746.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_18518_getActionsBoardByIdActionByField_20250508043708746 (Order: 18518)
  * def field = "Henderson"
  * def idAction = "K£d3"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18539_getCardsBoardByIdCard_20250508043715382.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_18539_getCardsBoardByIdCard_20250508043715382 (Order: 18539)
  * def idCard = "fou"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18554_getMembersBoardsInvitedByIdMember_20250508043721953.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_18554_getMembersBoardsInvitedByIdMember_20250508043721953 (Order: 18554)
  * def idMember = "overobjectified"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18587_getActionsCardByIdAction_20250508043740372.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_18587_getActionsCardByIdAction_20250508043740372 (Order: 18587)
  * def idAction = "WL"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18605_getChecklistsBoardByIdChecklistByField_20250508043750129.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_18605_getChecklistsBoardByIdChecklistByField_20250508043750129 (Order: 18605)
  * def field = "Dunnellon"
  * def idChecklist = "dees questionabl"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1860_deleteOrganizationsByIdOrg_20250508030407317.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_1860_deleteOrganizationsByIdOrg_20250508030407317 (Order: 1860)
  * def idOrg = "verged"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1863_deleteChecklistsByIdChecklist_20250508030413874.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_1863_deleteChecklistsByIdChecklist_20250508030413874 (Order: 1863)
  * def idChecklist = "adventitiousnesses"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18659_getCardsListByIdCardByField_20250508043806694.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_18659_getCardsListByIdCardByField_20250508043806694 (Order: 18659)
  * def field = "00026713438"
  * def idCard = "fujhl@gmail.com"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18674_getNotificationsCardByIdNotificationByField_20250508043814913.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_18674_getNotificationsCardByIdNotificationByField_20250508043814913 (Order: 18674)
  * def field = "+1935-04237006629"
  * def idNotification = "PB"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18694_getCardsBoardByIdCardByField_20250508043823057.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_18694_getCardsBoardByIdCardByField_20250508043823057 (Order: 18694)
  * def field = "2"
  * def idCard = "F"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_186_getLabelsByIdLabel_20250508025456281.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_186_getLabelsByIdLabel_20250508025456281 (Order: 186)
  * def idLabel = "06:59:56"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18731_getMembersCardsByIdMemberByFilter_20250508043837485.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_18731_getMembersCardsByIdMemberByFilter_20250508043837485 (Order: 18731)
  * def filter = "GE55 EP76 5298 4800 9689 06"
  * def idMember = "torpified"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18738_getMembersCardsByIdMemberByFilter_20250508043837489.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_18738_getMembersCardsByIdMemberByFilter_20250508043837489 (Order: 18738)
  * def filter = "G"
  * def idMember = "JO75 AMTL 7753 JA9B XT98 4RFE O8BY W1"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18754_getOrganizationsBoardsByIdOrgByFilter_20250508043844417.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_18754_getOrganizationsBoardsByIdOrgByFilter_20250508043844417 (Order: 18754)
  * def filter = "MayUz3"
  * def idOrg = "ATM superemphasized"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18773_getCardsAttachmentsByIdCardByIdAttachment_20250508043851215.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_18773_getCardsAttachmentsByIdCardByIdAttachment_20250508043851215 (Order: 18773)
  * def idAttachment = "Dubq8"
  * def idCard = "0010 8175799"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18793_getCardsAttachmentsByIdCard_20250508043857752.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_18793_getCardsAttachmentsByIdCard_20250508043857752 (Order: 18793)
  * def idCard = "dowager"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18811_getListsByIdList_20250508043904427.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_18811_getListsByIdList_20250508043904427 (Order: 18811)
  * def idList = "pyrognomic"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18823_getChecklistsByIdChecklist_20250508043911039.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_18823_getChecklistsByIdChecklist_20250508043911039 (Order: 18823)
  * def idChecklist = "0017 7291366"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18853_getCardsChecklistsByIdCard_20250508043917627.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_18853_getCardsChecklistsByIdCard_20250508043917627 (Order: 18853)
  * def idCard = "bd2ff44e-296f-4741-85d9-14b2913d4069"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18859_getCardsChecklistsByIdCard_20250508043917630.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_18859_getCardsChecklistsByIdCard_20250508043917630 (Order: 18859)
  * def idCard = "Wimpy"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18881_getOrganizationsBoardsByIdOrg_20250508043930865.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_18881_getOrganizationsBoardsByIdOrg_20250508043930865 (Order: 18881)
  * def idOrg = "http:yralpvu.zmefqyo.gov"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18909_getMembersCardsByIdMember_20250508043937484.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_18909_getMembersCardsByIdMember_20250508043937484 (Order: 18909)
  * def idMember = "241.46.176.248"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18925_getChecklistsCardsByIdChecklist_20250508043944122.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_18925_getChecklistsCardsByIdChecklist_20250508043944122 (Order: 18925)
  * def idChecklist = "w"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18939_getChecklistsCardsByIdChecklist_20250508043944130.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_18939_getChecklistsCardsByIdChecklist_20250508043944130 (Order: 18939)
  * def idChecklist = "mom"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1894_deleteCardsChecklistsByIdCardByIdChecklist_20250508030420353.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_1894_deleteCardsChecklistsByIdCardByIdChecklist_20250508030420353 (Order: 1894)
  * def idCard = "phosphomonoesterase"
  * def idChecklist = "http:tcfkly.co.ukpleonectic"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18980_getListsCardsByIdList_20250508043957312.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_18980_getListsCardsByIdList_20250508043957312 (Order: 18980)
  * def idList = "b4ec:a0a9:2ba4:54e6:9a22:f042:f6a1:3b45"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_18993_getCardsActionsByIdCard_20250508044003944.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_18993_getCardsActionsByIdCard_20250508044003944 (Order: 18993)
  * def idCard = "trigamy"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19009_getNotificationsByIdNotification_20250508044010517.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_19009_getNotificationsByIdNotification_20250508044010517 (Order: 19009)
  * def idNotification = "o"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19030_getListsActionsByIdList_20250508044017086.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_19030_getListsActionsByIdList_20250508044017086 (Order: 19030)
  * def idList = ""
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19038_getListsActionsByIdList_20250508044017091.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_19038_getListsActionsByIdList_20250508044017091 (Order: 19038)
  * def idList = "erratum"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19061_getBoardsActionsByIdBoard_20250508044030345.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_19061_getBoardsActionsByIdBoard_20250508044030345 (Order: 19061)
  * def idBoard = "sandy-haired"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19090_getBoardsCardsByIdBoardByIdCard_20250508044036955.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_19090_getBoardsCardsByIdBoardByIdCard_20250508044036955 (Order: 19090)
  * def idBoard = "dispensatively"
  * def idCard = "nickers"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19100_getBoardsCardsByIdBoardByIdCard_20250508044036962.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_19100_getBoardsCardsByIdBoardByIdCard_20250508044036962 (Order: 19100)
  * def idBoard = "melanorrhea"
  * def idCard = "lingas"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19119_getCardsByIdCard_20250508044043538.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_19119_getCardsByIdCard_20250508044043538 (Order: 19119)
  * def idCard = "PEI filmable macro FIB VS"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19128_getOrganizationsByIdOrg_20250508044050078.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_19128_getOrganizationsByIdOrg_20250508044050078 (Order: 19128)
  * def idOrg = "deadeyes"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19163_addNotificationsAllRead_20250508044103290.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_19163_addNotificationsAllRead_20250508044103290 (Order: 19163)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19178_addNotificationsAllRead_20250508044103297.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_19178_addNotificationsAllRead_20250508044103297 (Order: 19178)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19198_addListsArchiveAllCardsByIdList_20250508044109873.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_19198_addListsArchiveAllCardsByIdList_20250508044109873 (Order: 19198)
  * def idList = "moltten"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19216_addCardsIdMembersByIdCard_20250508044116503.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_19216_addCardsIdMembersByIdCard_20250508044116503 (Order: 19216)
  * def idCard = "blocking"
  Given path 'cards/<idCard>/idMembers'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19234_addCardsActionsCommentsByIdCard_20250508044123168.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_19234_addCardsActionsCommentsByIdCard_20250508044123168 (Order: 19234)
  * def idCard = "f643411d-ca1a-40c8-b7d9-25fac5290918"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19240_addCardsActionsCommentsByIdCard_20250508044123170.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_19240_addCardsActionsCommentsByIdCard_20250508044123170 (Order: 19240)
  * def idCard = "chinaphthol"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1925_deleteCardsAttachmentsByIdCardByIdAttachment_20250508030433443.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_1925_deleteCardsAttachmentsByIdCardByIdAttachment_20250508030433443 (Order: 1925)
  * def idAttachment = "douc"
  * def idCard = "RS84 4313 7784 4097 7215 64"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19277_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508044136550.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_19277_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508044136550 (Order: 19277)
  * def idCard = "Lk*Qu"
  * def idChecklist = "physiotherapeutics"
  * def idCheckItem = "01:19:11"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19290_addLabels_20250508044143111.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_19290_addLabels_20250508044143111 (Order: 19290)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19325_addCardsLabelsByIdCard_20250508044156402.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_19325_addCardsLabelsByIdCard_20250508044156402 (Order: 19325)
  * def idCard = "GDB"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19338_addCardsLabelsByIdCard_20250508044156407.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_19338_addCardsLabelsByIdCard_20250508044156407 (Order: 19338)
  * def idCard = "CN"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19361_addCardsAttachmentsByIdCard_20250508044210122.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_19361_addCardsAttachmentsByIdCard_20250508044210122 (Order: 19361)
  * def idCard = "uncavilling"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19363_addCardsAttachmentsByIdCard_20250508044210124.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_19363_addCardsAttachmentsByIdCard_20250508044210124 (Order: 19363)
  * def idCard = "20060214"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19390_addChecklists_20250508044216717.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_19390_addChecklists_20250508044216717 (Order: 19390)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_193_getLabelsByIdLabel_20250508025456286.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_193_getLabelsByIdLabel_20250508025456286 (Order: 193)
  * def idLabel = "art. DUI double-ended n G"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19428_addListsCardsByIdList_20250508044229867.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_19428_addListsCardsByIdList_20250508044229867 (Order: 19428)
  * def idList = "xzt@gmail.com"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19451_addOrganizations_20250508044236424.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_19451_addOrganizations_20250508044236424 (Order: 19451)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19456_addOrganizations_20250508044236427.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_19456_addOrganizations_20250508044236427 (Order: 19456)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19480_addCards_20250508044243017.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_19480_addCards_20250508044243017 (Order: 19480)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1949_deleteCardsLabelsByIdCardByColor_20250508030439998.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_1949_deleteCardsLabelsByIdCardByColor_20250508030439998 (Order: 1949)
  * def color = "koruna"
  * def idCard = "chlorophyllaceous"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19516_updateCardsIdListByIdCard_20250508044256176.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_19516_updateCardsIdListByIdCard_20250508044256176 (Order: 19516)
  * def idCard = "irredeemability"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19540_updateCardsIdMembersByIdCard_20250508044302730.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_19540_updateCardsIdMembersByIdCard_20250508044302730 (Order: 19540)
  * def idCard = "VofsjF"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19552_updateCardsDescByIdCard_20250508044309245.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_19552_updateCardsDescByIdCard_20250508044309245 (Order: 19552)
  * def idCard = "ln"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19566_updateCardsClosedByIdCard_20250508044315818.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_19566_updateCardsClosedByIdCard_20250508044315818 (Order: 19566)
  * def idCard = "f94f7181-a508-4f2b-a77d-ce3baf786626"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19586_updateCardsDueByIdCard_20250508044322375.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_19586_updateCardsDueByIdCard_20250508044322375 (Order: 19586)
  * def idCard = "smoothcoat"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19609_updateNotificationsByIdNotification_20250508044328932.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_19609_updateNotificationsByIdNotification_20250508044328932 (Order: 19609)
  * def idNotification = "204ff944-7a60-421d-829d-3f09e7bf441a"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19625_updateCardsIdAttachmentCoverByIdCard_20250508044335503.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_19625_updateCardsIdAttachmentCoverByIdCard_20250508044335503 (Order: 19625)
  * def idCard = "20011128"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19648_updateLabelsColorByIdLabel_20250508044341975.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_19648_updateLabelsColorByIdLabel_20250508044341975 (Order: 19648)
  * def idLabel = "CH62 1521 8KL8 JVSJ J839 F"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19653_updateLabelsColorByIdLabel_20250508044341977.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_19653_updateLabelsColorByIdLabel_20250508044341977 (Order: 19653)
  * def idLabel = "UAPDU"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19680_updateLabelsNameByIdLabel_20250508044348604.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_19680_updateLabelsNameByIdLabel_20250508044348604 (Order: 19680)
  * def idLabel = "Xss="
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19690_updateActionsByIdAction_20250508044355177.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_19690_updateActionsByIdAction_20250508044355177 (Order: 19690)
  * def idAction = "RRp1GOyjv9o"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19706_updateCardsIdBoardByIdCard_20250508044401968.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_19706_updateCardsIdBoardByIdCard_20250508044401968 (Order: 19706)
  * def idCard = "double-ended"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19723_updateCardsActionsCommentsByIdCardByIdAction_20250508044408544.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_19723_updateCardsActionsCommentsByIdCardByIdAction_20250508044408544 (Order: 19723)
  * def idCard = "W"
  * def idAction = "a"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19757_updateLabelsByIdLabel_20250508044415113.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_19757_updateLabelsByIdLabel_20250508044415113 (Order: 19757)
  * def idLabel = "an-"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19764_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508044421652.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_19764_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508044421652 (Order: 19764)
  * def idCard = "V AQ "
  * def idChecklist = "semiconvergence"
  * def idCheckItem = "JCA"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19780_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508044421662.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_19780_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508044421662 (Order: 19780)
  * def idCard = "Stochmal"
  * def idChecklist = "BUT"
  * def idCheckItem = "coverages"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19800_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508044428207.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_19800_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508044428207 (Order: 19800)
  * def idCard = "nudophobia"
  * def idChecklist = "20001216"
  * def idCheckItem = "http:latsvvz.de"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19828_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508044441349.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_19828_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508044441349 (Order: 19828)
  * def idCard = "superindividualist"
  * def idChecklist = "FW"
  * def idCheckItem = "HS"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19845_updateChecklistsByIdChecklist_20250508044447915.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_19845_updateChecklistsByIdChecklist_20250508044447915 (Order: 19845)
  * def idChecklist = "http:uewxik.me"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19861_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508044459273.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_19861_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508044459273 (Order: 19861)
  * def idCard = "hypsibrachycephaly"
  * def idCheckItem = "scriever"
  * def idChecklistCurrent = "overwhipping"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19880_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508044459285.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_19880_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508044459285 (Order: 19880)
  * def idCard = "Guahibo"
  * def idCheckItem = "ef964cfe-bb40-4a58-b021-f809064ef8c0"
  * def idChecklistCurrent = "self-basting"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19896_updateListsByIdList_20250508044510490.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_19896_updateListsByIdList_20250508044510490 (Order: 19896)
  * def idList = "Q"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19914_updateOrganizationsByIdOrg_20250508044518673.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_19914_updateOrganizationsByIdOrg_20250508044518673 (Order: 19914)
  * def idOrg = "4080585721"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19930_updateCardsByIdCard_20250508044526912.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_19930_updateCardsByIdCard_20250508044526912 (Order: 19930)
  * def idCard = "disconformably"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19951_updateBoardsByIdBoard_20250508044534062.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_19951_updateBoardsByIdBoard_20250508044534062 (Order: 19951)
  * def idBoard = "WL"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19971_deleteActionsByIdAction_20250508044541225.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_19971_deleteActionsByIdAction_20250508044541225 (Order: 19971)
  * def idAction = "63803-7988"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_19983_deleteCardsByIdCard_20250508044548351.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_19983_deleteCardsByIdCard_20250508044548351 (Order: 19983)
  * def idCard = "colliquativeness"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20006_deleteLabelsByIdLabel_20250508044554834.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_20006_deleteLabelsByIdLabel_20250508044554834 (Order: 20006)
  * def idLabel = "2106135534"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20014_deleteLabelsByIdLabel_20250508044554838.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_20014_deleteLabelsByIdLabel_20250508044554838 (Order: 20014)
  * def idLabel = "62821802596"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20027_deleteOrganizationsByIdOrg_20250508044601509.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_20027_deleteOrganizationsByIdOrg_20250508044601509 (Order: 20027)
  * def idOrg = "filmable"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20056_deleteChecklistsByIdChecklist_20250508044608049.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_20056_deleteChecklistsByIdChecklist_20250508044608049 (Order: 20056)
  * def idChecklist = "nonregistered"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20065_deleteCardsChecklistsByIdCardByIdChecklist_20250508044614545.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_20065_deleteCardsChecklistsByIdCardByIdChecklist_20250508044614545 (Order: 20065)
  * def idCard = "thio-"
  * def idChecklist = "Grimbly"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20087_deleteCardsActionsCommentsByIdCardByIdAction_20250508044621083.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_20087_deleteCardsActionsCommentsByIdCardByIdAction_20250508044621083 (Order: 20087)
  * def idCard = "nonalliterativeness"
  * def idAction = "eh"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20108_deleteCardsAttachmentsByIdCardByIdAttachment_20250508044627614.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_20108_deleteCardsAttachmentsByIdCardByIdAttachment_20250508044627614 (Order: 20108)
  * def idAttachment = "rIJSgq8TGxlBWL?J09"
  * def idCard = "hyphenate"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20128_deleteCardsLabelsByIdCardByColor_20250508044634166.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_20128_deleteCardsLabelsByIdCardByColor_20250508044634166 (Order: 20128)
  * def color = "DDS"
  * def idCard = "UAPDU"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20142_deleteCardsIdMembersByIdCardByIdMember_20250508044640725.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_20142_deleteCardsIdMembersByIdCardByIdMember_20250508044640725 (Order: 20142)
  * def idCard = "hydrochlorothiazide"
  * def idMember = "81.45.52.91"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20168_deleteCardsIdLabelsByIdCardByIdLabel_20250508044647270.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_20168_deleteCardsIdLabelsByIdCardByIdLabel_20250508044647270 (Order: 20168)
  * def idCard = "ojgbshioo@gmail.com"
  * def idLabel = "price-stabilizing"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_20177_deleteCardsIdLabelsByIdCardByIdLabel_20250508044647275.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_20177_deleteCardsIdLabelsByIdCardByIdLabel_20250508044647275 (Order: 20177)
  * def idCard = "containerport"
  * def idLabel = "foret"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2018_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508030500129.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_2018_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508030500129 (Order: 2018)
  * def idCard = "http:mo.melkwpaqab.chautocrator"
  * def idChecklist = "4wPYmaClptmgQJdDPgloXXYC"
  * def idCheckItem = "dipppy"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2036_getBatch_20250508030506739.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_2036_getBatch_20250508030506739 (Order: 2036)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2049_getNotificationsCardByIdNotification_20250508030513339.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_2049_getNotificationsCardByIdNotification_20250508030513339 (Order: 2049)
  * def idNotification = "erratum"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2068_getLabelsBoardByIdLabelByField_20250508030520019.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_2068_getLabelsBoardByIdLabelByField_20250508030520019 (Order: 2068)
  * def field = "t@gmail.com"
  * def idLabel = "W CN"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2089_getChecklistsBoardByIdChecklist_20250508030526714.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_2089_getChecklistsBoardByIdChecklist_20250508030526714 (Order: 2089)
  * def idChecklist = "lx posthast"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2114_getListsBoardByIdList_20250508030533346.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_2114_getListsBoardByIdList_20250508030533346 (Order: 2114)
  * def idList = "maut"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2117_getListsBoardByIdList_20250508030533347.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_2117_getListsBoardByIdList_20250508030533347 (Order: 2117)
  * def idList = "ostiolate"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2134_getMembersBoardsByIdMemberByFilter_20250508030539984.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_2134_getMembersBoardsByIdMemberByFilter_20250508030539984 (Order: 2134)
  * def filter = "UA22 1776 8469 0300 1490 6357 6954 9"
  * def idMember = "NC41 6063 7793 702B Y9ZK 4ND3 C98"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2164_getBoardsCardsByIdBoardByFilter_20250508030553299.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_2164_getBoardsCardsByIdBoardByFilter_20250508030553299 (Order: 2164)
  * def filter = "circumincession"
  * def idBoard = "subhalide"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2176_getBoardsCardsByIdBoardByFilter_20250508030553304.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_2176_getBoardsCardsByIdBoardByFilter_20250508030553304 (Order: 2176)
  * def filter = "J"
  * def idBoard = "OSIRM"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2201_getLabelsByIdLabel_20250508030606400.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_2201_getLabelsByIdLabel_20250508030606400 (Order: 2201)
  * def idLabel = "5e006d80-23d2-411d-8f4f-f38e90645c64"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2216_getLabelsByIdLabel_20250508030606411.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_2216_getLabelsByIdLabel_20250508030606411 (Order: 2216)
  * def idLabel = "BXHjNvhU"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2227_getLabelsBoardByIdLabel_20250508030613053.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_2227_getLabelsBoardByIdLabel_20250508030613053 (Order: 2227)
  * def idLabel = "NYy-GgKS_jrtf9SRQe7bY7KGi2ekH5epJVfe7O33gN6NwxzTMg7UBLMBe1RUnPMQcL2wKCEW95snDg=="
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_225_getActionsCardByIdActionByField_20250508025509677.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_225_getActionsCardByIdActionByField_20250508025509677 (Order: 225)
  * def field = "nonprovidentially"
  * def idAction = "blocking"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2276_getListsCardsByIdListByFilter_20250508030626368.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_2276_getListsCardsByIdListByFilter_20250508030626368 (Order: 2276)
  * def filter = "swoosh"
  * def idList = "Micco"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_228_getActionsCardByIdActionByField_20250508025509678.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_228_getActionsCardByIdActionByField_20250508025509678 (Order: 228)
  * def field = "nonvertebrate"
  * def idAction = "4277f89e-855c-494e-9ab9-9cb5fe034e1d"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2299_getActionsBoardByIdAction_20250508030633009.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_2299_getActionsBoardByIdAction_20250508030633009 (Order: 2299)
  * def idAction = "urotoxies"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2315_getCardsCheckItemStatesByIdCard_20250508030639556.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_2315_getCardsCheckItemStatesByIdCard_20250508030639556 (Order: 2315)
  * def idCard = "278057132"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2344_getActionsBoardByIdActionByField_20250508030652703.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_2344_getActionsBoardByIdActionByField_20250508030652703 (Order: 2344)
  * def field = "adcon haemodilution"
  * def idAction = "nonbotanically"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2365_getCardsBoardByIdCard_20250508030659402.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_2365_getCardsBoardByIdCard_20250508030659402 (Order: 2365)
  * def idCard = "DA"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2381_getMembersBoardsInvitedByIdMember_20250508030705942.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_2381_getMembersBoardsInvitedByIdMember_20250508030705942 (Order: 2381)
  * def idMember = "Pasco"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2402_getMembersBoardsInvitedByIdMemberByField_20250508030712506.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_2402_getMembersBoardsInvitedByIdMemberByField_20250508030712506 (Order: 2402)
  * def field = "Tali H i "
  * def idMember = "maut"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2404_getMembersBoardsInvitedByIdMemberByField_20250508030712506.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_2404_getMembersBoardsInvitedByIdMemberByField_20250508030712506 (Order: 2404)
  * def field = "http:sntaq.com"
  * def idMember = "Rab"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2426_getActionsCardByIdAction_20250508030719138.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_2426_getActionsCardByIdAction_20250508030719138 (Order: 2426)
  * def idAction = "MD24 3K1H ZGLS KY45 4XVH 0H3Y"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2444_getChecklistsBoardByIdChecklistByField_20250508030725699.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_2444_getChecklistsBoardByIdChecklistByField_20250508030725699 (Order: 2444)
  * def field = "punctist"
  * def idChecklist = "Resa"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2476_getCardsListByIdCard_20250508030732285.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_2476_getCardsListByIdCard_20250508030732285 (Order: 2476)
  * def idCard = "agreat"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2491_getCardsListByIdCardByField_20250508030740279.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_2491_getCardsListByIdCardByField_20250508030740279 (Order: 2491)
  * def field = "-GCu"
  * def idCard = "e3b77538-6c3c-417d-ab4d-3d64f55d4a3a"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2503_getNotificationsCardByIdNotificationByField_20250508030747483.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_2503_getNotificationsCardByIdNotificationByField_20250508030747483 (Order: 2503)
  * def field = "abuse"
  * def idNotification = "3273bd95-a975-49c0-9386-e5695b976802"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2526_getCardsBoardByIdCardByField_20250508030754707.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_2526_getCardsBoardByIdCardByField_20250508030754707 (Order: 2526)
  * def field = "golfed"
  * def idCard = "XL"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2541_getListsBoardByIdListByField_20250508030801898.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_2541_getListsBoardByIdListByField_20250508030801898 (Order: 2541)
  * def field = "UA97 8024 8736 9012 5530 8802 7610 6"
  * def idList = "bruits "
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2564_getMembersCardsByIdMemberByFilter_20250508030808878.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_2564_getMembersCardsByIdMemberByFilter_20250508030808878 (Order: 2564)
  * def filter = "X4WB6UaljeVEbTnSpxlmzZLeFS6NmfVv-s3yocePIHay8UTjL5uoZ_US9RxOhUG3Lw=="
  * def idMember = "+4390 65110282032"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2570_getMembersCardsByIdMemberByFilter_20250508030808881.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_2570_getMembersCardsByIdMemberByFilter_20250508030808881 (Order: 2570)
  * def filter = "antenati"
  * def idMember = "KKt"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2591_getOrganizationsBoardsByIdOrgByFilter_20250508030815831.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_2591_getOrganizationsBoardsByIdOrgByFilter_20250508030815831 (Order: 2591)
  * def filter = "antiorthodoxly"
  * def idOrg = "HSM"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2608_getCardsAttachmentsByIdCardByIdAttachment_20250508030822399.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_2608_getCardsAttachmentsByIdCardByIdAttachment_20250508030822399 (Order: 2608)
  * def idAttachment = "a2cd675ae8c79d"
  * def idCard = "2817576663"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2631_getCardsAttachmentsByIdCard_20250508030828947.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_2631_getCardsAttachmentsByIdCard_20250508030828947 (Order: 2631)
  * def idCard = "onychogryposis EAEO n 2 "
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2640_getCardsAttachmentsByIdCard_20250508030828950.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_2640_getCardsAttachmentsByIdCard_20250508030828950 (Order: 2640)
  * def idCard = "overholy"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_265_getActionsBoardByIdAction_20250508025522876.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_265_getActionsBoardByIdAction_20250508025522876 (Order: 265)
  * def idAction = "rhd@outlook.com"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2675_getChecklistsByIdChecklist_20250508030843451.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_2675_getChecklistsByIdChecklist_20250508030843451 (Order: 2675)
  * def idChecklist = "ecb Kaleena "
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2695_getCardsChecklistsByIdCard_20250508030850013.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_2695_getCardsChecklistsByIdCard_20250508030850013 (Order: 2695)
  * def idCard = ""
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2725_getOrganizationsBoardsByIdOrg_20250508030903113.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_2725_getOrganizationsBoardsByIdOrg_20250508030903113 (Order: 2725)
  * def idOrg = "banzai"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_273_getActionsBoardByIdAction_20250508025522881.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_273_getActionsBoardByIdAction_20250508025522881 (Order: 273)
  * def idAction = "quasi-appropriately"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2752_getMembersCardsByIdMember_20250508030909704.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_2752_getMembersCardsByIdMember_20250508030909704 (Order: 2752)
  * def idMember = "D"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2777_getChecklistsCardsByIdChecklist_20250508030916391.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_2777_getChecklistsCardsByIdChecklist_20250508030916391 (Order: 2777)
  * def idChecklist = ""
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2785_getBoardsCardsByIdBoard_20250508030922977.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_2785_getBoardsCardsByIdBoard_20250508030922977 (Order: 2785)
  * def idBoard = "http:gcezc.io"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2811_getListsCardsByIdList_20250508030930138.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_2811_getListsCardsByIdList_20250508030930138 (Order: 2811)
  * def idList = "carbocinchomeronic"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2829_getCardsActionsByIdCard_20250508030936768.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_2829_getCardsActionsByIdCard_20250508030936768 (Order: 2829)
  * def idCard = "H"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_284_getCardsCheckItemStatesByIdCard_20250508025529445.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_284_getCardsCheckItemStatesByIdCard_20250508025529445 (Order: 284)
  * def idCard = "cremorne"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_285_getCardsCheckItemStatesByIdCard_20250508025529446.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_285_getCardsCheckItemStatesByIdCard_20250508025529446 (Order: 285)
  * def idCard = "hidings"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2881_getOrganizationsActionsByIdOrg_20250508030957357.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_2881_getOrganizationsActionsByIdOrg_20250508030957357 (Order: 2881)
  * def idOrg = ""
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2896_getOrganizationsActionsByIdOrg_20250508030957366.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_2896_getOrganizationsActionsByIdOrg_20250508030957366 (Order: 2896)
  * def idOrg = "UU"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2909_getBoardsActionsByIdBoard_20250508031003942.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_2909_getBoardsActionsByIdBoard_20250508031003942 (Order: 2909)
  * def idBoard = "TEC KB"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_292_getCardsCheckItemStatesByIdCard_20250508025529451.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_292_getCardsCheckItemStatesByIdCard_20250508025529451 (Order: 292)
  * def idCard = "01395-5227"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_294_getCardsCheckItemStatesByIdCard_20250508025529452.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_294_getCardsCheckItemStatesByIdCard_20250508025529452 (Order: 294)
  * def idCard = "45139b66-6dab-4b50-a7d8-de2b814a97de"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2980_getOrganizationsByIdOrg_20250508031023809.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_2980_getOrganizationsByIdOrg_20250508031023809 (Order: 2980)
  * def idOrg = "lows s"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2993_getBoardsByIdBoard_20250508031030469.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_2993_getBoardsByIdBoard_20250508031030469 (Order: 2993)
  * def idBoard = "Web"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3010_addNotificationsAllRead_20250508031037287.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_3010_addNotificationsAllRead_20250508031037287 (Order: 3010)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3026_addListsArchiveAllCardsByIdList_20250508031044287.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_3026_addListsArchiveAllCardsByIdList_20250508031044287 (Order: 3026)
  * def idList = "yr"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3040_addListsArchiveAllCardsByIdList_20250508031044293.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_3040_addListsArchiveAllCardsByIdList_20250508031044293 (Order: 3040)
  * def idList = "H Micc"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3065_addCardsActionsCommentsByIdCard_20250508031057340.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_3065_addCardsActionsCommentsByIdCard_20250508031057340 (Order: 3065)
  * def idCard = "QnChoO04uOdZiEh9Yt8ViLHqeC1NZnvLR-s40sxpyWpovak6vW5_Z2LmbO9iNMVz-g=="
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3086_addCardsIdLabelsByIdCard_20250508031103897.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_3086_addCardsIdLabelsByIdCard_20250508031103897 (Order: 3086)
  * def idCard = "E"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3104_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508031110421.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_3104_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508031110421 (Order: 3104)
  * def idCard = "20171011"
  * def idChecklist = "flute-douce"
  * def idCheckItem = "unsupreme"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3115_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508031110427.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_3115_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508031110427 (Order: 3115)
  * def idCard = "tinema"
  * def idChecklist = "crustaceal"
  * def idCheckItem = "Ula"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3137_addLabels_20250508031116943.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_3137_addLabels_20250508031116943 (Order: 3137)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3142_addCardsChecklistsByIdCard_20250508031123559.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_3142_addCardsChecklistsByIdCard_20250508031123559 (Order: 3142)
  * def idCard = "53.173.238.5"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3167_addCardsLabelsByIdCard_20250508031130479.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_3167_addCardsLabelsByIdCard_20250508031130479 (Order: 3167)
  * def idCard = "472862661"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3183_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508031137026.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_3183_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508031137026 (Order: 3183)
  * def idCard = "olcfwki@live.com"
  * def idChecklist = "merger"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3213_addCardsAttachmentsByIdCard_20250508031143443.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_3213_addCardsAttachmentsByIdCard_20250508031143443 (Order: 3213)
  * def idCard = "a"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3220_addCardsAttachmentsByIdCard_20250508031143448.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_3220_addCardsAttachmentsByIdCard_20250508031143448 (Order: 3220)
  * def idCard = "SD"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3237_addChecklists_20250508031150058.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_3237_addChecklists_20250508031150058 (Order: 3237)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3251_addLists_20250508031156612.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_3251_addLists_20250508031156612 (Order: 3251)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3273_addListsCardsByIdList_20250508031203148.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_3273_addListsCardsByIdList_20250508031203148 (Order: 3273)
  * def idList = "l@live.com"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3287_addOrganizations_20250508031209715.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_3287_addOrganizations_20250508031209715 (Order: 3287)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3304_addCards_20250508031216294.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_3304_addCards_20250508031216294 (Order: 3304)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3326_addBoards_20250508031222916.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_3326_addBoards_20250508031222916 (Order: 3326)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3340_addBoards_20250508031222927.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_3340_addBoards_20250508031222927 (Order: 3340)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3371_updateCardsIdMembersByIdCard_20250508031236103.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_3371_updateCardsIdMembersByIdCard_20250508031236103 (Order: 3371)
  * def idCard = "20021116"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3378_updateCardsIdMembersByIdCard_20250508031236107.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_3378_updateCardsIdMembersByIdCard_20250508031236107 (Order: 3378)
  * def idCard = "(+7973) 79814739486"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3400_updateCardsDescByIdCard_20250508031242733.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_3400_updateCardsDescByIdCard_20250508031242733 (Order: 3400)
  * def idCard = "thae"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3420_updateCardsClosedByIdCard_20250508031249658.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_3420_updateCardsClosedByIdCard_20250508031249658 (Order: 3420)
  * def idCard = "003-397413"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3442_updateNotificationsByIdNotification_20250508031302766.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_3442_updateNotificationsByIdNotification_20250508031302766 (Order: 3442)
  * def idNotification = "ACK"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3458_updateNotificationsByIdNotification_20250508031302775.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_3458_updateNotificationsByIdNotification_20250508031302775 (Order: 3458)
  * def idNotification = "unfancifulness"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3470_updateCardsIdAttachmentCoverByIdCard_20250508031309327.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_3470_updateCardsIdAttachmentCoverByIdCard_20250508031309327 (Order: 3470)
  * def idCard = "22:08:36"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3498_updateLabelsColorByIdLabel_20250508031316470.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_3498_updateLabelsColorByIdLabel_20250508031316470 (Order: 3498)
  * def idLabel = "sulphopropionic"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3516_updateLabelsNameByIdLabel_20250508031323013.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_3516_updateLabelsNameByIdLabel_20250508031323013 (Order: 3516)
  * def idLabel = "agreat"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3530_updateActionsByIdAction_20250508031329551.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_3530_updateActionsByIdAction_20250508031329551 (Order: 3530)
  * def idAction = "hyhPakTwRg6y5ho="
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3543_updateCardsIdBoardByIdCard_20250508031336142.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_3543_updateCardsIdBoardByIdCard_20250508031336142 (Order: 3543)
  * def idCard = "autocrator"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3563_updateCardsActionsCommentsByIdCardByIdAction_20250508031342665.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_3563_updateCardsActionsCommentsByIdCardByIdAction_20250508031342665 (Order: 3563)
  * def idCard = "KR"
  * def idAction = "erratum"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3575_updateCardsActionsCommentsByIdCardByIdAction_20250508031342672.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_3575_updateCardsActionsCommentsByIdCardByIdAction_20250508031342672 (Order: 3575)
  * def idCard = "MMS"
  * def idAction = "CFFIh"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3594_updateLabelsByIdLabel_20250508031349213.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_3594_updateLabelsByIdLabel_20250508031349213 (Order: 3594)
  * def idLabel = "08:46:21"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3616_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508031356384.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_3616_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508031356384 (Order: 3616)
  * def idCard = "unprized"
  * def idChecklist = "KzMQRJ4Yx0Jb16JxnZXXtB19osbFMyldNL1IK8TQS6srT23vDtn5z0Hhgy6EgjUD5dGkrdVXXDeoFzy_Z0NJR9XyEXfNGUSEDZxnJQ=="
  * def idCheckItem = "pollinizing"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3636_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508031402906.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_3636_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508031402906 (Order: 3636)
  * def idCard = "db4a"
  * def idChecklist = "102.236.199.124"
  * def idCheckItem = "overtariff"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3660_updateCardsLabelsByIdCard_20250508031409468.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_3660_updateCardsLabelsByIdCard_20250508031409468 (Order: 3660)
  * def idCard = "sneerer"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3665_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508031415995.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_3665_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508031415995 (Order: 3665)
  * def idCard = "CO"
  * def idChecklist = "LTA"
  * def idCheckItem = "9226fbffd41"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3688_updateChecklistsByIdChecklist_20250508031422511.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_3688_updateChecklistsByIdChecklist_20250508031422511 (Order: 3688)
  * def idChecklist = "keap VAV"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3714_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508031429042.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_3714_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508031429042 (Order: 3714)
  * def idCard = "359-589160"
  * def idCheckItem = "FW"
  * def idChecklistCurrent = "unalarming"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3731_updateListsByIdList_20250508031435542.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_3731_updateListsByIdList_20250508031435542 (Order: 3731)
  * def idList = "quasi-historic"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3753_updateOrganizationsByIdOrg_20250508031442102.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_3753_updateOrganizationsByIdOrg_20250508031442102 (Order: 3753)
  * def idOrg = "+7857 11188992864"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3762_updateCardsByIdCard_20250508031448646.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_3762_updateCardsByIdCard_20250508031448646 (Order: 3762)
  * def idCard = "NV"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3784_updateBoardsByIdBoard_20250508031455195.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_3784_updateBoardsByIdBoard_20250508031455195 (Order: 3784)
  * def idBoard = "blown-in-the-bottle"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3806_deleteActionsByIdAction_20250508031501739.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_3806_deleteActionsByIdAction_20250508031501739 (Order: 3806)
  * def idAction = ""
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3811_deleteActionsByIdAction_20250508031501742.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_3811_deleteActionsByIdAction_20250508031501742 (Order: 3811)
  * def idAction = "H VL phon "
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3831_deleteCardsByIdCard_20250508031508616.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_3831_deleteCardsByIdCard_20250508031508616 (Order: 3831)
  * def idCard = "psychographic"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3850_deleteLabelsByIdLabel_20250508031515172.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_3850_deleteLabelsByIdLabel_20250508031515172 (Order: 3850)
  * def idLabel = "annihilationistical"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3872_deleteOrganizationsByIdOrg_20250508031521802.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_3872_deleteOrganizationsByIdOrg_20250508031521802 (Order: 3872)
  * def idOrg = "Dylan"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3896_deleteChecklistsByIdChecklist_20250508031528516.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_3896_deleteChecklistsByIdChecklist_20250508031528516 (Order: 3896)
  * def idChecklist = "nonillustratively"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3904_deleteCardsChecklistsByIdCardByIdChecklist_20250508031535050.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_3904_deleteCardsChecklistsByIdCardByIdChecklist_20250508031535050 (Order: 3904)
  * def idCard = "deerlike"
  * def idChecklist = "Vpi77UAAgKmW"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3926_deleteCardsActionsCommentsByIdCardByIdAction_20250508031541813.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_3926_deleteCardsActionsCommentsByIdCardByIdAction_20250508031541813 (Order: 3926)
  * def idCard = "unprovincialism"
  * def idAction = "n"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_394_getMembersBoardsInvitedByIdMemberByField_20250508025603175.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_394_getMembersBoardsInvitedByIdMemberByField_20250508025603175 (Order: 394)
  * def field = "62.121.183.204"
  * def idMember = "cretification"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3965_deleteCardsLabelsByIdCardByColor_20250508031554798.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_3965_deleteCardsLabelsByIdCardByColor_20250508031554798 (Order: 3965)
  * def color = "244.95.96.45"
  * def idCard = "houbara"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3977_deleteCardsLabelsByIdCardByColor_20250508031554804.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_3977_deleteCardsLabelsByIdCardByColor_20250508031554804 (Order: 3977)
  * def color = "coverages"
  * def idCard = "at."
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3999_deleteCardsIdMembersByIdCardByIdMember_20250508031601280.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_3999_deleteCardsIdMembersByIdCardByIdMember_20250508031601280 (Order: 3999)
  * def idCard = "conelet"
  * def idMember = "77881-6651"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4014_deleteCardsIdLabelsByIdCardByIdLabel_20250508031608396.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_4014_deleteCardsIdLabelsByIdCardByIdLabel_20250508031608396 (Order: 4014)
  * def idCard = ""
  * def idLabel = "Ptilonorhynchinae"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4035_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508031614921.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}
Scenario: test_TestId_4035_deleteCardsChecklistCheckItemByIdCardByIdChecklistByIdCheckItem_20250508031614921 (Order: 4035)
  * def idCard = "704-345684"
  * def idChecklist = "forams"
  * def idCheckItem = "PCH"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4043_getBatch_20250508031621452.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_4043_getBatch_20250508031621452 (Order: 4043)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4070_getNotificationsCardByIdNotification_20250508031627969.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_4070_getNotificationsCardByIdNotification_20250508031627969 (Order: 4070)
  * def idNotification = "nunation"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4088_getLabelsBoardByIdLabelByField_20250508031634511.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_4088_getLabelsBoardByIdLabelByField_20250508031634511 (Order: 4088)
  * def field = "7"
  * def idLabel = "micrometallographer"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_409_getActionsCardByIdAction_20250508025609764.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_409_getActionsCardByIdAction_20250508025609764 (Order: 409)
  * def idAction = "iWeA"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4114_getChecklistsBoardByIdChecklist_20250508031641160.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_4114_getChecklistsBoardByIdChecklist_20250508031641160 (Order: 4114)
  * def idChecklist = "20020211"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4139_getListsBoardByIdList_20250508031647714.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_4139_getListsBoardByIdList_20250508031647714 (Order: 4139)
  * def idList = "l@outlook.com"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4154_getMembersBoardsByIdMemberByFilter_20250508031654276.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_4154_getMembersBoardsByIdMemberByFilter_20250508031654276 (Order: 4154)
  * def filter = "flocculently"
  * def idMember = "sacerdotalism"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4185_getBoardsCardsByIdBoardByFilter_20250508031707446.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_4185_getBoardsCardsByIdBoardByFilter_20250508031707446 (Order: 4185)
  * def filter = "L"
  * def idBoard = "solaria"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4195_getBoardsCardsByIdBoardByFilter_20250508031707450.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_4195_getBoardsCardsByIdBoardByFilter_20250508031707450 (Order: 4195)
  * def filter = "Tajik"
  * def idBoard = "20171009"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_420_getActionsCardByIdAction_20250508025609771.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_420_getActionsCardByIdAction_20250508025609771 (Order: 420)
  * def idAction = "incarnalize"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4223_getLabelsByIdLabel_20250508031721020.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_4223_getLabelsByIdLabel_20250508031721020 (Order: 4223)
  * def idLabel = "X"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4241_getLabelsBoardByIdLabel_20250508031727653.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_4241_getLabelsBoardByIdLabel_20250508031727653 (Order: 4241)
  * def idLabel = "T"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4264_getActionsCardByIdActionByField_20250508031734658.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_4264_getActionsCardByIdActionByField_20250508031734658 (Order: 4264)
  * def field = "KB"
  * def idAction = "2"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4286_getListsCardsByIdListByFilter_20250508031741644.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_4286_getListsCardsByIdListByFilter_20250508031741644 (Order: 4286)
  * def filter = "4381829393"
  * def idList = "y"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4307_getActionsBoardByIdAction_20250508031748272.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_4307_getActionsBoardByIdAction_20250508031748272 (Order: 4307)
  * def idAction = "21:10:03"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4324_getCardsCheckItemStatesByIdCard_20250508031754816.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_4324_getCardsCheckItemStatesByIdCard_20250508031754816 (Order: 4324)
  * def idCard = "URC"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4341_getNotificationsBoardByIdNotificationByField_20250508031801374.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_4341_getNotificationsBoardByIdNotificationByField_20250508031801374 (Order: 4341)
  * def field = "T"
  * def idNotification = "nonportentousness"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4361_getActionsBoardByIdActionByField_20250508031807941.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_4361_getActionsBoardByIdActionByField_20250508031807941 (Order: 4361)
  * def field = "third-rateness"
  * def idAction = "889a:dc31:accf:35f3:e0f3:b76e:2b6f:ff06"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4377_getActionsBoardByIdActionByField_20250508031807949.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_4377_getActionsBoardByIdActionByField_20250508031807949 (Order: 4377)
  * def field = "P"
  * def idAction = "UH"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4387_getCardsBoardByIdCard_20250508031814507.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_4387_getCardsBoardByIdCard_20250508031814507 (Order: 4387)
  * def idCard = "gmcd@outlook.com"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4406_getMembersBoardsInvitedByIdMember_20250508031821161.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_4406_getMembersBoardsInvitedByIdMember_20250508031821161 (Order: 4406)
  * def idMember = "http:khhgr.ch"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4420_getMembersBoardsInvitedByIdMember_20250508031821166.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_4420_getMembersBoardsInvitedByIdMember_20250508031821166 (Order: 4420)
  * def idMember = "IO"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4452_getActionsCardByIdAction_20250508031834388.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_4452_getActionsCardByIdAction_20250508031834388 (Order: 4452)
  * def idAction = "bc1a091f"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4459_getActionsCardByIdAction_20250508031834391.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_4459_getActionsCardByIdAction_20250508031834391 (Order: 4459)
  * def idAction = "overexpectantness"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4490_getCardsListByIdCard_20250508031847570.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_4490_getCardsListByIdCard_20250508031847570 (Order: 4490)
  * def idCard = "nonvenally"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4509_getCardsListByIdCardByField_20250508031854151.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_4509_getCardsListByIdCardByField_20250508031854151 (Order: 4509)
  * def field = "morphophonemically"
  * def idCard = "an-"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4513_getCardsListByIdCardByField_20250508031854153.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_4513_getCardsListByIdCardByField_20250508031854153 (Order: 4513)
  * def field = "sis VL W"
  * def idCard = "Erbe"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4544_getCardsBoardByIdCardByField_20250508031907761.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_4544_getCardsBoardByIdCardByField_20250508031907761 (Order: 4544)
  * def field = "purple-black"
  * def idCard = "00086105725"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_455_getCardsListByIdCard_20250508025622967.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_455_getCardsListByIdCard_20250508025622967 (Order: 455)
  * def idCard = "PAT"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4567_getListsBoardByIdListByField_20250508031914456.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_4567_getListsBoardByIdListByField_20250508031914456 (Order: 4567)
  * def field = "reestablished"
  * def idList = "immi"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4589_getMembersCardsByIdMemberByFilter_20250508031921049.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_4589_getMembersCardsByIdMemberByFilter_20250508031921049 (Order: 4589)
  * def filter = ""
  * def idMember = "OG"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4611_getOrganizationsBoardsByIdOrgByFilter_20250508031927818.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_4611_getOrganizationsBoardsByIdOrgByFilter_20250508031927818 (Order: 4611)
  * def filter = "bike"
  * def idOrg = "ME"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_462_getCardsListByIdCardByField_20250508025629621.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_462_getCardsListByIdCardByField_20250508025629621 (Order: 462)
  * def field = "W+"
  * def idCard = "coxcombicality"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4647_getCardsAttachmentsByIdCard_20250508031940944.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_4647_getCardsAttachmentsByIdCard_20250508031940944 (Order: 4647)
  * def idCard = "fourth-dimensional"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4655_getCardsAttachmentsByIdCard_20250508031940948.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_4655_getCardsAttachmentsByIdCard_20250508031940948 (Order: 4655)
  * def idCard = "g30jB-2LU2diG2eSLqQDplJvCPdmduHWjRfUtPFiPWt2cQAh0emFNcZbhjXNlQZ2d4nKNm-JodWH59kzSDs="
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4681_getChecklistsByIdChecklist_20250508031954164.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_4681_getChecklistsByIdChecklist_20250508031954164 (Order: 4681)
  * def idChecklist = "spectrophotometric"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4704_getCardsChecklistsByIdCard_20250508032000704.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_4704_getCardsChecklistsByIdCard_20250508032000704 (Order: 4704)
  * def idCard = "20180615"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4712_getCardsChecklistsByIdCard_20250508032000707.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_4712_getCardsChecklistsByIdCard_20250508032000707 (Order: 4712)
  * def idCard = "I"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4741_getOrganizationsBoardsByIdOrg_20250508032013840.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_4741_getOrganizationsBoardsByIdOrg_20250508032013840 (Order: 4741)
  * def idOrg = "VAV"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4746_getOrganizationsBoardsByIdOrg_20250508032013842.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_4746_getOrganizationsBoardsByIdOrg_20250508032013842 (Order: 4746)
  * def idOrg = "m"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4765_getMembersCardsByIdMember_20250508032020456.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_4765_getMembersCardsByIdMember_20250508032020456 (Order: 4765)
  * def idMember = "024787753"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4782_getChecklistsCardsByIdChecklist_20250508032027042.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_4782_getChecklistsCardsByIdChecklist_20250508032027042 (Order: 4782)
  * def idChecklist = "enrobed"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4805_getBoardsCardsByIdBoard_20250508032033587.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_4805_getBoardsCardsByIdBoard_20250508032033587 (Order: 4805)
  * def idBoard = "cunit"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4825_getListsCardsByIdList_20250508032040153.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_4825_getListsCardsByIdList_20250508032040153 (Order: 4825)
  * def idList = "caseworks"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4842_getCardsActionsByIdCard_20250508032046792.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_4842_getCardsActionsByIdCard_20250508032046792 (Order: 4842)
  * def idCard = "780-916896"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4857_getCardsActionsByIdCard_20250508032046802.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_4857_getCardsActionsByIdCard_20250508032046802 (Order: 4857)
  * def idCard = "
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4889_getListsActionsByIdList_20250508032059808.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_4889_getListsActionsByIdList_20250508032059808 (Order: 4889)
  * def idList = "Mansart a nonoccult "
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4897_getListsActionsByIdList_20250508032059811.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_4897_getListsActionsByIdList_20250508032059811 (Order: 4897)
  * def idList = "43.203.99.206"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4917_getOrganizationsActionsByIdOrg_20250508032106385.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_4917_getOrganizationsActionsByIdOrg_20250508032106385 (Order: 4917)
  * def idOrg = "ME"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4933_getBoardsActionsByIdBoard_20250508032112978.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_4933_getBoardsActionsByIdBoard_20250508032112978 (Order: 4933)
  * def idBoard = "tangent-cut"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4959_getBoardsCardsByIdBoardByIdCard_20250508032119526.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_4959_getBoardsCardsByIdBoardByIdCard_20250508032119526 (Order: 4959)
  * def idBoard = "laryngovestibulitis Q"
  * def idCard = "0655179389"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4962_getCardsByIdCard_20250508032126510.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_4962_getCardsByIdCard_20250508032126510 (Order: 4962)
  * def idCard = "unlike"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4980_getCardsByIdCard_20250508032126521.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_4980_getCardsByIdCard_20250508032126521 (Order: 4980)
  * def idCard = "6851f14c-2eae-44fe-b765-a0c1b0af94e4"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5006_getBoardsByIdBoard_20250508032139675.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_5006_getBoardsByIdBoard_20250508032139675 (Order: 5006)
  * def idBoard = "nonmicroprogrammed"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5021_addNotificationsAllRead_20250508032146284.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_5021_addNotificationsAllRead_20250508032146284 (Order: 5021)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5047_addListsArchiveAllCardsByIdList_20250508032152826.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_5047_addListsArchiveAllCardsByIdList_20250508032152826 (Order: 5047)
  * def idList = "rFCLZHBcE1dZgyVmfaYFs$lINDjxjkr"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5052_addListsArchiveAllCardsByIdList_20250508032152827.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_5052_addListsArchiveAllCardsByIdList_20250508032152827 (Order: 5052)
  * def idList = "17356-0731"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5079_addCardsIdMembersByIdCard_20250508032159348.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_5079_addCardsIdMembersByIdCard_20250508032159348 (Order: 5079)
  * def idCard = "907-50-990"
  Given path 'cards/<idCard>/idMembers'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_508_getCardsBoardByIdCardByField_20250508025642856.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_508_getCardsBoardByIdCardByField_20250508025642856 (Order: 508)
  * def field = "coal-dark"
  * def idCard = "Humist"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5114_addCardsIdLabelsByIdCard_20250508032212402.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_5114_addCardsIdLabelsByIdCard_20250508032212402 (Order: 5114)
  * def idCard = "steered"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5130_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508032218950.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_5130_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508032218950 (Order: 5130)
  * def idCard = "A."
  * def idChecklist = "Moorefield"
  * def idCheckItem = "PCTS"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5141_addLabels_20250508032225503.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_5141_addLabels_20250508032225503 (Order: 5141)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5164_addCardsChecklistsByIdCard_20250508032232090.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_5164_addCardsChecklistsByIdCard_20250508032232090 (Order: 5164)
  * def idCard = "B n z"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_517_getCardsBoardByIdCardByField_20250508025642863.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_517_getCardsBoardByIdCardByField_20250508025642863 (Order: 517)
  * def field = "lituoline"
  * def idCard = "dispensatively"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5202_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508032245118.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_5202_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508032245118 (Order: 5202)
  * def idCard = "P"
  * def idChecklist = "chicken-breasted"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5218_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508032245126.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem
Scenario: test_TestId_5218_addCardsChecklistCheckItemByIdCardByIdChecklist_20250508032245126 (Order: 5218)
  * def idCard = ""
  * def idChecklist = "Aello"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5241_addChecklists_20250508032258289.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_5241_addChecklists_20250508032258289 (Order: 5241)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5258_addChecklists_20250508032258295.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_5258_addChecklists_20250508032258295 (Order: 5258)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_526_getListsBoardByIdListByField_20250508025649476.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_526_getListsBoardByIdListByField_20250508025649476 (Order: 526)
  * def field = "KR"
  * def idList = "PBT"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5299_addListsCardsByIdList_20250508032311950.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_5299_addListsCardsByIdList_20250508032311950 (Order: 5299)
  * def idList = "yampee"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5310_addOrganizations_20250508032318487.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_5310_addOrganizations_20250508032318487 (Order: 5310)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5330_addCards_20250508032327050.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_5330_addCards_20250508032327050 (Order: 5330)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5345_addBoards_20250508032338142.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_5345_addBoards_20250508032338142 (Order: 5345)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5370_updateCardsIdListByIdCard_20250508032346438.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_5370_updateCardsIdListByIdCard_20250508032346438 (Order: 5370)
  * def idCard = "Pironi"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5378_updateCardsIdListByIdCard_20250508032346441.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_5378_updateCardsIdListByIdCard_20250508032346441 (Order: 5378)
  * def idCard = "455-960327"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5398_updateCardsIdMembersByIdCard_20250508032354103.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_5398_updateCardsIdMembersByIdCard_20250508032354103 (Order: 5398)
  * def idCard = "tchu"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5415_updateCardsDescByIdCard_20250508032401569.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_5415_updateCardsDescByIdCard_20250508032401569 (Order: 5415)
  * def idCard = "7m1KVs0'A"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5436_updateCardsClosedByIdCard_20250508032409236.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_5436_updateCardsClosedByIdCard_20250508032409236 (Order: 5436)
  * def idCard = "bloodlike"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_544_getMembersCardsByIdMemberByFilter_20250508025656137.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_544_getMembersCardsByIdMemberByFilter_20250508025656137 (Order: 544)
  * def filter = "red-flowered wineberry"
  * def idMember = "fans"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5481_updateCardsIdAttachmentCoverByIdCard_20250508032428750.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_5481_updateCardsIdAttachmentCoverByIdCard_20250508032428750 (Order: 5481)
  * def idCard = "DSTN V "
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_54_getLabelsBoardByIdLabelByField_20250508025406553.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board/{field}
Scenario: test_TestId_54_getLabelsBoardByIdLabelByField_20250508025406553 (Order: 54)
  * def field = "23:38:15"
  * def idLabel = "20071210"
  Given path 'labels/<idLabel>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5501_updateLabelsColorByIdLabel_20250508032435453.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/color
Scenario: test_TestId_5501_updateLabelsColorByIdLabel_20250508032435453 (Order: 5501)
  * def idLabel = "L3"
  Given path 'labels/<idLabel>/color'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_552_getMembersCardsByIdMemberByFilter_20250508025656142.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_552_getMembersCardsByIdMemberByFilter_20250508025656142 (Order: 552)
  * def filter = "grown-up"
  * def idMember = "XL"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5544_updateActionsByIdAction_20250508032448572.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_5544_updateActionsByIdAction_20250508032448572 (Order: 5544)
  * def idAction = "agreat"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5570_updateCardsIdBoardByIdCard_20250508032455061.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_5570_updateCardsIdBoardByIdCard_20250508032455061 (Order: 5570)
  * def idCard = "supersympathetic"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5573_updateCardsIdBoardByIdCard_20250508032455062.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_5573_updateCardsIdBoardByIdCard_20250508032455062 (Order: 5573)
  * def idCard = "archsacrificer"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5594_updateCardsActionsCommentsByIdCardByIdAction_20250508032501586.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_5594_updateCardsActionsCommentsByIdCardByIdAction_20250508032501586 (Order: 5594)
  * def idCard = "semi-intellectually"
  * def idAction = "noncancellable"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5622_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508032514776.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_5622_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508032514776 (Order: 5622)
  * def idCard = "vested"
  * def idChecklist = "prowl"
  * def idCheckItem = "20091119"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5627_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508032514779.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_5627_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508032514779 (Order: 5627)
  * def idCard = "L "
  * def idChecklist = "Aello"
  * def idCheckItem = "3QFE6"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5662_updateCardsLabelsByIdCard_20250508032527800.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_5662_updateCardsLabelsByIdCard_20250508032527800 (Order: 5662)
  * def idCard = "flower-bearing"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5668_updateCardsLabelsByIdCard_20250508032527808.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_5668_updateCardsLabelsByIdCard_20250508032527808 (Order: 5668)
  * def idCard = "n"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5698_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508032534404.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_5698_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508032534404 (Order: 5698)
  * def idCard = "V"
  * def idChecklist = "nlzonex@outlook.com"
  * def idCheckItem = "T65cbrvUxAHgfMeDPiGMx0HdpJkQJPpzI8DiyG7w2ycVvhiEDeHMKz5mhCSd_PHNaPI0dFoQ"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5709_updateChecklistsByIdChecklist_20250508032541326.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_5709_updateChecklistsByIdChecklist_20250508032541326 (Order: 5709)
  * def idChecklist = "xw"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5733_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508032547841.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_5733_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508032547841 (Order: 5733)
  * def idCard = "G"
  * def idCheckItem = "sculpted"
  * def idChecklistCurrent = "GL58 9234 7475 9275 86"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5740_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508032547845.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_5740_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508032547845 (Order: 5740)
  * def idCard = "portionable"
  * def idCheckItem = "BYU"
  * def idChecklistCurrent = "(+5562) 61085671794"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5766_updateOrganizationsByIdOrg_20250508032600980.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_5766_updateOrganizationsByIdOrg_20250508032600980 (Order: 5766)
  * def idOrg = "069-45-411"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5775_updateOrganizationsByIdOrg_20250508032600987.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_5775_updateOrganizationsByIdOrg_20250508032600987 (Order: 5775)
  * def idOrg = "elms"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5806_updateBoardsByIdBoard_20250508032614113.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_5806_updateBoardsByIdBoard_20250508032614113 (Order: 5806)
  * def idBoard = "20150805"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_581_getCardsAttachmentsByIdCardByIdAttachment_20250508025709307.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_581_getCardsAttachmentsByIdCardByIdAttachment_20250508025709307 (Order: 581)
  * def idAttachment = "31.243.242.202"
  * def idCard = "stricken"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_582_getCardsAttachmentsByIdCardByIdAttachment_20250508025709308.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_582_getCardsAttachmentsByIdCardByIdAttachment_20250508025709308 (Order: 582)
  * def idAttachment = "acridity"
  * def idCard = "preindependence"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5850_deleteCardsByIdCard_20250508032628172.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_5850_deleteCardsByIdCard_20250508032628172 (Order: 5850)
  * def idCard = "impetrated"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5875_deleteLabelsByIdLabel_20250508032634704.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_5875_deleteLabelsByIdLabel_20250508032634704 (Order: 5875)
  * def idLabel = "ill-observant"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5893_deleteOrganizationsByIdOrg_20250508032641261.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_5893_deleteOrganizationsByIdOrg_20250508032641261 (Order: 5893)
  * def idOrg = "pohutukawa"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5904_deleteChecklistsByIdChecklist_20250508032647758.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_5904_deleteChecklistsByIdChecklist_20250508032647758 (Order: 5904)
  * def idChecklist = "cunit"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5925_deleteCardsChecklistsByIdCardByIdChecklist_20250508032654496.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_5925_deleteCardsChecklistsByIdCardByIdChecklist_20250508032654496 (Order: 5925)
  * def idCard = "SC71 XZHM 6487 0875 1356 0326 4585 TDF"
  * def idChecklist = ""
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5945_deleteCardsActionsCommentsByIdCardByIdAction_20250508032701048.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_5945_deleteCardsActionsCommentsByIdCardByIdAction_20250508032701048 (Order: 5945)
  * def idCard = "Bakunin"
  * def idAction = "6124513090"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5969_deleteCardsAttachmentsByIdCardByIdAttachment_20250508032707530.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_5969_deleteCardsAttachmentsByIdCardByIdAttachment_20250508032707530 (Order: 5969)
  * def idAttachment = "Teague"
  * def idCard = "ye"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5980_deleteCardsAttachmentsByIdCardByIdAttachment_20250508032707538.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_5980_deleteCardsAttachmentsByIdCardByIdAttachment_20250508032707538 (Order: 5980)
  * def idAttachment = "t@gmail.com"
  * def idCard = "JO69 UTPT 8115 7JFY Q1K3 69DF JPXC WV"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5990_deleteCardsLabelsByIdCardByColor_20250508032714614.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_5990_deleteCardsLabelsByIdCardByColor_20250508032714614 (Order: 5990)
  * def color = "abdicate"
  * def idCard = "bks"
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6004_deleteCardsIdMembersByIdCardByIdMember_20250508032721091.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_6004_deleteCardsIdMembersByIdCardByIdMember_20250508032721091 (Order: 6004)
  * def idCard = "63ad"
  * def idMember = "detubation"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6033_deleteCardsIdLabelsByIdCardByIdLabel_20250508032728780.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_6033_deleteCardsIdLabelsByIdCardByIdLabel_20250508032728780 (Order: 6033)
  * def idCard = "phonocardiograph"
  * def idLabel = "20e9fde4fece"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6040_deleteCardsIdLabelsByIdCardByIdLabel_20250508032728784.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_6040_deleteCardsIdLabelsByIdCardByIdLabel_20250508032728784 (Order: 6040)
  * def idCard = "TEC"
  * def idLabel = "XO"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6065_getBatch_20250508032742922.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_6065_getBatch_20250508032742922 (Order: 6065)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_608_getCardsAttachmentsByIdCard_20250508025716338.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_608_getCardsAttachmentsByIdCard_20250508025716338 (Order: 608)
  * def idCard = "Z"
  Given path 'cards/<idCard>/attachments'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6098_getNotificationsCardByIdNotification_20250508032750061.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_6098_getNotificationsCardByIdNotification_20250508032750061 (Order: 6098)
  * def idNotification = "Ulda"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6123_getChecklistsBoardByIdChecklist_20250508032806183.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_6123_getChecklistsBoardByIdChecklist_20250508032806183 (Order: 6123)
  * def idChecklist = "irredeemability"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6144_getListsBoardByIdList_20250508032813286.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_6144_getListsBoardByIdList_20250508032813286 (Order: 6144)
  * def idList = "36733-6909"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6162_getMembersBoardsByIdMemberByFilter_20250508032821035.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_6162_getMembersBoardsByIdMemberByFilter_20250508032821035 (Order: 6162)
  * def filter = "WELL"
  * def idMember = "DISA"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6171_getMembersBoardsByIdMemberByFilter_20250508032821039.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_6171_getMembersBoardsByIdMemberByFilter_20250508032821039 (Order: 6171)
  * def filter = "bd6efa53-c586-43ea-94de-38f9b9c27158"
  * def idMember = "mug-wet"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6199_getChecklistsCardsByIdChecklistByFilter_20250508032828031.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards/{filter}
Scenario: test_TestId_6199_getChecklistsCardsByIdChecklistByFilter_20250508032828031 (Order: 6199)
  * def filter = "7725276386"
  * def idChecklist = "cosmeticize"
  Given path 'checklists/<idChecklist>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6212_getBoardsCardsByIdBoardByFilter_20250508032834599.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_6212_getBoardsCardsByIdBoardByFilter_20250508032834599 (Order: 6212)
  * def filter = "20160103"
  * def idBoard = "palaeographical"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6236_getNotificationsBoardByIdNotification_20250508032841508.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_6236_getNotificationsBoardByIdNotification_20250508032841508 (Order: 6236)
  * def idNotification = "cabasa"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6254_getLabelsByIdLabel_20250508032848054.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_6254_getLabelsByIdLabel_20250508032848054 (Order: 6254)
  * def idLabel = "sg@live.com"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6259_getLabelsByIdLabel_20250508032848056.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_6259_getLabelsByIdLabel_20250508032848056 (Order: 6259)
  * def idLabel = "scrophulariaceous"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6283_getActionsCardByIdActionByField_20250508032901216.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_6283_getActionsCardByIdActionByField_20250508032901216 (Order: 6283)
  * def field = "superartificiality"
  * def idAction = "C"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6295_getActionsCardByIdActionByField_20250508032901222.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_6295_getActionsCardByIdActionByField_20250508032901222 (Order: 6295)
  * def field = "publicity"
  * def idAction = "turf-cutting"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6316_getListsCardsByIdListByFilter_20250508032907776.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_6316_getListsCardsByIdListByFilter_20250508032907776 (Order: 6316)
  * def filter = "Anza"
  * def idList = "Kaleena"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_633_getListsByIdList_20250508025722892.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_633_getListsByIdList_20250508025722892 (Order: 633)
  * def idList = "VM"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6359_getCardsCheckItemStatesByIdCard_20250508032920863.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_6359_getCardsCheckItemStatesByIdCard_20250508032920863 (Order: 6359)
  * def idCard = "nonsymphoniously"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6369_getNotificationsBoardByIdNotificationByField_20250508032927394.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_6369_getNotificationsBoardByIdNotificationByField_20250508032927394 (Order: 6369)
  * def field = "CO"
  * def idNotification = "exzhrHbDOg1DgB679-5Ta-G-NUmMdeogJ0B-nkyvYw8iiM7LAZeC3XlzEWrUW47VHLxj1MbpcDqDJ8qgl4SN9w0VBRgEXS8VSZoR5Y1OdQ=="
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_638_getListsByIdList_20250508025722895.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_638_getListsByIdList_20250508025722895 (Order: 638)
  * def idList = "gem-grinding"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6417_getCardsBoardByIdCard_20250508032940549.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_6417_getCardsBoardByIdCard_20250508032940549 (Order: 6417)
  * def idCard = "LA"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6434_getMembersBoardsInvitedByIdMember_20250508032947078.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_6434_getMembersBoardsInvitedByIdMember_20250508032947078 (Order: 6434)
  * def idMember = "urography rewires X deerlike RP"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6442_getMembersBoardsInvitedByIdMemberByField_20250508032953644.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited/{field}
Scenario: test_TestId_6442_getMembersBoardsInvitedByIdMemberByField_20250508032953644 (Order: 6442)
  * def field = "microcoria"
  * def idMember = "unsupreme"
  Given path 'members/<idMember>/boardsInvited/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6471_getActionsCardByIdAction_20250508033000213.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_6471_getActionsCardByIdAction_20250508033000213 (Order: 6471)
  * def idAction = "20081215"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6477_getActionsCardByIdAction_20250508033000214.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_6477_getActionsCardByIdAction_20250508033000214 (Order: 6477)
  * def idAction = "otic"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6503_getCardsListByIdCard_20250508033013449.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_6503_getCardsListByIdCard_20250508033013449 (Order: 6503)
  * def idCard = "y IQR "
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6526_getCardsListByIdCardByField_20250508033020059.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_6526_getCardsListByIdCardByField_20250508033020059 (Order: 6526)
  * def field = "Ku"
  * def idCard = "W D"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6537_getCardsListByIdCardByField_20250508033020064.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_6537_getCardsListByIdCardByField_20250508033020064 (Order: 6537)
  * def field = "XIE"
  * def idCard = "h's Blood A"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6555_getNotificationsCardByIdNotificationByField_20250508033027044.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_6555_getNotificationsCardByIdNotificationByField_20250508033027044 (Order: 6555)
  * def field = "devaluation"
  * def idNotification = "microphoning"
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6565_getCardsBoardByIdCardByField_20250508033033675.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_6565_getCardsBoardByIdCardByField_20250508033033675 (Order: 6565)
  * def field = "ea10832c-1a43-49e9-9517-1eb7d678b963"
  * def idCard = "desquamating"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6596_getListsBoardByIdListByField_20250508033040208.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_6596_getListsBoardByIdListByField_20250508033040208 (Order: 6596)
  * def field = "countersinking"
  * def idList = "Badb P"
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_660_getChecklistsByIdChecklist_20250508025729518.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_660_getChecklistsByIdChecklist_20250508025729518 (Order: 660)
  * def idChecklist = "y5WMCdSSbqHxqq8s"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6622_getOrganizationsBoardsByIdOrgByFilter_20250508033053369.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards/{filter}
Scenario: test_TestId_6622_getOrganizationsBoardsByIdOrgByFilter_20250508033053369 (Order: 6622)
  * def filter = "crinose"
  * def idOrg = "hinter"
  Given path 'organizations/<idOrg>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6641_getCardsAttachmentsByIdCardByIdAttachment_20250508033059917.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_6641_getCardsAttachmentsByIdCardByIdAttachment_20250508033059917 (Order: 6641)
  * def idAttachment = "SCSI UN i elms I"
  * def idCard = "W"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6657_getCardsAttachmentsByIdCardByIdAttachment_20250508033059925.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_6657_getCardsAttachmentsByIdCardByIdAttachment_20250508033059925 (Order: 6657)
  * def idAttachment = "breastfeeding"
  * def idCard = "UH"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6684_getListsByIdList_20250508033112978.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_6684_getListsByIdList_20250508033112978 (Order: 6684)
  * def idList = "nitrosulphate"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_668_getCardsChecklistsByIdCard_20250508025736100.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_668_getCardsChecklistsByIdCard_20250508025736100 (Order: 668)
  * def idCard = "leeboard"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6714_getChecklistsByIdChecklist_20250508033119664.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_6714_getChecklistsByIdChecklist_20250508033119664 (Order: 6714)
  * def idChecklist = "http:ljquf.me+9635 17759485313"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6742_getActionsByIdAction_20250508033133227.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_6742_getActionsByIdAction_20250508033133227 (Order: 6742)
  * def idAction = "ample"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6756_getActionsByIdAction_20250508033133233.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_6756_getActionsByIdAction_20250508033133233 (Order: 6756)
  * def idAction = "slogan"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6772_getOrganizationsBoardsByIdOrg_20250508033139760.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_6772_getOrganizationsBoardsByIdOrg_20250508033139760 (Order: 6772)
  * def idOrg = "crystallogenic"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_678_getCardsChecklistsByIdCard_20250508025736105.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_678_getCardsChecklistsByIdCard_20250508025736105 (Order: 678)
  * def idCard = "^qnnI"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6799_getMembersCardsByIdMember_20250508033146745.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_6799_getMembersCardsByIdMember_20250508033146745 (Order: 6799)
  * def idMember = "contabescence"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_681_getActionsByIdAction_20250508025742681.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_681_getActionsByIdAction_20250508025742681 (Order: 681)
  * def idAction = "chlorophyllaceous"
  Given path 'actions/<idAction>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6836_getBoardsCardsByIdBoard_20250508033159753.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_6836_getBoardsCardsByIdBoard_20250508033159753 (Order: 6836)
  * def idBoard = "6DReke:"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6869_getCardsActionsByIdCard_20250508033213480.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_6869_getCardsActionsByIdCard_20250508033213480 (Order: 6869)
  * def idCard = "4530654985"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6873_getCardsActionsByIdCard_20250508033213482.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_6873_getCardsActionsByIdCard_20250508033213482 (Order: 6873)
  * def idCard = "Zygosaccharomyces "
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6892_getNotificationsByIdNotification_20250508033220710.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_6892_getNotificationsByIdNotification_20250508033220710 (Order: 6892)
  * def idNotification = "fraidycat"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6916_getListsActionsByIdList_20250508033227853.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_6916_getListsActionsByIdList_20250508033227853 (Order: 6916)
  * def idList = "Suez"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6939_getOrganizationsActionsByIdOrg_20250508033234831.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_6939_getOrganizationsActionsByIdOrg_20250508033234831 (Order: 6939)
  * def idOrg = "CY86 8160 1949 CVRO QJR1 8X4L SC42"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6945_getBoardsActionsByIdBoard_20250508033241997.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_6945_getBoardsActionsByIdBoard_20250508033241997 (Order: 6945)
  * def idBoard = "superstructral"
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6969_getBoardsCardsByIdBoardByIdCard_20250508033249134.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_6969_getBoardsCardsByIdBoardByIdCard_20250508033249134 (Order: 6969)
  * def idBoard = "slogan"
  * def idCard = "LU72 1584 0AVL 0MAZ Y267"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6986_getCardsByIdCard_20250508033255669.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_6986_getCardsByIdCard_20250508033255669 (Order: 6986)
  * def idCard = "NAMM"
  Given path 'cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7011_getOrganizationsByIdOrg_20250508033302194.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_7011_getOrganizationsByIdOrg_20250508033302194 (Order: 7011)
  * def idOrg = "PL63 0041 2716 6787 8553 3864 8054"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7027_getBoardsByIdBoard_20250508033308829.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_7027_getBoardsByIdBoard_20250508033308829 (Order: 7027)
  * def idBoard = "referrer"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7032_getBoardsByIdBoard_20250508033308833.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_7032_getBoardsByIdBoard_20250508033308833 (Order: 7032)
  * def idBoard = "X"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7059_addNotificationsAllRead_20250508033315395.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_7059_addNotificationsAllRead_20250508033315395 (Order: 7059)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7078_addListsArchiveAllCardsByIdList_20250508033323090.java
# 原始 URL: https://trello.com/1/lists/{idList}/archiveAllCards
Scenario: test_TestId_7078_addListsArchiveAllCardsByIdList_20250508033323090 (Order: 7078)
  * def idList = "05:35:20"
  Given path 'lists/<idList>/archiveAllCards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7087_addCardsIdMembersByIdCard_20250508033329636.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_7087_addCardsIdMembersByIdCard_20250508033329636 (Order: 7087)
  * def idCard = ""
  Given path 'cards/<idCard>/idMembers'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7104_addCardsActionsCommentsByIdCard_20250508033336770.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_7104_addCardsActionsCommentsByIdCard_20250508033336770 (Order: 7104)
  * def idCard = "phthalyl"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7135_addCardsIdLabelsByIdCard_20250508033344282.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels
Scenario: test_TestId_7135_addCardsIdLabelsByIdCard_20250508033344282 (Order: 7135)
  * def idCard = "areic"
  Given path 'cards/<idCard>/idLabels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7141_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508033351408.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_7141_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508033351408 (Order: 7141)
  * def idCard = "verged"
  * def idChecklist = "http:mxqfgjnp.xllvldd.govcrustaceal"
  * def idCheckItem = "a081:4610:f68b:c85b:2f4d:2fed:052f:5512"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7172_addLabels_20250508033357816.java
# 原始 URL: https://trello.com/1/labels
Scenario: test_TestId_7172_addLabels_20250508033357816 (Order: 7172)
  Given path 'labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7183_addCardsChecklistsByIdCard_20250508033404977.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_7183_addCardsChecklistsByIdCard_20250508033404977 (Order: 7183)
  * def idCard = "all-obedient"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7207_addCardsLabelsByIdCard_20250508033411895.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_7207_addCardsLabelsByIdCard_20250508033411895 (Order: 7207)
  * def idCard = "McSherrystown"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7213_addCardsLabelsByIdCard_20250508033411898.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_7213_addCardsLabelsByIdCard_20250508033411898 (Order: 7213)
  * def idCard = "all-relieving"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7242_addCardsAttachmentsByIdCard_20250508033425230.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_7242_addCardsAttachmentsByIdCard_20250508033425230 (Order: 7242)
  * def idCard = "54b83683-f64f-48dd-a06d-006d0605c1dd"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7252_addCardsAttachmentsByIdCard_20250508033425235.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_7252_addCardsAttachmentsByIdCard_20250508033425235 (Order: 7252)
  * def idCard = "B"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7276_addChecklists_20250508033431758.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_7276_addChecklists_20250508033431758 (Order: 7276)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7283_addLists_20250508033438326.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_7283_addLists_20250508033438326 (Order: 7283)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7312_addListsCardsByIdList_20250508033444847.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_7312_addListsCardsByIdList_20250508033444847 (Order: 7312)
  * def idList = "overtechnically"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7328_addOrganizations_20250508033451393.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_7328_addOrganizations_20250508033451393 (Order: 7328)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7349_addCards_20250508033457940.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_7349_addCards_20250508033457940 (Order: 7349)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7362_addBoards_20250508033504523.java
# 原始 URL: https://trello.com/1/boards
Scenario: test_TestId_7362_addBoards_20250508033504523 (Order: 7362)
  Given path 'boards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_737_getMembersCardsByIdMember_20250508025755897.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_737_getMembersCardsByIdMember_20250508025755897 (Order: 737)
  * def idMember = "E"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7400_updateCardsIdListByIdCard_20250508033511090.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_7400_updateCardsIdListByIdCard_20250508033511090 (Order: 7400)
  * def idCard = "displat"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7414_updateCardsIdMembersByIdCard_20250508033517597.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_7414_updateCardsIdMembersByIdCard_20250508033517597 (Order: 7414)
  * def idCard = "Pel"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7435_updateCardsDescByIdCard_20250508033524072.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_7435_updateCardsDescByIdCard_20250508033524072 (Order: 7435)
  * def idCard = "bauckiebird"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7449_updateCardsClosedByIdCard_20250508033530545.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_7449_updateCardsClosedByIdCard_20250508033530545 (Order: 7449)
  * def idCard = "07:58:19"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7471_updateCardsDueByIdCard_20250508033537041.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_7471_updateCardsDueByIdCard_20250508033537041 (Order: 7471)
  * def idCard = "oysterer '"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7482_updateNotificationsByIdNotification_20250508033543483.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_7482_updateNotificationsByIdNotification_20250508033543483 (Order: 7482)
  * def idNotification = "7892013645"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7511_updateCardsIdAttachmentCoverByIdCard_20250508033549979.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_7511_updateCardsIdAttachmentCoverByIdCard_20250508033549979 (Order: 7511)
  * def idCard = "dorso-ulnar"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_751_getChecklistsCardsByIdChecklist_20250508025802522.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/cards
Scenario: test_TestId_751_getChecklistsCardsByIdChecklist_20250508025802522 (Order: 751)
  * def idChecklist = "3gl"
  Given path 'checklists/<idChecklist>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7542_updateLabelsNameByIdLabel_20250508033603447.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_7542_updateLabelsNameByIdLabel_20250508033603447 (Order: 7542)
  * def idLabel = "04:45:48"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7570_updateActionsByIdAction_20250508033609987.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_7570_updateActionsByIdAction_20250508033609987 (Order: 7570)
  * def idAction = "complicator's"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7587_updateCardsIdBoardByIdCard_20250508033616731.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_7587_updateCardsIdBoardByIdCard_20250508033616731 (Order: 7587)
  * def idCard = "imbibers"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7595_updateCardsIdBoardByIdCard_20250508033616734.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_7595_updateCardsIdBoardByIdCard_20250508033616734 (Order: 7595)
  * def idCard = "http:zp.io816da55513"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7613_updateCardsActionsCommentsByIdCardByIdAction_20250508033623226.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_7613_updateCardsActionsCommentsByIdCardByIdAction_20250508033623226 (Order: 7613)
  * def idCard = "straight-barreled"
  * def idAction = "6628227011"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_763_getBoardsCardsByIdBoard_20250508025809119.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_763_getBoardsCardsByIdBoard_20250508025809119 (Order: 763)
  * def idBoard = "B"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7655_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508033636264.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_7655_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508033636264 (Order: 7655)
  * def idCard = "06:12:01"
  * def idChecklist = ""
  * def idCheckItem = "fb7ab65c-a24f-4d62-a4f8-06cbef787c72"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7676_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508033642797.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_7676_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508033642797 (Order: 7676)
  * def idCard = "koruna"
  * def idChecklist = "jungle-walking"
  * def idCheckItem = "FIB"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7683_updateCardsLabelsByIdCard_20250508033649242.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_7683_updateCardsLabelsByIdCard_20250508033649242 (Order: 7683)
  * def idCard = "ptochology"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7701_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508033655840.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_7701_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508033655840 (Order: 7701)
  * def idCard = "GSC"
  * def idChecklist = "urotoxies"
  * def idCheckItem = "BUT"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7724_updateChecklistsByIdChecklist_20250508033702349.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_7724_updateChecklistsByIdChecklist_20250508033702349 (Order: 7724)
  * def idChecklist = "GB48 KUPJ 6618 5712 3626 29"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7742_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508033708858.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_7742_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508033708858 (Order: 7742)
  * def idCard = "ary cecopex"
  * def idCheckItem = "nondetachability"
  * def idChecklistCurrent = "D G XI"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7755_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508033708866.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_7755_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508033708866 (Order: 7755)
  * def idCard = "R8lf4bDhse1ksoWhAzeQf9zZ_zR-RWPThtwyVg=="
  * def idCheckItem = "Z"
  * def idChecklistCurrent = "a6b1dc75-6f66-4bb7-a873-5dbf6e6253a7"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7782_updateOrganizationsByIdOrg_20250508033721966.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_7782_updateOrganizationsByIdOrg_20250508033721966 (Order: 7782)
  * def idOrg = "cliffless"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7800_updateOrganizationsByIdOrg_20250508033721977.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_7800_updateOrganizationsByIdOrg_20250508033721977 (Order: 7800)
  * def idOrg = "slogan Okemos Aell"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7822_updateBoardsByIdBoard_20250508033735271.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_7822_updateBoardsByIdBoard_20250508033735271 (Order: 7822)
  * def idBoard = "hyphenate"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_783_getListsCardsByIdList_20250508025815685.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_783_getListsCardsByIdList_20250508025815685 (Order: 783)
  * def idList = "stultiloquently"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7852_deleteActionsByIdAction_20250508033741804.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_7852_deleteActionsByIdAction_20250508033741804 (Order: 7852)
  * def idAction = "U"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7872_deleteCardsByIdCard_20250508033748256.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_7872_deleteCardsByIdCard_20250508033748256 (Order: 7872)
  * def idCard = "C"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7889_deleteLabelsByIdLabel_20250508033754695.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_7889_deleteLabelsByIdLabel_20250508033754695 (Order: 7889)
  * def idLabel = "ty"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7896_deleteLabelsByIdLabel_20250508033754698.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_7896_deleteLabelsByIdLabel_20250508033754698 (Order: 7896)
  * def idLabel = "8665496841"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7927_deleteChecklistsByIdChecklist_20250508033810678.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_7927_deleteChecklistsByIdChecklist_20250508033810678 (Order: 7927)
  * def idChecklist = "overwhipping"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7938_deleteChecklistsByIdChecklist_20250508033810682.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_7938_deleteChecklistsByIdChecklist_20250508033810682 (Order: 7938)
  * def idChecklist = "0007 7345398"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7952_deleteCardsChecklistsByIdCardByIdChecklist_20250508033817750.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_7952_deleteCardsChecklistsByIdCardByIdChecklist_20250508033817750 (Order: 7952)
  * def idCard = "Resa"
  * def idChecklist = "RPN F"
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7978_deleteCardsActionsCommentsByIdCardByIdAction_20250508033824223.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_7978_deleteCardsActionsCommentsByIdCardByIdAction_20250508033824223 (Order: 7978)
  * def idCard = "6af02edd-13b4-4803-838c-d68788505d63"
  * def idAction = "faucial"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8000_deleteCardsAttachmentsByIdCardByIdAttachment_20250508033830704.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_8000_deleteCardsAttachmentsByIdCardByIdAttachment_20250508033830704 (Order: 8000)
  * def idAttachment = "half-fascinatingly"
  * def idCard = "1786170587"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8011_deleteCardsLabelsByIdCardByColor_20250508033837194.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels/{color}
Scenario: test_TestId_8011_deleteCardsLabelsByIdCardByColor_20250508033837194 (Order: 8011)
  * def color = "MSB"
  * def idCard = "PCTS "
  Given path 'cards/<idCard>/labels/<color>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8031_deleteCardsIdMembersByIdCardByIdMember_20250508033843664.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers/{idMember}
Scenario: test_TestId_8031_deleteCardsIdMembersByIdCardByIdMember_20250508033843664 (Order: 8031)
  * def idCard = "R"
  * def idMember = "jacks-of-all-trades"
  Given path 'cards/<idCard>/idMembers/<idMember>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8050_deleteCardsIdLabelsByIdCardByIdLabel_20250508033850138.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_8050_deleteCardsIdLabelsByIdCardByIdLabel_20250508033850138 (Order: 8050)
  * def idCard = "rerail"
  * def idLabel = "7th"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8060_deleteCardsIdLabelsByIdCardByIdLabel_20250508033850143.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idLabels/{idLabel}
Scenario: test_TestId_8060_deleteCardsIdLabelsByIdCardByIdLabel_20250508033850143 (Order: 8060)
  * def idCard = "vorhand "
  * def idLabel = "db955569-d32a-4ce1-8f2b-ee8ceaddf888"
  Given path 'cards/<idCard>/idLabels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8091_getBatch_20250508033903674.java
# 原始 URL: https://trello.com/1/batch
Scenario: test_TestId_8091_getBatch_20250508033903674 (Order: 8091)
  Given path 'batch'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8101_getNotificationsCardByIdNotification_20250508033910220.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_8101_getNotificationsCardByIdNotification_20250508033910220 (Order: 8101)
  * def idNotification = "RJ"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8114_getNotificationsCardByIdNotification_20250508033910225.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card
Scenario: test_TestId_8114_getNotificationsCardByIdNotification_20250508033910225 (Order: 8114)
  * def idNotification = "uQm5pGNh1"
  Given path 'notifications/<idNotification>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8142_getChecklistsBoardByIdChecklist_20250508033923761.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_8142_getChecklistsBoardByIdChecklist_20250508033923761 (Order: 8142)
  * def idChecklist = "faint"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8159_getChecklistsBoardByIdChecklist_20250508033923773.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board
Scenario: test_TestId_8159_getChecklistsBoardByIdChecklist_20250508033923773 (Order: 8159)
  * def idChecklist = "self-advantageous"
  Given path 'checklists/<idChecklist>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_817_getCardsActionsByIdCard_20250508025822286.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_817_getCardsActionsByIdCard_20250508025822286 (Order: 817)
  * def idCard = "mqxhfmibl@live.com"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8195_getMembersBoardsByIdMemberByFilter_20250508033936839.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_8195_getMembersBoardsByIdMemberByFilter_20250508033936839 (Order: 8195)
  * def filter = "500-82-883"
  * def idMember = "PHA"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8200_getMembersBoardsByIdMemberByFilter_20250508033936840.java
# 原始 URL: https://trello.com/1/members/{idMember}/boards/{filter}
Scenario: test_TestId_8200_getMembersBoardsByIdMemberByFilter_20250508033936840 (Order: 8200)
  * def filter = "Circum-neptunian"
  * def idMember = "J"
  Given path 'members/<idMember>/boards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8235_getBoardsCardsByIdBoardByFilter_20250508033949943.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{filter}
Scenario: test_TestId_8235_getBoardsCardsByIdBoardByFilter_20250508033949943 (Order: 8235)
  * def filter = "astrochronological"
  * def idBoard = "Ewell"
  Given path 'boards/<idBoard>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8243_getNotificationsBoardByIdNotification_20250508033957275.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board
Scenario: test_TestId_8243_getNotificationsBoardByIdNotification_20250508033957275 (Order: 8243)
  * def idNotification = "interlocutors"
  Given path 'notifications/<idNotification>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8271_getLabelsByIdLabel_20250508034003840.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_8271_getLabelsByIdLabel_20250508034003840 (Order: 8271)
  * def idLabel = "involves"
  Given path 'labels/<idLabel>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8281_getLabelsBoardByIdLabel_20250508034010398.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_8281_getLabelsBoardByIdLabel_20250508034010398 (Order: 8281)
  * def idLabel = "b8b5:9504:2998:7e05:d5f0:7a6c:f097:e58c"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8298_getLabelsBoardByIdLabel_20250508034010404.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/board
Scenario: test_TestId_8298_getLabelsBoardByIdLabel_20250508034010404 (Order: 8298)
  * def idLabel = "awash"
  Given path 'labels/<idLabel>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8309_getActionsCardByIdActionByField_20250508034016965.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card/{field}
Scenario: test_TestId_8309_getActionsCardByIdActionByField_20250508034016965 (Order: 8309)
  * def field = "228.242.127.237"
  * def idAction = "merger"
  Given path 'actions/<idAction>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8335_getListsCardsByIdListByFilter_20250508034024090.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards/{filter}
Scenario: test_TestId_8335_getListsCardsByIdListByFilter_20250508034024090 (Order: 8335)
  * def filter = "DISA"
  * def idList = "719a86c4a"
  Given path 'lists/<idList>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8355_getActionsBoardByIdAction_20250508034030615.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board
Scenario: test_TestId_8355_getActionsBoardByIdAction_20250508034030615 (Order: 8355)
  * def idAction = "tchu"
  Given path 'actions/<idAction>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8366_getCardsCheckItemStatesByIdCard_20250508034037160.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checkItemStates
Scenario: test_TestId_8366_getCardsCheckItemStatesByIdCard_20250508034037160 (Order: 8366)
  * def idCard = "11:59:37"
  Given path 'cards/<idCard>/checkItemStates'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8396_getNotificationsBoardByIdNotificationByField_20250508034044691.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/board/{field}
Scenario: test_TestId_8396_getNotificationsBoardByIdNotificationByField_20250508034044691 (Order: 8396)
  * def field = "PB"
  * def idNotification = "miswend"
  Given path 'notifications/<idNotification>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8401_getActionsBoardByIdActionByField_20250508034051190.java
# 原始 URL: https://trello.com/1/actions/{idAction}/board/{field}
Scenario: test_TestId_8401_getActionsBoardByIdActionByField_20250508034051190 (Order: 8401)
  * def field = "sanitized"
  * def idAction = "SE80 2883 1403 5557 5124 9801"
  Given path 'actions/<idAction>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8432_getCardsBoardByIdCard_20250508034057777.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board
Scenario: test_TestId_8432_getCardsBoardByIdCard_20250508034057777 (Order: 8432)
  * def idCard = "catchpoled"
  Given path 'cards/<idCard>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8445_getMembersBoardsInvitedByIdMember_20250508034104265.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_8445_getMembersBoardsInvitedByIdMember_20250508034104265 (Order: 8445)
  * def idMember = "MT46 DINI 4357 0JTG BOPP 6JQJ 2RW7 RR4"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8458_getMembersBoardsInvitedByIdMember_20250508034104271.java
# 原始 URL: https://trello.com/1/members/{idMember}/boardsInvited
Scenario: test_TestId_8458_getMembersBoardsInvitedByIdMember_20250508034104271 (Order: 8458)
  * def idMember = "aH"
  Given path 'members/<idMember>/boardsInvited'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8488_getActionsCardByIdAction_20250508034117326.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_8488_getActionsCardByIdAction_20250508034117326 (Order: 8488)
  * def idAction = "reafforestation"
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8495_getActionsCardByIdAction_20250508034117329.java
# 原始 URL: https://trello.com/1/actions/{idAction}/card
Scenario: test_TestId_8495_getActionsCardByIdAction_20250508034117329 (Order: 8495)
  * def idAction = ""
  Given path 'actions/<idAction>/card'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8516_getChecklistsBoardByIdChecklistByField_20250508034123811.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}/board/{field}
Scenario: test_TestId_8516_getChecklistsBoardByIdChecklistByField_20250508034123811 (Order: 8516)
  * def field = "1LAOQbamPb"
  * def idChecklist = "immi"
  Given path 'checklists/<idChecklist>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8533_getCardsListByIdCard_20250508034130335.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list
Scenario: test_TestId_8533_getCardsListByIdCard_20250508034130335 (Order: 8533)
  * def idCard = "NUS"
  Given path 'cards/<idCard>/list'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8558_getCardsListByIdCardByField_20250508034137145.java
# 原始 URL: https://trello.com/1/cards/{idCard}/list/{field}
Scenario: test_TestId_8558_getCardsListByIdCardByField_20250508034137145 (Order: 8558)
  * def field = "df552077-7c6f-4ba8-a96a-d11031d39be0"
  * def idCard = "zoaria"
  Given path 'cards/<idCard>/list/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8579_getNotificationsCardByIdNotificationByField_20250508034143796.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}/card/{field}
Scenario: test_TestId_8579_getNotificationsCardByIdNotificationByField_20250508034143796 (Order: 8579)
  * def field = "14:15:26"
  * def idNotification = "calciphyre "
  Given path 'notifications/<idNotification>/card/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8582_getCardsBoardByIdCardByField_20250508034150488.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_8582_getCardsBoardByIdCardByField_20250508034150488 (Order: 8582)
  * def field = "parliamentarization Q "
  * def idCard = "dowager"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8599_getCardsBoardByIdCardByField_20250508034150497.java
# 原始 URL: https://trello.com/1/cards/{idCard}/board/{field}
Scenario: test_TestId_8599_getCardsBoardByIdCardByField_20250508034150497 (Order: 8599)
  * def field = "i"
  * def idCard = "X"
  Given path 'cards/<idCard>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8615_getListsBoardByIdListByField_20250508034157050.java
# 原始 URL: https://trello.com/1/lists/{idList}/board/{field}
Scenario: test_TestId_8615_getListsBoardByIdListByField_20250508034157050 (Order: 8615)
  * def field = "ef0d:be3c:c37c:6494:3d4c:421a:6e4c:6780"
  * def idList = "H Q "
  Given path 'lists/<idList>/board/<field>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8634_getMembersCardsByIdMemberByFilter_20250508034203633.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards/{filter}
Scenario: test_TestId_8634_getMembersCardsByIdMemberByFilter_20250508034203633 (Order: 8634)
  * def filter = "16:40:11"
  * def idMember = "20170907"
  Given path 'members/<idMember>/cards/<filter>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8662_getCardsAttachmentsByIdCardByIdAttachment_20250508034216718.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_8662_getCardsAttachmentsByIdCardByIdAttachment_20250508034216718 (Order: 8662)
  * def idAttachment = "0001 3045427"
  * def idCard = "Strongyloplasmata"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8676_getCardsAttachmentsByIdCardByIdAttachment_20250508034216726.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments/{idAttachment}
Scenario: test_TestId_8676_getCardsAttachmentsByIdCardByIdAttachment_20250508034216726 (Order: 8676)
  * def idAttachment = "RARE"
  * def idCard = "K2"
  Given path 'cards/<idCard>/attachments/<idAttachment>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8703_getListsByIdList_20250508034229669.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_8703_getListsByIdList_20250508034229669 (Order: 8703)
  * def idList = "D"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8717_getListsByIdList_20250508034229676.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_8717_getListsByIdList_20250508034229676 (Order: 8717)
  * def idList = "MEX"
  Given path 'lists/<idList>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8731_getChecklistsByIdChecklist_20250508034236162.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_8731_getChecklistsByIdChecklist_20250508034236162 (Order: 8731)
  * def idChecklist = "28fa"
  Given path 'checklists/<idChecklist>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8742_getCardsChecklistsByIdCard_20250508034242885.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_8742_getCardsChecklistsByIdCard_20250508034242885 (Order: 8742)
  * def idCard = "straight-barreled"
  Given path 'cards/<idCard>/checklists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_876_getOrganizationsActionsByIdOrg_20250508025842119.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_876_getOrganizationsActionsByIdOrg_20250508025842119 (Order: 876)
  * def idOrg = "xprik@live.com"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8795_getOrganizationsBoardsByIdOrg_20250508034255931.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_8795_getOrganizationsBoardsByIdOrg_20250508034255931 (Order: 8795)
  * def idOrg = "y"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8798_getOrganizationsBoardsByIdOrg_20250508034255933.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/boards
Scenario: test_TestId_8798_getOrganizationsBoardsByIdOrg_20250508034255933 (Order: 8798)
  * def idOrg = "20101211"
  Given path 'organizations/<idOrg>/boards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8818_getMembersCardsByIdMember_20250508034302519.java
# 原始 URL: https://trello.com/1/members/{idMember}/cards
Scenario: test_TestId_8818_getMembersCardsByIdMember_20250508034302519 (Order: 8818)
  * def idMember = "http:xmub.de"
  Given path 'members/<idMember>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8841_getBoardsCardsByIdBoard_20250508034315532.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_8841_getBoardsCardsByIdBoard_20250508034315532 (Order: 8841)
  * def idBoard = "O"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8858_getBoardsCardsByIdBoard_20250508034315543.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards
Scenario: test_TestId_8858_getBoardsCardsByIdBoard_20250508034315543 (Order: 8858)
  * def idBoard = "IRE"
  Given path 'boards/<idBoard>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8872_getListsCardsByIdList_20250508034322143.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_8872_getListsCardsByIdList_20250508034322143 (Order: 8872)
  * def idList = "OFNPS"
  Given path 'lists/<idList>/cards'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8889_getCardsActionsByIdCard_20250508034328699.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions
Scenario: test_TestId_8889_getCardsActionsByIdCard_20250508034328699 (Order: 8889)
  * def idCard = "http:atdm.l.ch"
  Given path 'cards/<idCard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8910_getNotificationsByIdNotification_20250508034335192.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_8910_getNotificationsByIdNotification_20250508034335192 (Order: 8910)
  * def idNotification = "uninterrogative"
  Given path 'notifications/<idNotification>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8936_getListsActionsByIdList_20250508034341725.java
# 原始 URL: https://trello.com/1/lists/{idList}/actions
Scenario: test_TestId_8936_getListsActionsByIdList_20250508034341725 (Order: 8936)
  * def idList = "FIB"
  Given path 'lists/<idList>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8950_getOrganizationsActionsByIdOrg_20250508034348243.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}/actions
Scenario: test_TestId_8950_getOrganizationsActionsByIdOrg_20250508034348243 (Order: 8950)
  * def idOrg = "i-come"
  Given path 'organizations/<idOrg>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8963_getBoardsActionsByIdBoard_20250508034354772.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/actions
Scenario: test_TestId_8963_getBoardsActionsByIdBoard_20250508034354772 (Order: 8963)
  * def idBoard = "douc "
  Given path 'boards/<idBoard>/actions'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8990_getBoardsCardsByIdBoardByIdCard_20250508034401296.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_8990_getBoardsCardsByIdBoardByIdCard_20250508034401296 (Order: 8990)
  * def idBoard = "antiendotoxin"
  * def idCard = "nearsightednesses"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8996_getBoardsCardsByIdBoardByIdCard_20250508034401303.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_8996_getBoardsCardsByIdBoardByIdCard_20250508034401303 (Order: 8996)
  * def idBoard = "21:31:49"
  * def idCard = "crispily"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9024_getOrganizationsByIdOrg_20250508034414310.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_9024_getOrganizationsByIdOrg_20250508034414310 (Order: 9024)
  * def idOrg = "DDS"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9039_getOrganizationsByIdOrg_20250508034414321.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_9039_getOrganizationsByIdOrg_20250508034414321 (Order: 9039)
  * def idOrg = "B56mvfxMrR2SXPTk
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9053_getBoardsByIdBoard_20250508034420811.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_9053_getBoardsByIdBoard_20250508034420811 (Order: 9053)
  * def idBoard = "Iardanus"
  Given path 'boards/<idBoard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9067_addNotificationsAllRead_20250508034427375.java
# 原始 URL: https://trello.com/1/notifications/all/read
Scenario: test_TestId_9067_addNotificationsAllRead_20250508034427375 (Order: 9067)
  Given path 'notifications/all/read'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_90_getListsBoardByIdList_20250508025420391.java
# 原始 URL: https://trello.com/1/lists/{idList}/board
Scenario: test_TestId_90_getListsBoardByIdList_20250508025420391 (Order: 90)
  * def idList = "FAT"
  Given path 'lists/<idList>/board'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9116_addCardsIdMembersByIdCard_20250508034440361.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_9116_addCardsIdMembersByIdCard_20250508034440361 (Order: 9116)
  * def idCard = "gunky"
  Given path 'cards/<idCard>/idMembers'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9124_addCardsActionsCommentsByIdCard_20250508034446848.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_9124_addCardsActionsCommentsByIdCard_20250508034446848 (Order: 9124)
  * def idCard = "2cb52"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9139_addCardsActionsCommentsByIdCard_20250508034446854.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/comments
Scenario: test_TestId_9139_addCardsActionsCommentsByIdCard_20250508034446854 (Order: 9139)
  * def idCard = "AZ16 DBSU NE1N DKMN MNGB X3YW RQGZ"
  Given path 'cards/<idCard>/actions/comments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_916_getBoardsCardsByIdBoardByIdCard_20250508025855298.java
# 原始 URL: https://trello.com/1/boards/{idBoard}/cards/{idCard}
Scenario: test_TestId_916_getBoardsCardsByIdBoardByIdCard_20250508025855298 (Order: 916)
  * def idBoard = "virtuoso's"
  * def idCard = "(+5930) 67265032284"
  Given path 'boards/<idBoard>/cards/<idCard>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9179_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508034500901.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/convertToCard
Scenario: test_TestId_9179_addCardsChecklistCheckItemConvertToCardByIdCardByIdChecklistByIdCheckItem_20250508034500901 (Order: 9179)
  * def idCard = "18jBnb^D1"
  * def idChecklist = "tellen"
  * def idCheckItem = "9471522085"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/convertToCard'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9205_addCardsChecklistsByIdCard_20250508034513999.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_9205_addCardsChecklistsByIdCard_20250508034513999 (Order: 9205)
  * def idCard = "degeneracy"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9215_addCardsChecklistsByIdCard_20250508034514003.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists
Scenario: test_TestId_9215_addCardsChecklistsByIdCard_20250508034514003 (Order: 9215)
  * def idCard = "overbears"
  Given path 'cards/<idCard>/checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9234_addCardsLabelsByIdCard_20250508034521079.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_9234_addCardsLabelsByIdCard_20250508034521079 (Order: 9234)
  * def idCard = "IS32 6361 5146 7443 7325 7311 57"
  Given path 'cards/<idCard>/labels'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9262_addCardsAttachmentsByIdCard_20250508034534104.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_9262_addCardsAttachmentsByIdCard_20250508034534104 (Order: 9262)
  * def idCard = "moiest"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9280_addCardsAttachmentsByIdCard_20250508034534112.java
# 原始 URL: https://trello.com/1/cards/{idCard}/attachments
Scenario: test_TestId_9280_addCardsAttachmentsByIdCard_20250508034534112 (Order: 9280)
  * def idCard = "2ebf:4746:c182:c0b6:ca48:8821:89dd:bedf"
  Given path 'cards/<idCard>/attachments'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9287_addChecklists_20250508034540632.java
# 原始 URL: https://trello.com/1/checklists
Scenario: test_TestId_9287_addChecklists_20250508034540632 (Order: 9287)
  Given path 'checklists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9314_addLists_20250508034547137.java
# 原始 URL: https://trello.com/1/lists
Scenario: test_TestId_9314_addLists_20250508034547137 (Order: 9314)
  Given path 'lists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9329_addListsCardsByIdList_20250508034553620.java
# 原始 URL: https://trello.com/1/lists/{idList}/cards
Scenario: test_TestId_9329_addListsCardsByIdList_20250508034553620 (Order: 9329)
  * def idList = "aristocraticalness"
  Given path 'lists/<idList>/cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9345_addOrganizations_20250508034600126.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_9345_addOrganizations_20250508034600126 (Order: 9345)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9353_addOrganizations_20250508034600130.java
# 原始 URL: https://trello.com/1/organizations
Scenario: test_TestId_9353_addOrganizations_20250508034600130 (Order: 9353)
  Given path 'organizations'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9375_addCards_20250508034606648.java
# 原始 URL: https://trello.com/1/cards
Scenario: test_TestId_9375_addCards_20250508034606648 (Order: 9375)
  Given path 'cards'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9403_updateCardsIdListByIdCard_20250508034620223.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_9403_updateCardsIdListByIdCard_20250508034620223 (Order: 9403)
  * def idCard = "fimble"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9410_updateCardsIdListByIdCard_20250508034620225.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idList
Scenario: test_TestId_9410_updateCardsIdListByIdCard_20250508034620225 (Order: 9410)
  * def idCard = "d3122e47-ace7-4470-bc29-ef654b88d291"
  Given path 'cards/<idCard>/idList'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9432_updateCardsIdMembersByIdCard_20250508034626673.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idMembers
Scenario: test_TestId_9432_updateCardsIdMembersByIdCard_20250508034626673 (Order: 9432)
  * def idCard = "3288240522"
  Given path 'cards/<idCard>/idMembers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9455_updateCardsDescByIdCard_20250508034633141.java
# 原始 URL: https://trello.com/1/cards/{idCard}/desc
Scenario: test_TestId_9455_updateCardsDescByIdCard_20250508034633141 (Order: 9455)
  * def idCard = "Prussianization"
  Given path 'cards/<idCard>/desc'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9474_updateCardsClosedByIdCard_20250508034639603.java
# 原始 URL: https://trello.com/1/cards/{idCard}/closed
Scenario: test_TestId_9474_updateCardsClosedByIdCard_20250508034639603 (Order: 9474)
  * def idCard = "19:36:33"
  Given path 'cards/<idCard>/closed'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9495_updateCardsDueByIdCard_20250508034646086.java
# 原始 URL: https://trello.com/1/cards/{idCard}/due
Scenario: test_TestId_9495_updateCardsDueByIdCard_20250508034646086 (Order: 9495)
  * def idCard = "humbly"
  Given path 'cards/<idCard>/due'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9512_updateNotificationsByIdNotification_20250508034652572.java
# 原始 URL: https://trello.com/1/notifications/{idNotification}
Scenario: test_TestId_9512_updateNotificationsByIdNotification_20250508034652572 (Order: 9512)
  * def idNotification = "semicabalistically"
  Given path 'notifications/<idNotification>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_951_getOrganizationsByIdOrg_20250508025908389.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_951_getOrganizationsByIdOrg_20250508025908389 (Order: 951)
  * def idOrg = "77bbecbd-ad52-4fdd-b08b-5d55e327ec09"
  Given path 'organizations/<idOrg>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9538_updateCardsIdAttachmentCoverByIdCard_20250508034659642.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idAttachmentCover
Scenario: test_TestId_9538_updateCardsIdAttachmentCoverByIdCard_20250508034659642 (Order: 9538)
  * def idCard = "VM"
  Given path 'cards/<idCard>/idAttachmentCover'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9564_updateLabelsNameByIdLabel_20250508034712832.java
# 原始 URL: https://trello.com/1/labels/{idLabel}/name
Scenario: test_TestId_9564_updateLabelsNameByIdLabel_20250508034712832 (Order: 9564)
  * def idLabel = "J"
  Given path 'labels/<idLabel>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9583_updateActionsByIdAction_20250508034719367.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_9583_updateActionsByIdAction_20250508034719367 (Order: 9583)
  * def idAction = "L3"
  Given path 'actions/<idAction>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9602_updateCardsIdBoardByIdCard_20250508034726227.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_9602_updateCardsIdBoardByIdCard_20250508034726227 (Order: 9602)
  * def idCard = "SIPC"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9608_updateCardsIdBoardByIdCard_20250508034726230.java
# 原始 URL: https://trello.com/1/cards/{idCard}/idBoard
Scenario: test_TestId_9608_updateCardsIdBoardByIdCard_20250508034726230 (Order: 9608)
  * def idCard = "http:euwfdmxzf.m.co.uk"
  Given path 'cards/<idCard>/idBoard'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9636_updateCardsActionsCommentsByIdCardByIdAction_20250508034732764.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_9636_updateCardsActionsCommentsByIdCardByIdAction_20250508034732764 (Order: 9636)
  * def idCard = "splendrousness"
  * def idAction = "B"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9651_updateLabelsByIdLabel_20250508034739274.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_9651_updateLabelsByIdLabel_20250508034739274 (Order: 9651)
  * def idLabel = "awash"
  Given path 'labels/<idLabel>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9668_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508034745775.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/state
Scenario: test_TestId_9668_updateCardsChecklistCheckItemStateByIdCardByIdChecklistByIdCheckItem_20250508034745775 (Order: 9668)
  * def idCard = "F"
  * def idChecklist = "cd0a6"
  * def idCheckItem = "Saint-Maur-des-Foss"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/state'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9695_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508034752246.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/name
Scenario: test_TestId_9695_updateCardsChecklistCheckItemNameByIdCardByIdChecklistByIdCheckItem_20250508034752246 (Order: 9695)
  * def idCard = "laparothoracoscopy"
  * def idChecklist = "yU83à9"
  * def idCheckItem = "tuple K "
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/name'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9708_updateCardsLabelsByIdCard_20250508034758759.java
# 原始 URL: https://trello.com/1/cards/{idCard}/labels
Scenario: test_TestId_9708_updateCardsLabelsByIdCard_20250508034758759 (Order: 9708)
  * def idCard = "t"
  Given path 'cards/<idCard>/labels'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9722_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508034805228.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklist}/checkItem/{idCheckItem}/pos
Scenario: test_TestId_9722_updateCardsChecklistCheckItemPosByIdCardByIdChecklistByIdCheckItem_20250508034805228 (Order: 9722)
  * def idCard = "0095ca9b-4cc9-4b5e-81e4-14000cc4e3c1"
  * def idChecklist = "caseworks"
  * def idCheckItem = "OB"
  Given path 'cards/<idCard>/checklist/<idChecklist>/checkItem/<idCheckItem>/pos'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9746_updateChecklistsByIdChecklist_20250508034811728.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_9746_updateChecklistsByIdChecklist_20250508034811728 (Order: 9746)
  * def idChecklist = "Caius U"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9753_updateChecklistsByIdChecklist_20250508034811732.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_9753_updateChecklistsByIdChecklist_20250508034811732 (Order: 9753)
  * def idChecklist = "untrainedly"
  Given path 'checklists/<idChecklist>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9778_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508034818224.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklist/{idChecklistCurrent}/checkItem/{idCheckItem}
Scenario: test_TestId_9778_updateCardsChecklistCheckItemByIdCardByIdChecklistCurrentByIdCheckItem_20250508034818224 (Order: 9778)
  * def idCard = "sisham VS"
  * def idCheckItem = "urao"
  * def idChecklistCurrent = "fat-backed"
  Given path 'cards/<idCard>/checklist/<idChecklistCurrent>/checkItem/<idCheckItem>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9789_updateListsByIdList_20250508034824681.java
# 原始 URL: https://trello.com/1/lists/{idList}
Scenario: test_TestId_9789_updateListsByIdList_20250508034824681 (Order: 9789)
  * def idList = "http:cghklnz.co.ukzlglugpsh@live.com"
  Given path 'lists/<idList>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9813_updateOrganizationsByIdOrg_20250508034831174.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_9813_updateOrganizationsByIdOrg_20250508034831174 (Order: 9813)
  * def idOrg = "(+4557) 19796545149"
  Given path 'organizations/<idOrg>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9834_updateCardsByIdCard_20250508034837713.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_9834_updateCardsByIdCard_20250508034837713 (Order: 9834)
  * def idCard = "20041120"
  Given path 'cards/<idCard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9849_updateBoardsByIdBoard_20250508034844081.java
# 原始 URL: https://trello.com/1/boards/{idBoard}
Scenario: test_TestId_9849_updateBoardsByIdBoard_20250508034844081 (Order: 9849)
  * def idBoard = "Sacheverell"
  Given path 'boards/<idBoard>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9862_deleteActionsByIdAction_20250508034850529.java
# 原始 URL: https://trello.com/1/actions/{idAction}
Scenario: test_TestId_9862_deleteActionsByIdAction_20250508034850529 (Order: 9862)
  * def idAction = "o"
  Given path 'actions/<idAction>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9892_deleteCardsByIdCard_20250508034856944.java
# 原始 URL: https://trello.com/1/cards/{idCard}
Scenario: test_TestId_9892_deleteCardsByIdCard_20250508034856944 (Order: 9892)
  * def idCard = "tonify"
  Given path 'cards/<idCard>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9905_deleteLabelsByIdLabel_20250508034903454.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_9905_deleteLabelsByIdLabel_20250508034903454 (Order: 9905)
  * def idLabel = "wolf-begotten"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9918_deleteLabelsByIdLabel_20250508034903459.java
# 原始 URL: https://trello.com/1/labels/{idLabel}
Scenario: test_TestId_9918_deleteLabelsByIdLabel_20250508034903459 (Order: 9918)
  * def idLabel = "acara"
  Given path 'labels/<idLabel>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9938_deleteOrganizationsByIdOrg_20250508034909951.java
# 原始 URL: https://trello.com/1/organizations/{idOrg}
Scenario: test_TestId_9938_deleteOrganizationsByIdOrg_20250508034909951 (Order: 9938)
  * def idOrg = "20180220"
  Given path 'organizations/<idOrg>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9953_deleteChecklistsByIdChecklist_20250508034916447.java
# 原始 URL: https://trello.com/1/checklists/{idChecklist}
Scenario: test_TestId_9953_deleteChecklistsByIdChecklist_20250508034916447 (Order: 9953)
  * def idChecklist = "461410266"
  Given path 'checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9968_deleteCardsChecklistsByIdCardByIdChecklist_20250508034923283.java
# 原始 URL: https://trello.com/1/cards/{idCard}/checklists/{idChecklist}
Scenario: test_TestId_9968_deleteCardsChecklistsByIdCardByIdChecklist_20250508034923283 (Order: 9968)
  * def idCard = "èbBJ"
  * def idChecklist = "op."
  Given path 'cards/<idCard>/checklists/<idChecklist>'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9988_deleteCardsActionsCommentsByIdCardByIdAction_20250508034929730.java
# 原始 URL: https://trello.com/1/cards/{idCard}/actions/{idAction}/comments
Scenario: test_TestId_9988_deleteCardsActionsCommentsByIdCardByIdAction_20250508034929730 (Order: 9988)
  * def idCard = "esophagomycosis"
  * def idAction = "Coh"
  Given path 'cards/<idCard>/actions/<idAction>/comments'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

