Feature: Merged Public Holiday API Workflow with Validation and Status Variants

Background:
  * url 'https://date.nager.at'
  * def testCases =

    | countryCode | year  | offset |
    | 'US'        | 2025  | 5      |
    | 'ZW'        | 2100  | 12     |
    | 'AD'        | 1999  | 3      |
    | 'XYZ'       | 2023  | 0      |
    | ''          | 1900  | -1     |

  # Common assertion function for response status
  * def assertValidStatus = function(statusList) {karate.match(statusList, responseStatus).pass}

Scenario Outline: Combined API Workflow for <countryCode> in <year> with offset <offset>

  # Step 1: Get Country Info
  Given path '/api/v3/CountryInfo/<countryCode>'
  When method get
  * def responseStatus = responseStatus
  * eval assertValidStatus([200, 400, 404])
  * if (responseStatus == 200) karate.match(response, { countryCode: '#string', name: '#string' }).pass

  # Step 2: Get Public Holidays
  Given path '/api/v3/PublicHolidays/<year>/<countryCode>'
  When method get
  * def responseStatus = responseStatus
  * eval assertValidStatus([200, 400, 404])
  * if (responseStatus == 200) karate.match(response[0], { date: '#string', localName: '#string' }).pass

  # Step 3: Check if Today is a Holiday
  Given path '/api/v3/IsTodayPublicHoliday/<countryCode>'
  And param offset = <offset>
  When method get
  * def responseStatus = responseStatus
  * eval assertValidStatus([200, 204, 400, 404])

  # Step 4: Get Long Weekends
  Given path '/api/v3/LongWeekend/<year>/<countryCode>'
  When method get
  * def responseStatus = responseStatus
  * eval assertValidStatus([200, 400, 404])
  * if (responseStatus == 200 && response.length > 0) karate.match(response[0], { startDate: '#string', endDate: '#string' }).pass

Examples:
  | testCases |
