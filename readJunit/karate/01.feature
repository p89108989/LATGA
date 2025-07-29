Feature: Converted from JUnit to Karate

Background:
  * url 'https://date.nager.at/'

# 原始 URL: https://date.nager.at/api/v3/CountryInfo/{countryCode}
Scenario: test_CountryCountryInfo_20241030145259153 (Order: 341)
  * def countryCode = 951848810
  Given path 'api/v3/CountryInfo/<countryCode>'
  When method get
  Then assert responseStatus >= 300 && responseStatus <= 499
  # 註：預期狀態碼範圍 300-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()<=299,"StatusCode 2xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

