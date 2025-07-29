
Feature: Public Holiday API Full Workflow & Validation

Background:
  * url 'https://date.nager.at'
  * def validCountries = ['US', 'AD', 'ZW']
  * def validYears = [1999, 1900, 2100]
  * def invalidYears = ['9999', 'abcd', '', -1, 3000]

# --- GET /api/v3/AvailableCountries ---

Scenario: #001 - Get list of available countries
  Given path 'api/v3/AvailableCountries'
  When method get
  Then status 200
  And match response contains { countryCode: 'US' }

# --- GET /api/v3/CountryInfo/{countryCode} ---

Scenario: #002 - Get country info with valid code
  Given path 'api/v3/CountryInfo/US'
  When method get
  Then status 200
  And match response.countryCode == 'US'

Scenario: #003 - Invalid country code (non-existent)
  Given path 'api/v3/CountryInfo/XX'
  When method get
  Then match [400, 404] contains responseStatus

# --- GET /api/v3/PublicHolidays/{year}/{countryCode} ---

Scenario: #004 - Valid middle value
  Given path 'api/v3/PublicHolidays/1999/US'
  When method get
  Then status 200

Scenario: #005 - Valid upper boundary
  Given path 'api/v3/PublicHolidays/2100/US'
  When method get
  Then status 200

Scenario: #006 - Valid lower boundary
  Given path 'api/v3/PublicHolidays/1900/US'
  When method get
  Then status 200

Scenario: #007 - Year too high (invalid)
  Given path 'api/v3/PublicHolidays/3000/US'
  When method get
  Then match [400, 404] contains responseStatus

Scenario: #008 - Year too low (invalid)
  Given path 'api/v3/PublicHolidays/-1/US'
  When method get
  Then match [400, 404] contains responseStatus

Scenario: #009 - Year format invalid
  Given path 'api/v3/PublicHolidays/abcd/US'
  When method get
  Then match [400, 404] contains responseStatus

# --- GET /api/v3/IsTodayPublicHoliday/{countryCode} ---

Scenario: #010 - Check if today is a public holiday (valid)
  Given path 'api/v3/IsTodayPublicHoliday/US'
  When method get
  Then match [200, 204] contains responseStatus

Scenario: #011 - Invalid country code for today check
  Given path 'api/v3/IsTodayPublicHoliday/ZZ'
  When method get
  Then match [400, 404] contains responseStatus

# --- GET /api/v3/NextPublicHolidays/{countryCode} ---

Scenario: #012 - Get next public holidays for a country
  Given path 'api/v3/NextPublicHolidays/US'
  When method get
  Then status 200

Scenario: #013 - Invalid country for next holidays
  Given path 'api/v3/NextPublicHolidays/??'
  When method get
  Then match [400, 404] contains responseStatus

# --- GET /api/v3/NextPublicHolidaysWorldwide ---

Scenario: #014 - Get next worldwide holidays
  Given path 'api/v3/NextPublicHolidaysWorldwide'
  When method get
  Then status 200

# --- GET /api/v3/LongWeekend/{year}/{countryCode} ---

Scenario: #015 - Long weekend valid mid value
  Given path 'api/v3/LongWeekend/1999/US'
  When method get
  Then status 200

Scenario: #016 - Long weekend max year
  Given path 'api/v3/LongWeekend/2100/US'
  When method get
  Then status 200

Scenario: #017 - Long weekend min year
  Given path 'api/v3/LongWeekend/1900/US'
  When method get
  Then status 200

Scenario: #018 - Long weekend year too large
  Given path 'api/v3/LongWeekend/3000/US'
  When method get
  Then match [400, 404] contains responseStatus

Scenario: #019 - Long weekend year too small
  Given path 'api/v3/LongWeekend/-1/US'
  When method get
  Then match [400, 404] contains responseStatus

Scenario: #020 - Long weekend year format invalid
  Given path 'api/v3/LongWeekend/abcd/US'
  When method get
  Then match [400, 404] contains responseStatus

# --- GET /api/v3/Version ---

Scenario: #021 - Check API version
  Given path 'api/v3/Version'
  When method get
  Then status 200
  And match response contains { name: '#string', version: '#string' }
