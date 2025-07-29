Feature: Converted from JUnit to Karate

Background:
  * url 'https://date.nager.at/'

# 原始 URL: https://date.nager.at/api/v3/IsTodayPublicHoliday/{countryCode}
Scenario: test_TestId_140_PublicHolidayIsTodayPublicHoliday_20250501092029049 (Order: 140)
  * def countryCode = "US"
  Given path 'api/v3/IsTodayPublicHoliday/<countryCode>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

