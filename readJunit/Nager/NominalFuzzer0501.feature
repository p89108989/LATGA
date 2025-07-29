Feature: Converted from JUnit to Karate

  Background:
    * url 'https://date.nager.at/'

# 原始 URL: https://date.nager.at/api/v3/CountryInfo/{countryCode}
  Scenario: test_TestId_39_CountryCountryInfo_20250501092006471 (Order: 39)
    * def countryCode = "USA"
    Given path 'api/v3/CountryInfo/<countryCode>'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始 URL: https://date.nager.at/api/v3/NextPublicHolidays/{countryCode}
  Scenario: test_TestId_51_PublicHolidayNextPublicHolidays_20250501092011407 (Order: 51)
    * def countryCode = "U"
    Given path 'api/v3/NextPublicHolidays/<countryCode>'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始 URL: https://date.nager.at/api/v3/Version
  Scenario: test_TestId_67_VersionGetVersion_20250501092017705 (Order: 67)
    Given path 'api/v3/Version'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始 URL: https://date.nager.at/api/v3/AvailableCountries
  Scenario: test_TestId_98_CountryAvailableCountries_20250501092018783 (Order: 98)
    Given path 'api/v3/AvailableCountries'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

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

# 原始 URL: https://date.nager.at/api/v3/IsTodayPublicHoliday/{countryCode}
  Scenario: test_TestId_134_PublicHolidayIsTodayPublicHoliday_20250501092029046 (Order: 134)
    * def countryCode = "1@"
    Given path 'api/v3/IsTodayPublicHoliday/<countryCode>'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始 URL: https://date.nager.at/api/v3/IsTodayPublicHoliday/{countryCode}
  Scenario: test_TestId_140_PublicHolidayIsTodayPublicHoliday_20250501092029049 (Order: 140)
    * def countryCode = "US"
    Given path 'api/v3/IsTodayPublicHoliday/<countryCode>'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始 URL: https://date.nager.at/api/v3/LongWeekend/{year}/{countryCode}
  Scenario: test_TestId_156_LongWeekendLongWeekend_20250501092036052 (Order: 156)
    * def year = 1900
    * def countryCode = "ZW"
    Given path 'api/v3/LongWeekend/<year>/<countryCode>'
    When method get
    Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
    * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

