Feature: Spotify 綜合測試 - 整合工作流程與等價類別分析

Background:
  * url 'https://api.spotify.com/v1'
  * def validUserId = '123456789'
  * def authHeader = { Authorization: 'Bearer x-access-token' }


# S01 - 建立播放清單並播放中間值 track
Scenario: 建立播放清單並播放中間值 track
  Given path '/users/' + validUserId + '/playlists'
  And request { name: 'Workout Mix', description: 'For gym', public: true }
  And headers authHeader
  When method POST
  Then status 201
  * def playlistId = response.id

  Given path '/search'
  And params { q: 'Happy', type: 'track', limit: 1 }
  And headers authHeader
  When method GET
  Then status 200
  * def trackUri = response.tracks.items[0].uri

  Given path '/me/player/queue'
  And params { uri: trackUri }
  And headers authHeader
  When method POST
  Then status 204

  Given path '/me/player/play'
  And request { uris: [trackUri] }
  And headers authHeader
  When method PUT
  Then match [200, 202, 204] contains responseStatus


# S02 - 以等價類別測試專輯ID的邊界值
Scenario: 取得中間值專輯及其曲目
  Given path 'albums', '11dFghVXANMlKmJXsNCbNl'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

  Given path 'albums', '11dFghVXANMlKmJXsNCbNl', 'tracks'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

Scenario: 取得最大值邊界的專輯及其曲目
  Given path 'albums', 'zzzzzzzzzzzzzzzzzzzzzz'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

  Given path 'albums', 'zzzzzzzzzzzzzzzzzzzzzz', 'tracks'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus

Scenario: 取得最小值邊界的專輯及其曲目
  Given path 'albums', '0000000000000000000000'
  When method get
  Then match [200, 401, 403, 429] contains responseStatus
