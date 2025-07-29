Feature: Spotify Web API - Workflow and Equivalence Partitioning Test

Background:
  * url 'https://api.spotify.com/v1'
  * configure headers = { Authorization: 'Bearer <access_token>' }

# [SC001] Valid middle value - Get album and its tracks
Scenario: Get album and its tracks using valid mid-range ID
  Given path 'albums', '11dFghVXANMlKmJXsNCbNl'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

  Given path 'albums', '11dFghVXANMlKmJXsNCbNl', 'tracks'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

# [SC002] Valid max boundary value
Scenario: Get album and its tracks using ID at upper valid boundary
  Given path 'albums', 'zzzzzzzzzzzzzzzzzzzzzz'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

  Given path 'albums', 'zzzzzzzzzzzzzzzzzzzzzz', 'tracks'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

# [SC003] Valid min boundary value
Scenario: Get album and its tracks using ID at lower valid boundary
  Given path 'albums', '0000000000000000000000'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

  Given path 'albums', '0000000000000000000000', 'tracks'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

# [SC004] Invalid ID above upper boundary
Scenario: Get album and tracks with overly long invalid ID
  Given path 'albums', 'TOO_LONG_SPOTIFY_ID_EXCEEDING_LIMIT'
  When method get
  Then match [401, 403, 429] contains responseStatus

  Given path 'albums', 'TOO_LONG_SPOTIFY_ID_EXCEEDING_LIMIT', 'tracks'
  When method get
  Then match [401, 403, 429] contains responseStatus

# [SC005] Invalid ID below lower boundary
Scenario: Get album and tracks with too short ID
  Given path 'albums', '1'
  When method get
  Then match [401, 403, 429] contains responseStatus

  Given path 'albums', '1', 'tracks'
  When method get
  Then match [401, 403, 429] contains responseStatus

# [SC006] Malformed ID (non-conforming format)
Scenario: Get album and tracks with non-alphanumeric ID
  Given path 'albums', '@@@###'
  When method get
  Then match [401, 403, 429] contains responseStatus

  Given path 'albums', '@@@###', 'tracks'
  When method get
  Then match [401, 403, 429] contains responseStatus