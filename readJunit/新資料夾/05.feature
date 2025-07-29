Feature: Converted from JUnit to Karate

Background:
  * url 'https://date.nager.at/'

# 原始 URL: https://date.nager.at/api/v3/PublicHolidays/{year}/{countryCode}
Scenario: test_TestId_101_PublicHolidayPublicHolidaysV3_20250501092019266 (Order: 101)
  * def year = 1900
  * def countryCode = "U"
  Given path 'api/v3/PublicHolidays/<year>/<countryCode>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

