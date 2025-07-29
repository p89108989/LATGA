Feature: Converted from JUnit to Karate

Scenario: test_CountryAvailableCountries_20241030145036947 (Order: 82)
 Given url "https://date.nager.at//api/endpoint"
 When method GET
 Then status 200
 * assert response.status < 500
 * print "StatusCode 5xx: The test sequence was not executed successfully."

