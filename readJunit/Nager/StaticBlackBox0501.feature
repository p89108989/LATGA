Feature: Nager.Date API Workflow Test with Equivalence Partitioning

  Background:
    * url 'https://date.nager.at'

#----------------------------------------
# TC001: Valid Middle Input
#----------------------------------------
  Scenario: TC001 - Valid middle input (countryCode=US, year=2025, offset=5)
    Given path '/api/v3/CountryInfo/US'
    When method get
    Then status 200

    Given path '/api/v3/PublicHolidays/2025/US'
    When method get
    Then match [200, 400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/US'
    And param offset = 5
    When method get
    Then match [200, 204, 400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/2025/US'
    When method get
    Then status 200

#----------------------------------------
# TC002: Valid max boundary (countryCode=ZW, year=2100, offset=12)
#----------------------------------------
  Scenario: TC002 - Valid upper boundary input
    Given path '/api/v3/CountryInfo/ZW'
    When method get
    Then status 200

    Given path '/api/v3/PublicHolidays/2100/ZW'
    When method get
    Then match [200, 400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/ZW'
    And param offset = 12
    When method get
    Then match [200, 204, 400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/2100/ZW'
    When method get
    Then status 200

#----------------------------------------
# TC003: Valid min boundary (countryCode=AD, year=1900, offset=-12)
#----------------------------------------
  Scenario: TC003 - Valid lower boundary input
    Given path '/api/v3/CountryInfo/AD'
    When method get
    Then status 200

    Given path '/api/v3/PublicHolidays/1900/AD'
    When method get
    Then match [200, 400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/AD'
    And param offset = -12
    When method get
    Then match [200, 204, 400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/1900/AD'
    When method get
    Then status 200

#----------------------------------------
# TC004: Invalid - year > max (year=2200, countryCode=USA)
#----------------------------------------
  Scenario: TC004 - Invalid input - year above max
    Given path '/api/v3/CountryInfo/USA'
    When method get
    Then match [200, 404] contains responseStatus

    Given path '/api/v3/PublicHolidays/2200/USA'
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/USA'
    And param offset = 20
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/2200/USA'
    When method get
    Then match [400, 404] contains responseStatus

#----------------------------------------
# TC005: Invalid - year < min (year=1000, countryCode=U)
#----------------------------------------
  Scenario: TC005 - Invalid input - year below min
    Given path '/api/v3/CountryInfo/U'
    When method get
    Then match [200, 404] contains responseStatus

    Given path '/api/v3/PublicHolidays/1000/U'
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/U'
    And param offset = -20
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/1000/U'
    When method get
    Then match [400, 404] contains responseStatus

#----------------------------------------
# TC006: Invalid format - countryCode not compliant, offset invalid string
#----------------------------------------
  Scenario: TC006 - Invalid format input (countryCode=1@, offset="abc")
    Given path '/api/v3/CountryInfo/1@'
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/PublicHolidays/2025/1@'
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/IsTodayPublicHoliday/1@'
    And param offset = 'abc'
    When method get
    Then match [400, 404] contains responseStatus

    Given path '/api/v3/LongWeekend/2025/1@'
    When method get
    Then match [400, 404] contains responseStatus
