Feature: Spotify 整合測試 - 多工作流程驗證

Background:
  * url baseUrl
  * def validUserId = '123456789'
  * def authHeader = { Authorization: 'Bearer x-access-token' }

# S01 - 建立播放清單並播放中間值 track
Scenario: #S01 - 建立播放清單並播放中間值 track
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

# S02 - 建立最大長度描述的播放清單並播放長名稱歌曲
Scenario: #S02 - 建立最大長度描述的播放清單並播放長名稱歌曲
  Given path '/users/' + validUserId + '/playlists'
  And request { name: '#'.repeat(100), description: '*'.repeat(300), public: true }
  And headers authHeader
  When method POST
  Then status 201
  * def playlistId = response.id

  Given path '/search'
  And params { q: 'Symphony', type: 'track', limit: 1 }
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

# S03 - 儲存歌曲並查看收藏歌曲
Scenario: #S03 - 儲存歌曲並查看收藏歌曲
  Given path '/me/tracks'
  And request [ '3n3Ppam7vgaVa1iaRUc9Lp' ]
  And headers authHeader
  When method PUT
  Then status 200

  Given path '/me/tracks'
  And headers authHeader
  When method GET
  Then status 200
  And match each response[*].id != null

# S04 - 建立播放清單後新增歌曲
Scenario: #S04 - 建立播放清單後新增歌曲
  Given path '/users/' + validUserId + '/playlists'
  And request { name: 'Party Time', description: 'Fun music', public: true }
  And headers authHeader
  When method POST
  Then status 201
  * def playlistId = response.id

  Given path '/playlists/' + playlistId + '/tracks'
  And request { uris: ['spotify:track:3n3Ppam7vgaVa1iaRUc9Lp'] }
  And headers authHeader
  When method POST
  Then status 201