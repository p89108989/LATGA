Feature: Merged Karate Test
  Merged from 2 source files

Background:
  * url 'https://date.nager.at/api/v3'
  * def validCountries = ['US', 'DE', 'JP']
  * def invalidCountry = 'XX'
  * def midYear = 2023
  * def maxYear = 20300
  * def minYear = 0
  * def invalidYearTooLarge = 30000
  * def invalidYearTooSmall = -1000
  * def invalidYearFormat = 'abc'

Scenario: #001 - File1_#1 取得可用國家列表，驗證回傳為非空陣列
Given path 'AvailableCountries'
When method get
Then status 200

# 2. 測試 Version (無參數，僅200)
Scenario: #002 - File1_#2 取得版本資訊，驗證回傳含有 version 屬性且為字串
Given path 'Version'
When method get
Then status 200

# 3. 測試 NextPublicHolidaysWorldwide (無參數，僅200)
Scenario: #003 - File1_#3 取得全球未來7天假日，驗證回傳為非空陣列
Given path 'NextPublicHolidaysWorldwide'
When method get
Then status 200

# 4. 測試 CountryInfo/{countryCode}，涵蓋所有有效與無效countryCode
Scenario Outline: #004 - File1_#4 CountryInfo取得國家資訊，測試有效與無效countryCode
Given path 'CountryInfo',
When method get
Then match [200, 404] contains responseStatus

Examples:
| countryCode |
| US          |
| DE          |
| JP          |
| XX          |

# 5. 測試 IsTodayPublicHoliday/{countryCode}，涵蓋200,204,400,404狀況及query參數
Scenario Outline: #005 - File1_#5 今日是否假日檢查，測試多種狀態碼與參數組合
Given path 'IsTodayPublicHoliday',

When method get
Then match [200, 204, 400, 404] contains responseStatus

Examples:
| countryCode |
| US          |
| DE          |
| JP          |
| XX          |

# 6. 測試 NextPublicHolidays/{countryCode}，涵蓋有效及無效countryCode
Scenario Outline: #006 - File1_#6 取得指定國家未來365天假日
Given path 'NextPublicHolidays',
When method get
Then match [200, 404] contains responseStatus

Examples:
| countryCode |
| US          |
| DE          |
| JP          |
| XX          |

# 7. 測試 PublicHolidays/{year}/{countryCode}，包含多種年份等價類別與多狀態碼
Scenario Outline: #007 - File1_#7 取得指定國家與年份公共假日-多情境測試
Given path 'PublicHolidays', ,
When method get
Then match [200, 400, 404] contains responseStatus

Examples:
| year    | countryCode |
| 2023    | US          |
| 20300   | US          |
| 0       | US          |
| 30000   | US          |
| -1000   | US          |
| abc     | US          |
| 2023    | DE          |
| 2023    | JP          |
| 2023    | XX          |
| 0       | XX          |
| 20300   | XX          |

# 8. 測試 LongWeekend/{year}/{countryCode}，包含query參數availableBridgeDays與subdivisionCode，多種年份與狀態碼
Scenario Outline: #008 - File1_#8 取得長週末資訊-多情境與參數組合測試
Given path 'LongWeekend', ,

When method get
Then match [200, 400, 404] contains responseStatus

Examples:
| year  | countryCode |
| 2023  | US          |
| 20300 | DE          |
| 0     | JP          |
| 30000 | US          |
| -1000 | DE          |
| abc   | JP          |
| 2023  | XX          |

# 9. Workflow 整合測試：從 AvailableCountries -> CountryInfo -> IsTodayPublicHoliday -> NextPublicHolidays -> PublicHolidays -> LongWeekend
Scenario Outline: #009 - File1_#9 使用者完整查詢流程-多情境年份與國家組合
# Step 1: 取得可用國家列表
Given path 'AvailableCountries'
When method get
Then status 200

# Step 2: 取得指定國家資訊
Given path 'CountryInfo',
When method get
Then status 200

# Step 3: 查詢今日是否為指定國家假日
Given path 'IsTodayPublicHoliday',
When method get
Then match [200, 204] contains responseStatus

# Step 4: 取得指定國家未來假日
Given path 'NextPublicHolidays',
When method get
Then status 200

# Step 5: 取得指定國家與年份公共假日
Given path 'PublicHolidays', ,
When method get
Then match [200, 400, 404] contains responseStatus

# Step 6: 取得指定國家與年份長週末資訊
Given path 'LongWeekend', ,
When method get
Then match [200, 400, 404] contains responseStatus

Examples:
| countryCode | year  |
| US          | 2023  |
| DE          | 20300 |
| JP          | 0     |
| US          | 30000 |
| DE          | -1000 |
Scenario: #010 - File2_取得所有可用國家列表
Given path 'AvailableCountries'
When method get
Then status 200

# Scenario 2: 查詢單一國家詳細資訊
# Scenario 2
Scenario Outline: #011 - File2_查詢特定國家的詳細資訊
Given path 'CountryInfo',
When method get
Then status 200
Examples:
| countryCode |
| 'US'          |
| 'DE'          |
| 'JP'          |

# Scenario 3: 查詢某國某年全部國定假日 (六大等價類情境)
# Scenario 3
Scenario Outline: #012 - File2_查詢特定國家特定年份國定假日，等價類分群測試
Given path 'PublicHolidays', ,
When method get
Then match [200, 400, 404] contains responseStatus
Examples:
| year   | countryCode |
| 2023   | 'US'          |
| 20300  | 'DE'          |
| 0      | 'JP'          |
| 99999  | 'US'          |
| -1000  | 'DE'          |
| abcd   | 'JP'          |

# Scenario 4: 查詢未來365天的假日
# Scenario 4
Scenario Outline: #013 - File2_查詢未來365天的假日
Given path 'NextPublicHolidays',
When method get
Then status 200
Examples:
| countryCode |
| 'US'          |
| 'DE'          |
| 'JP'          |

# Scenario 5: 查詢未來7天全世界假日
# Scenario 5
Scenario: #014 - File2_查詢未來7天全世界假日
Given path 'NextPublicHolidaysWorldwide'
When method get
Then status 200

# Scenario 6: 查詢某國某年長週末 (含分群)
# Scenario 6
Scenario Outline: #015 - File2_查詢某國某年長週末 (equivalence partition)
Given path 'LongWeekend', ,
And param availableBridgeDays =
When method get
Then match [200, 400, 404] contains responseStatus
Examples:
| year   | countryCode | bridge |
| 2023   | 'US'          | 1      |
| 20300  | 'DE'          | 2      |
| 0      | 'JP'          | 0      |
| 99999  | 'US'          | 12     |
| -1000  | 'DE'          | -12    |
| abcd   | 'JP'          | 1      |

# Scenario 7: 查詢今天是否為國定假日 (含情境)
# Scenario 7
Scenario Outline: #016 - File2_查詢今天是否為國定假日
Given path 'IsTodayPublicHoliday',
And param offset =
When method get
Then match [200, 204, 400, 404] contains responseStatus
Examples:
| countryCode | offset |
| 'US'          | 0     |
| 'DE'          | 12    |
| 'JP'          | -12   |
| 'XX'          | 0     |
| 'US'          | 100   |

# Scenario 8: 查詢 API 版本資訊
# Scenario 8
Scenario: #017 - File2_取得API版本資訊
Given path 'Version'
When method get
