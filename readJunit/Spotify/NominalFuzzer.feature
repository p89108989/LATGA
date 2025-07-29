Feature: 多個 JUnit 轉換為 Karate

Background:
  * url 'https://api.spotify.com/v1/'

# 原始檔案: TestId_10003_get_featured_playlists_20250508053326283.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_10003_get_featured_playlists_20250508053326283 (Order: 10003)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10030_get_playlists_tracks_20250508053326757.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_10030_get_playlists_tracks_20250508053326757 (Order: 10030)
  * def playlist_id = "6356527692"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10043_search_20250508053327215.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_10043_search_20250508053327215 (Order: 10043)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1006_get_a_categories_playlists_20250508053000857.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_1006_get_a_categories_playlists_20250508053000857 (Order: 1006)
  * def category_id = "nonsaturated"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10082_skip_users_playback_to_previous_track_20250508053328150.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_10082_skip_users_playback_to_previous_track_20250508053328150 (Order: 10082)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10104_skip_users_playback_to_next_track_20250508053328597.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_10104_skip_users_playback_to_next_track_20250508053328597 (Order: 10104)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10112_skip_users_playback_to_next_track_20250508053328599.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_10112_skip_users_playback_to_next_track_20250508053328599 (Order: 10112)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10142_add_tracks_to_playlist_20250508053329487.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_10142_add_tracks_to_playlist_20250508053329487 (Order: 10142)
  * def playlist_id = "modi"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1014_get_a_categories_playlists_20250508053000860.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_1014_get_a_categories_playlists_20250508053000860 (Order: 1014)
  * def category_id = "Maja Z L"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10163_create_playlist_20250508053329945.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_10163_create_playlist_20250508053329945 (Order: 10163)
  * def user_id = "38107-0684"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10190_upload_custom_playlist_cover_20250508053330417.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_10190_upload_custom_playlist_cover_20250508053330417 (Order: 10190)
  * def playlist_id = "20:45:40"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10211_pause_a_users_playback_20250508053330871.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_10211_pause_a_users_playback_20250508053330871 (Order: 10211)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10223_save_audiobooks_user_20250508053331328.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_10223_save_audiobooks_user_20250508053331328 (Order: 10223)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10250_seek_to_position_in_currently_playing_track_20250508053331797.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_10250_seek_to_position_in_currently_playing_track_20250508053331797 (Order: 10250)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10257_seek_to_position_in_currently_playing_track_20250508053331798.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_10257_seek_to_position_in_currently_playing_track_20250508053331798 (Order: 10257)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10276_transfer_a_users_playback_20250508053332254.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_10276_transfer_a_users_playback_20250508053332254 (Order: 10276)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10296_toggle_shuffle_for_users_playback_20250508053332702.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_10296_toggle_shuffle_for_users_playback_20250508053332702 (Order: 10296)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10323_save_tracks_user_20250508053333610.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_10323_save_tracks_user_20250508053333610 (Order: 10323)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10339_save_tracks_user_20250508053333616.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_10339_save_tracks_user_20250508053333616 (Order: 10339)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10358_set_repeat_mode_on_users_playback_20250508053334069.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_10358_set_repeat_mode_on_users_playback_20250508053334069 (Order: 10358)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1036_get_a_shows_episodes_20250508053001330.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_1036_get_a_shows_episodes_20250508053001330 (Order: 1036)
  * def id = "530481528"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10397_set_volume_for_users_playback_20250508053334981.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_10397_set_volume_for_users_playback_20250508053334981 (Order: 10397)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1039_get_a_shows_episodes_20250508053001332.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_1039_get_a_shows_episodes_20250508053001332 (Order: 1039)
  * def id = "ec0c:f2b7:7e15:7c84:aa3a:0b75:0aab:e563"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10430_save_episodes_user_20250508053335878.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_10430_save_episodes_user_20250508053335878 (Order: 10430)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10442_follow_artists_users_20250508053336347.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_10442_follow_artists_users_20250508053336347 (Order: 10442)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10453_follow_artists_users_20250508053336351.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_10453_follow_artists_users_20250508053336351 (Order: 10453)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10476_start_a_users_playback_20250508053336809.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_10476_start_a_users_playback_20250508053336809 (Order: 10476)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10495_change_playlist_details_20250508053337270.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_10495_change_playlist_details_20250508053337270 (Order: 10495)
  * def playlist_id = "EAEO"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10510_reorder_or_replace_playlists_tracks_20250508053337717.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_10510_reorder_or_replace_playlists_tracks_20250508053337717 (Order: 10510)
  * def playlist_id = "21:08:37"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10529_unfollow_playlist_20250508053338178.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_10529_unfollow_playlist_20250508053338178 (Order: 10529)
  * def playlist_id = "NDIS R L"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10555_remove_audiobooks_user_20250508053338628.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_10555_remove_audiobooks_user_20250508053338628 (Order: 10555)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10562_remove_albums_user_20250508053339083.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_10562_remove_albums_user_20250508053339083 (Order: 10562)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10584_remove_tracks_user_20250508053339549.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_10584_remove_tracks_user_20250508053339549 (Order: 10584)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_105_get_users_profile_20250508052940113.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_105_get_users_profile_20250508052940113 (Order: 105)
  * def user_id = "NV"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10615_remove_episodes_user_20250508053340017.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_10615_remove_episodes_user_20250508053340017 (Order: 10615)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10636_unfollow_artists_users_20250508053340477.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_10636_unfollow_artists_users_20250508053340477 (Order: 10636)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10663_remove_shows_user_20250508053341395.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_10663_remove_shows_user_20250508053341395 (Order: 10663)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10670_remove_shows_user_20250508053341397.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_10670_remove_shows_user_20250508053341397 (Order: 10670)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10686_get_queue_20250508053341845.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_10686_get_queue_20250508053341845 (Order: 10686)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10718_get_a_users_available_devices_20250508053342305.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_10718_get_a_users_available_devices_20250508053342305 (Order: 10718)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10721_get_recommendation_genres_20250508053342768.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_10721_get_recommendation_genres_20250508053342768 (Order: 10721)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10746_get_current_users_profile_20250508053343225.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_10746_get_current_users_profile_20250508053343225 (Order: 10746)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10772_get_available_markets_20250508053343678.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_10772_get_available_markets_20250508053343678 (Order: 10772)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10782_get_users_profile_20250508053344136.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_10782_get_users_profile_20250508053344136 (Order: 10782)
  * def user_id = "020532574"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10797_get_users_profile_20250508053344142.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_10797_get_users_profile_20250508053344142 (Order: 10797)
  * def user_id = "bonassus"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10815_get_several_audio_features_20250508053344606.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_10815_get_several_audio_features_20250508053344606 (Order: 10815)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10842_get_an_artist_20250508053345515.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_10842_get_an_artist_20250508053345515 (Order: 10842)
  * def id = "skerry"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10851_get_an_artist_20250508053345519.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_10851_get_an_artist_20250508053345519 (Order: 10851)
  * def id = "Oppd£GH2a97oOB"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10879_get_audio_features_20250508053345973.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_10879_get_audio_features_20250508053345973 (Order: 10879)
  * def id = "Coh"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10896_get_an_artists_related_artists_20250508053346429.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_10896_get_an_artists_related_artists_20250508053346429 (Order: 10896)
  * def id = "TlPjHWQcY&a83o2OwDvE"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10919_check_users_saved_tracks_20250508053346897.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_10919_check_users_saved_tracks_20250508053346897 (Order: 10919)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10933_check_users_saved_audiobooks_20250508053347355.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_10933_check_users_saved_audiobooks_20250508053347355 (Order: 10933)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10938_check_users_saved_audiobooks_20250508053347356.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_10938_check_users_saved_audiobooks_20250508053347356 (Order: 10938)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10964_check_users_saved_shows_20250508053348267.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_10964_check_users_saved_shows_20250508053348267 (Order: 10964)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10990_get_playlist_cover_20250508053348730.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_10990_get_playlist_cover_20250508053348730 (Order: 10990)
  * def playlist_id = "LA"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_10999_get_playlist_cover_20250508053348732.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_10999_get_playlist_cover_20250508053348732 (Order: 10999)
  * def playlist_id = "726-89-295"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11011_check_users_saved_albums_20250508053349181.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_11011_check_users_saved_albums_20250508053349181 (Order: 11011)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11033_check_users_saved_episodes_20250508053349633.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_11033_check_users_saved_episodes_20250508053349633 (Order: 11033)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11056_check_current_user_follows_20250508053350076.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_11056_check_current_user_follows_20250508053350076 (Order: 11056)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11071_get_an_album_20250508053350528.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_11071_get_an_album_20250508053350528 (Order: 11071)
  * def id = "k88mUnbYu"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11083_get_users_saved_audiobooks_20250508053350992.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_11083_get_users_saved_audiobooks_20250508053350992 (Order: 11083)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11114_get_track_20250508053351451.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_11114_get_track_20250508053351451 (Order: 11114)
  * def id = "uncandour"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11125_get_multiple_audiobooks_20250508053351913.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_11125_get_multiple_audiobooks_20250508053351913 (Order: 11125)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11142_get_an_audiobook_20250508053352367.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_11142_get_an_audiobook_20250508053352367 (Order: 11142)
  * def id = "intrapericardial"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11158_get_an_audiobook_20250508053352373.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_11158_get_an_audiobook_20250508053352373 (Order: 11158)
  * def id = "G$4"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11175_get_users_saved_shows_20250508053352831.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_11175_get_users_saved_shows_20250508053352831 (Order: 11175)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11198_get_a_show_20250508053353271.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_11198_get_a_show_20250508053353271 (Order: 11198)
  * def id = "VSB"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11210_get_multiple_episodes_20250508053353732.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_11210_get_multiple_episodes_20250508053353732 (Order: 11210)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11233_get_an_episode_20250508053354195.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_11233_get_an_episode_20250508053354195 (Order: 11233)
  * def id = "noncrime"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11243_get_a_chapter_20250508053354645.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_11243_get_a_chapter_20250508053354645 (Order: 11243)
  * def id = "molas"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1126_get_playlists_tracks_20250508053003690.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_1126_get_playlists_tracks_20250508053003690 (Order: 1126)
  * def playlist_id = "4Wq496AAOt1e1RTiiZ"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11282_get_an_artists_top_tracks_20250508053355552.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_11282_get_an_artists_top_tracks_20250508053355552 (Order: 11282)
  * def id = "aa6aca708fbc41a"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11301_get_information_about_the_users_current_playback_20250508053356006.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_11301_get_information_about_the_users_current_playback_20250508053356006 (Order: 11301)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11328_get_multiple_albums_20250508053356464.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_11328_get_multiple_albums_20250508053356464 (Order: 11328)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1133_get_playlists_tracks_20250508053003692.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_1133_get_playlists_tracks_20250508053003692 (Order: 1133)
  * def playlist_id = "ye"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11360_check_if_user_follows_playlist_20250508053356923.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_11360_check_if_user_follows_playlist_20250508053356923 (Order: 11360)
  * def playlist_id = "ve"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11371_get_several_chapters_20250508053357369.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_11371_get_several_chapters_20250508053357369 (Order: 11371)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11388_get_several_tracks_20250508053357829.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_11388_get_several_tracks_20250508053357829 (Order: 11388)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11407_get_multiple_shows_20250508053358299.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_11407_get_multiple_shows_20250508053358299 (Order: 11407)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11438_get_the_users_currently_playing_track_20250508053358757.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_11438_get_the_users_currently_playing_track_20250508053358757 (Order: 11438)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11452_get_followed_20250508053359218.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_11452_get_followed_20250508053359218 (Order: 11452)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11471_get_a_category_20250508053359689.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_11471_get_a_category_20250508053359689 (Order: 11471)
  * def category_id = "O' X"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11491_get_list_users_playlists_20250508053400153.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_11491_get_list_users_playlists_20250508053400153 (Order: 11491)
  * def user_id = "adcon"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11504_get_users_saved_albums_20250508053400596.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_11504_get_users_saved_albums_20250508053400596 (Order: 11504)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11522_get_users_top_tracks_20250508053401056.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_11522_get_users_top_tracks_20250508053401056 (Order: 11522)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11538_get_users_top_tracks_20250508053401058.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_11538_get_users_top_tracks_20250508053401058 (Order: 11538)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11550_get_users_top_artists_20250508053401508.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_11550_get_users_top_artists_20250508053401508 (Order: 11550)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11581_get_new_releases_20250508053402435.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_11581_get_new_releases_20250508053402435 (Order: 11581)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11590_get_new_releases_20250508053402437.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_11590_get_new_releases_20250508053402437 (Order: 11590)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11611_get_users_saved_tracks_20250508053402900.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_11611_get_users_saved_tracks_20250508053402900 (Order: 11611)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11631_get_users_saved_episodes_20250508053403353.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_11631_get_users_saved_episodes_20250508053403353 (Order: 11631)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11653_get_categories_20250508053403800.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_11653_get_categories_20250508053403800 (Order: 11653)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11670_get_playlist_20250508053404254.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_11670_get_playlist_20250508053404254 (Order: 11670)
  * def playlist_id = "0tO2Qa"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11684_get_a_categories_playlists_20250508053404709.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_11684_get_a_categories_playlists_20250508053404709 (Order: 11684)
  * def category_id = "1331:a20c:93d4:436d:8837:8669:49b6:8f89"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11708_get_a_shows_episodes_20250508053405163.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_11708_get_a_shows_episodes_20250508053405163 (Order: 11708)
  * def id = "foam-flanked"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11718_get_a_shows_episodes_20250508053405167.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_11718_get_a_shows_episodes_20250508053405167 (Order: 11718)
  * def id = "dup"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1172_get_recommendations_20250508053004653.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_1172_get_recommendations_20250508053004653 (Order: 1172)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1174_get_recommendations_20250508053004655.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_1174_get_recommendations_20250508053004655 (Order: 1174)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11768_get_an_artists_albums_20250508053406547.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_11768_get_an_artists_albums_20250508053406547 (Order: 11768)
  * def id = "Wolverton"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11795_get_featured_playlists_20250508053407005.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_11795_get_featured_playlists_20250508053407005 (Order: 11795)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11802_get_playlists_tracks_20250508053407457.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_11802_get_playlists_tracks_20250508053407457 (Order: 11802)
  * def playlist_id = "Beeson"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11826_search_20250508053407912.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_11826_search_20250508053407912 (Order: 11826)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11851_get_recommendations_20250508053408400.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_11851_get_recommendations_20250508053408400 (Order: 11851)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11869_skip_users_playback_to_previous_track_20250508053408860.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_11869_skip_users_playback_to_previous_track_20250508053408860 (Order: 11869)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11881_skip_users_playback_to_next_track_20250508053409327.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_11881_skip_users_playback_to_next_track_20250508053409327 (Order: 11881)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11907_add_to_queue_20250508053409781.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_11907_add_to_queue_20250508053409781 (Order: 11907)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11925_add_tracks_to_playlist_20250508053410224.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_11925_add_tracks_to_playlist_20250508053410224 (Order: 11925)
  * def playlist_id = "01:41:49"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11945_create_playlist_20250508053410673.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_11945_create_playlist_20250508053410673 (Order: 11945)
  * def user_id = "Iardanus"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11950_create_playlist_20250508053410675.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_11950_create_playlist_20250508053410675 (Order: 11950)
  * def user_id = "5"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11964_upload_custom_playlist_cover_20250508053411118.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_11964_upload_custom_playlist_cover_20250508053411118 (Order: 11964)
  * def playlist_id = "Sacheverell"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11993_pause_a_users_playback_20250508053411565.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_11993_pause_a_users_playback_20250508053411565 (Order: 11993)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_11_get_queue_20250508052937167.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_11_get_queue_20250508052937167 (Order: 11)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12019_save_audiobooks_user_20250508053412024.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_12019_save_audiobooks_user_20250508053412024 (Order: 12019)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12040_seek_to_position_in_currently_playing_track_20250508053412481.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_12040_seek_to_position_in_currently_playing_track_20250508053412481 (Order: 12040)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12061_toggle_shuffle_for_users_playback_20250508053413381.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_12061_toggle_shuffle_for_users_playback_20250508053413381 (Order: 12061)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12071_toggle_shuffle_for_users_playback_20250508053413383.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_12071_toggle_shuffle_for_users_playback_20250508053413383 (Order: 12071)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12094_follow_playlist_20250508053413833.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_12094_follow_playlist_20250508053413833 (Order: 12094)
  * def playlist_id = "B V "
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12121_set_repeat_mode_on_users_playback_20250508053414733.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_12121_set_repeat_mode_on_users_playback_20250508053414733 (Order: 12121)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1213_skip_users_playback_to_next_track_20250508053005597.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_1213_skip_users_playback_to_next_track_20250508053005597 (Order: 1213)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12155_save_shows_user_20250508053415188.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_12155_save_shows_user_20250508053415188 (Order: 12155)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12175_set_volume_for_users_playback_20250508053415625.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_12175_set_volume_for_users_playback_20250508053415625 (Order: 12175)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12184_save_albums_user_20250508053416069.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_12184_save_albums_user_20250508053416069 (Order: 12184)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12210_save_episodes_user_20250508053416524.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_12210_save_episodes_user_20250508053416524 (Order: 12210)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12222_follow_artists_users_20250508053416978.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_12222_follow_artists_users_20250508053416978 (Order: 12222)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1223_add_to_queue_20250508053006054.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_1223_add_to_queue_20250508053006054 (Order: 1223)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12267_change_playlist_details_20250508053417897.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_12267_change_playlist_details_20250508053417897 (Order: 12267)
  * def playlist_id = "Zolly"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1227_add_to_queue_20250508053006055.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_1227_add_to_queue_20250508053006055 (Order: 1227)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_122_get_several_audio_features_20250508052940585.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_122_get_several_audio_features_20250508052940585 (Order: 122)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12320_unfollow_playlist_20250508053418794.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_12320_unfollow_playlist_20250508053418794 (Order: 12320)
  * def playlist_id = "JCA "
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12337_remove_audiobooks_user_20250508053419249.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_12337_remove_audiobooks_user_20250508053419249 (Order: 12337)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12348_remove_albums_user_20250508053419704.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_12348_remove_albums_user_20250508053419704 (Order: 12348)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12363_remove_tracks_user_20250508053420148.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_12363_remove_tracks_user_20250508053420148 (Order: 12363)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12384_remove_episodes_user_20250508053420597.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_12384_remove_episodes_user_20250508053420597 (Order: 12384)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12409_unfollow_artists_users_20250508053421058.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_12409_unfollow_artists_users_20250508053421058 (Order: 12409)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1241_add_tracks_to_playlist_20250508053006514.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_1241_add_tracks_to_playlist_20250508053006514 (Order: 1241)
  * def playlist_id = "autointoxication"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12435_remove_tracks_playlist_20250508053421519.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_12435_remove_tracks_playlist_20250508053421519 (Order: 12435)
  * def playlist_id = "081-336370"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12451_remove_shows_user_20250508053421966.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_12451_remove_shows_user_20250508053421966 (Order: 12451)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12468_get_queue_20250508053422423.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_12468_get_queue_20250508053422423 (Order: 12468)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_124_get_several_audio_features_20250508052940586.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_124_get_several_audio_features_20250508052940586 (Order: 124)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12512_get_recommendation_genres_20250508053423323.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_12512_get_recommendation_genres_20250508053423323 (Order: 12512)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12527_get_current_users_profile_20250508053423773.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_12527_get_current_users_profile_20250508053423773 (Order: 12527)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12555_get_available_markets_20250508053424232.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_12555_get_available_markets_20250508053424232 (Order: 12555)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12565_get_users_profile_20250508053424678.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_12565_get_users_profile_20250508053424678 (Order: 12565)
  * def user_id = "deerlike"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12585_get_several_audio_features_20250508053425125.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_12585_get_several_audio_features_20250508053425125 (Order: 12585)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12597_get_several_audio_features_20250508053425129.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_12597_get_several_audio_features_20250508053425129 (Order: 12597)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12611_get_multiple_artists_20250508053425577.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_12611_get_multiple_artists_20250508053425577 (Order: 12611)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12639_get_an_artist_20250508053426027.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_12639_get_an_artist_20250508053426027 (Order: 12639)
  * def id = "82k59cE5Yy9e_"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12648_get_audio_features_20250508053426492.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_12648_get_audio_features_20250508053426492 (Order: 12648)
  * def id = "K2"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1266_create_playlist_20250508053007192.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_1266_create_playlist_20250508053007192 (Order: 1266)
  * def user_id = "racer"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12684_check_users_saved_tracks_20250508053427385.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_12684_check_users_saved_tracks_20250508053427385 (Order: 12684)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1270_create_playlist_20250508053007195.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_1270_create_playlist_20250508053007195 (Order: 1270)
  * def user_id = "http:rxjlxff.x.gov"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12727_get_audio_analysis_20250508053428304.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_12727_get_audio_analysis_20250508053428304 (Order: 12727)
  * def id = "s"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12743_check_users_saved_shows_20250508053428767.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_12743_check_users_saved_shows_20250508053428767 (Order: 12743)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12763_get_playlist_cover_20250508053429215.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_12763_get_playlist_cover_20250508053429215 (Order: 12763)
  * def playlist_id = "n"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12777_get_playlist_cover_20250508053429220.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_12777_get_playlist_cover_20250508053429220 (Order: 12777)
  * def playlist_id = "7b3b2551-d6d3-47ec-ad8e-ddce5747c599"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12798_check_users_saved_albums_20250508053429688.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_12798_check_users_saved_albums_20250508053429688 (Order: 12798)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12826_check_current_user_follows_20250508053430612.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_12826_check_current_user_follows_20250508053430612 (Order: 12826)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12843_get_an_album_20250508053431076.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_12843_get_an_album_20250508053431076 (Order: 12843)
  * def id = "Pasco"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12859_get_an_album_20250508053431081.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_12859_get_an_album_20250508053431081 (Order: 12859)
  * def id = "http:zasnyf.wzwpr.ch"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12878_get_users_saved_audiobooks_20250508053431535.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_12878_get_users_saved_audiobooks_20250508053431535 (Order: 12878)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12886_get_track_20250508053431977.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_12886_get_track_20250508053431977 (Order: 12886)
  * def id = "unsinuously"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12902_get_multiple_audiobooks_20250508053432428.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_12902_get_multiple_audiobooks_20250508053432428 (Order: 12902)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12919_get_multiple_audiobooks_20250508053432433.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_12919_get_multiple_audiobooks_20250508053432433 (Order: 12919)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12952_get_users_saved_shows_20250508053433342.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_12952_get_users_saved_shows_20250508053433342 (Order: 12952)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12960_get_users_saved_shows_20250508053433343.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_12960_get_users_saved_shows_20250508053433343 (Order: 12960)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12980_get_a_show_20250508053433794.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_12980_get_a_show_20250508053433794 (Order: 12980)
  * def id = "OWd8L?gexR
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_12994_get_multiple_episodes_20250508053434247.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_12994_get_multiple_episodes_20250508053434247 (Order: 12994)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13023_get_a_chapter_20250508053435148.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_13023_get_a_chapter_20250508053435148 (Order: 13023)
  * def id = "tappets"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13039_get_a_chapter_20250508053435153.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_13039_get_a_chapter_20250508053435153 (Order: 13039)
  * def id = "sole-commissioned"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13053_get_a_list_of_current_users_playlists_20250508053435605.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_13053_get_a_list_of_current_users_playlists_20250508053435605 (Order: 13053)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13061_get_an_artists_top_tracks_20250508053436049.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_13061_get_an_artists_top_tracks_20250508053436049 (Order: 13061)
  * def id = "Stokes"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1308_pause_a_users_playback_20250508053008106.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_1308_pause_a_users_playback_20250508053008106 (Order: 1308)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1309_pause_a_users_playback_20250508053008106.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_1309_pause_a_users_playback_20250508053008106 (Order: 1309)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13116_get_multiple_albums_20250508053436963.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_13116_get_multiple_albums_20250508053436963 (Order: 13116)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13136_check_if_user_follows_playlist_20250508053437414.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_13136_check_if_user_follows_playlist_20250508053437414 (Order: 13136)
  * def playlist_id = "5963565250"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13169_get_several_tracks_20250508053438337.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_13169_get_several_tracks_20250508053438337 (Order: 13169)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13180_get_several_tracks_20250508053438340.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_13180_get_several_tracks_20250508053438340 (Order: 13180)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13198_get_multiple_shows_20250508053438800.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_13198_get_multiple_shows_20250508053438800 (Order: 13198)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13221_get_followed_20250508053439709.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_13221_get_followed_20250508053439709 (Order: 13221)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13228_get_followed_20250508053439710.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_13228_get_followed_20250508053439710 (Order: 13228)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13247_get_a_category_20250508053440170.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_13247_get_a_category_20250508053440170 (Order: 13247)
  * def category_id = "EV"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13267_get_list_users_playlists_20250508053440613.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_13267_get_list_users_playlists_20250508053440613 (Order: 13267)
  * def user_id = "deerlike"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13287_get_users_saved_albums_20250508053441058.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_13287_get_users_saved_albums_20250508053441058 (Order: 13287)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13304_get_users_top_tracks_20250508053441505.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_13304_get_users_top_tracks_20250508053441505 (Order: 13304)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13318_get_users_top_tracks_20250508053441507.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_13318_get_users_top_tracks_20250508053441507 (Order: 13318)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13331_get_users_top_artists_20250508053441953.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_13331_get_users_top_artists_20250508053441953 (Order: 13331)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13355_get_recently_played_20250508053442398.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_13355_get_recently_played_20250508053442398 (Order: 13355)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13368_get_new_releases_20250508053442849.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_13368_get_new_releases_20250508053442849 (Order: 13368)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13387_get_users_saved_tracks_20250508053443309.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_13387_get_users_saved_tracks_20250508053443309 (Order: 13387)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13405_get_users_saved_episodes_20250508053443763.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_13405_get_users_saved_episodes_20250508053443763 (Order: 13405)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13433_get_categories_20250508053444239.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_13433_get_categories_20250508053444239 (Order: 13433)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13452_get_playlist_20250508053444689.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_13452_get_playlist_20250508053444689 (Order: 13452)
  * def playlist_id = "http:qp.io4291871376"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13465_get_a_categories_playlists_20250508053445147.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_13465_get_a_categories_playlists_20250508053445147 (Order: 13465)
  * def category_id = "vypéMU"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13485_get_a_shows_episodes_20250508053445594.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_13485_get_a_shows_episodes_20250508053445594 (Order: 13485)
  * def id = "6bd673bc-bba7-49ff-90ae-acf98a110e31"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13500_get_a_shows_episodes_20250508053445597.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_13500_get_a_shows_episodes_20250508053445597 (Order: 13500)
  * def id = "isotropism"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13513_get_audiobook_chapters_20250508053446032.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_13513_get_audiobook_chapters_20250508053446032 (Order: 13513)
  * def id = "C"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13531_get_an_albums_tracks_20250508053446481.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_13531_get_an_albums_tracks_20250508053446481 (Order: 13531)
  * def id = "BSME"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13562_get_featured_playlists_20250508053447373.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_13562_get_featured_playlists_20250508053447373 (Order: 13562)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13568_get_featured_playlists_20250508053447374.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_13568_get_featured_playlists_20250508053447374 (Order: 13568)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13598_get_playlists_tracks_20250508053447829.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_13598_get_playlists_tracks_20250508053447829 (Order: 13598)
  * def playlist_id = "nonoccult y"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13618_search_20250508053448282.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_13618_search_20250508053448282 (Order: 13618)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13628_get_recommendations_20250508053448744.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_13628_get_recommendations_20250508053448744 (Order: 13628)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13655_skip_users_playback_to_previous_track_20250508053449202.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_13655_skip_users_playback_to_previous_track_20250508053449202 (Order: 13655)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13666_skip_users_playback_to_next_track_20250508053449644.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_13666_skip_users_playback_to_next_track_20250508053449644 (Order: 13666)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13690_add_to_queue_20250508053450107.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_13690_add_to_queue_20250508053450107 (Order: 13690)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1369_transfer_a_users_playback_20250508053009480.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_1369_transfer_a_users_playback_20250508053009480 (Order: 1369)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1370_transfer_a_users_playback_20250508053009480.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_1370_transfer_a_users_playback_20250508053009480 (Order: 1370)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13733_create_playlist_20250508053450999.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_13733_create_playlist_20250508053450999 (Order: 13733)
  * def user_id = "EV"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13746_upload_custom_playlist_cover_20250508053451456.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_13746_upload_custom_playlist_cover_20250508053451456 (Order: 13746)
  * def playlist_id = "R"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1376_transfer_a_users_playback_20250508053009482.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_1376_transfer_a_users_playback_20250508053009482 (Order: 1376)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13798_save_audiobooks_user_20250508053452351.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_13798_save_audiobooks_user_20250508053452351 (Order: 13798)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13803_seek_to_position_in_currently_playing_track_20250508053452804.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_13803_seek_to_position_in_currently_playing_track_20250508053452804 (Order: 13803)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1382_toggle_shuffle_for_users_playback_20250508053009946.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_1382_toggle_shuffle_for_users_playback_20250508053009946 (Order: 1382)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13842_toggle_shuffle_for_users_playback_20250508053453707.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_13842_toggle_shuffle_for_users_playback_20250508053453707 (Order: 13842)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13857_toggle_shuffle_for_users_playback_20250508053453709.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_13857_toggle_shuffle_for_users_playback_20250508053453709 (Order: 13857)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13887_save_tracks_user_20250508053454613.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_13887_save_tracks_user_20250508053454613 (Order: 13887)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13895_save_tracks_user_20250508053454616.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_13895_save_tracks_user_20250508053454616 (Order: 13895)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13920_set_repeat_mode_on_users_playback_20250508053455066.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_13920_set_repeat_mode_on_users_playback_20250508053455066 (Order: 13920)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13930_save_shows_user_20250508053455518.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_13930_save_shows_user_20250508053455518 (Order: 13930)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13957_set_volume_for_users_playback_20250508053455963.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_13957_set_volume_for_users_playback_20250508053455963 (Order: 13957)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13967_save_albums_user_20250508053456407.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_13967_save_albums_user_20250508053456407 (Order: 13967)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_13983_save_episodes_user_20250508053456851.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_13983_save_episodes_user_20250508053456851 (Order: 13983)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14012_follow_artists_users_20250508053457305.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_14012_follow_artists_users_20250508053457305 (Order: 14012)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14030_start_a_users_playback_20250508053457750.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_14030_start_a_users_playback_20250508053457750 (Order: 14030)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14039_start_a_users_playback_20250508053457752.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_14039_start_a_users_playback_20250508053457752 (Order: 14039)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14065_reorder_or_replace_playlists_tracks_20250508053458657.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_14065_reorder_or_replace_playlists_tracks_20250508053458657 (Order: 14065)
  * def playlist_id = "http:erqmrgonv.t.co.ukptochology"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14076_reorder_or_replace_playlists_tracks_20250508053458661.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_14076_reorder_or_replace_playlists_tracks_20250508053458661 (Order: 14076)
  * def playlist_id = "pavy"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14093_unfollow_playlist_20250508053459112.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_14093_unfollow_playlist_20250508053459112 (Order: 14093)
  * def playlist_id = "y@gmail.com"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14118_remove_audiobooks_user_20250508053459545.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_14118_remove_audiobooks_user_20250508053459545 (Order: 14118)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14138_remove_albums_user_20250508053459994.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_14138_remove_albums_user_20250508053459994 (Order: 14138)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1414_follow_playlist_20250508053010417.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_1414_follow_playlist_20250508053010417 (Order: 1414)
  * def playlist_id = "misconception's"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14167_remove_episodes_user_20250508053500890.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_14167_remove_episodes_user_20250508053500890 (Order: 14167)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14180_remove_episodes_user_20250508053500893.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_14180_remove_episodes_user_20250508053500893 (Order: 14180)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14196_unfollow_artists_users_20250508053501347.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_14196_unfollow_artists_users_20250508053501347 (Order: 14196)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14216_remove_tracks_playlist_20250508053501795.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_14216_remove_tracks_playlist_20250508053501795 (Order: 14216)
  * def playlist_id = "+9861-14641614887"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14236_remove_shows_user_20250508053502243.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_14236_remove_shows_user_20250508053502243 (Order: 14236)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14257_get_queue_20250508053502692.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_14257_get_queue_20250508053502692 (Order: 14257)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14276_get_a_users_available_devices_20250508053503152.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_14276_get_a_users_available_devices_20250508053503152 (Order: 14276)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_142_get_multiple_artists_20250508052941054.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_142_get_multiple_artists_20250508052941054 (Order: 142)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14308_get_current_users_profile_20250508053504066.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_14308_get_current_users_profile_20250508053504066 (Order: 14308)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14329_get_available_markets_20250508053504521.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_14329_get_available_markets_20250508053504521 (Order: 14329)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1434_save_tracks_user_20250508053010880.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_1434_save_tracks_user_20250508053010880 (Order: 1434)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1435_save_tracks_user_20250508053010880.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_1435_save_tracks_user_20250508053010880 (Order: 1435)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14389_get_multiple_artists_20250508053505881.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_14389_get_multiple_artists_20250508053505881 (Order: 14389)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14398_get_multiple_artists_20250508053505883.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_14398_get_multiple_artists_20250508053505883 (Order: 14398)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14423_get_audio_features_20250508053506784.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_14423_get_audio_features_20250508053506784 (Order: 14423)
  * def id = "ESMD"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14431_get_audio_features_20250508053506787.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_14431_get_audio_features_20250508053506787 (Order: 14431)
  * def id = "snowless"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14463_check_users_saved_tracks_20250508053507689.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_14463_check_users_saved_tracks_20250508053507689 (Order: 14463)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14474_check_users_saved_tracks_20250508053507692.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_14474_check_users_saved_tracks_20250508053507692 (Order: 14474)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14497_check_users_saved_audiobooks_20250508053508158.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_14497_check_users_saved_audiobooks_20250508053508158 (Order: 14497)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14504_get_audio_analysis_20250508053508606.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_14504_get_audio_analysis_20250508053508606 (Order: 14504)
  * def id = "H"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14530_check_users_saved_shows_20250508053509088.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_14530_check_users_saved_shows_20250508053509088 (Order: 14530)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14555_get_playlist_cover_20250508053509546.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_14555_get_playlist_cover_20250508053509546 (Order: 14555)
  * def playlist_id = "ad1cfbc9-4ed2-4b0c-8797-1f45a2e74a51"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14570_check_users_saved_albums_20250508053510009.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_14570_check_users_saved_albums_20250508053510009 (Order: 14570)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14582_check_users_saved_episodes_20250508053510469.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_14582_check_users_saved_episodes_20250508053510469 (Order: 14582)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14598_check_users_saved_episodes_20250508053510473.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_14598_check_users_saved_episodes_20250508053510473 (Order: 14598)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14610_check_current_user_follows_20250508053510936.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_14610_check_current_user_follows_20250508053510936 (Order: 14610)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14642_get_users_saved_audiobooks_20250508053511832.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_14642_get_users_saved_audiobooks_20250508053511832 (Order: 14642)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14652_get_users_saved_audiobooks_20250508053511833.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_14652_get_users_saved_audiobooks_20250508053511833 (Order: 14652)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14678_get_track_20250508053512285.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_14678_get_track_20250508053512285 (Order: 14678)
  * def id = "00112764145"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14693_get_multiple_audiobooks_20250508053512731.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_14693_get_multiple_audiobooks_20250508053512731 (Order: 14693)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14709_get_an_audiobook_20250508053513199.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_14709_get_an_audiobook_20250508053513199 (Order: 14709)
  * def id = "BCE"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14727_get_users_saved_shows_20250508053513654.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_14727_get_users_saved_shows_20250508053513654 (Order: 14727)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14744_get_a_show_20250508053514103.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_14744_get_a_show_20250508053514103 (Order: 14744)
  * def id = "20190910"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14771_get_multiple_episodes_20250508053514553.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_14771_get_multiple_episodes_20250508053514553 (Order: 14771)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14778_get_multiple_episodes_20250508053514554.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_14778_get_multiple_episodes_20250508053514554 (Order: 14778)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14806_get_a_chapter_20250508053515461.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_14806_get_a_chapter_20250508053515461 (Order: 14806)
  * def id = "thae"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14822_get_a_list_of_current_users_playlists_20250508053515910.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_14822_get_a_list_of_current_users_playlists_20250508053515910 (Order: 14822)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14842_get_an_artists_top_tracks_20250508053516357.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_14842_get_an_artists_top_tracks_20250508053516357 (Order: 14842)
  * def id = "ostiolate"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14859_get_an_artists_top_tracks_20250508053516362.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_14859_get_an_artists_top_tracks_20250508053516362 (Order: 14859)
  * def id = "amaga"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14863_get_information_about_the_users_current_playback_20250508053516808.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_14863_get_information_about_the_users_current_playback_20250508053516808 (Order: 14863)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14885_get_multiple_albums_20250508053517262.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_14885_get_multiple_albums_20250508053517262 (Order: 14885)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14912_check_if_user_follows_playlist_20250508053517712.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_14912_check_if_user_follows_playlist_20250508053517712 (Order: 14912)
  * def playlist_id = "leeboard"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14923_get_several_chapters_20250508053518165.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_14923_get_several_chapters_20250508053518165 (Order: 14923)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14940_get_several_chapters_20250508053518171.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_14940_get_several_chapters_20250508053518171 (Order: 14940)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1495_set_volume_for_users_playback_20250508053012269.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_1495_set_volume_for_users_playback_20250508053012269 (Order: 1495)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14984_get_the_users_currently_playing_track_20250508053519558.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_14984_get_the_users_currently_playing_track_20250508053519558 (Order: 14984)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_14995_get_the_users_currently_playing_track_20250508053519561.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_14995_get_the_users_currently_playing_track_20250508053519561 (Order: 14995)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1500_set_volume_for_users_playback_20250508053012271.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_1500_set_volume_for_users_playback_20250508053012271 (Order: 1500)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15040_get_a_category_20250508053520495.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_15040_get_a_category_20250508053520495 (Order: 15040)
  * def category_id = "117-93-290"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15050_get_list_users_playlists_20250508053520947.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_15050_get_list_users_playlists_20250508053520947 (Order: 15050)
  * def user_id = "ACP"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1505_save_albums_user_20250508053012732.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_1505_save_albums_user_20250508053012732 (Order: 1505)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15087_get_users_top_tracks_20250508053521847.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_15087_get_users_top_tracks_20250508053521847 (Order: 15087)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15101_get_users_top_artists_20250508053522304.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_15101_get_users_top_artists_20250508053522304 (Order: 15101)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15114_get_users_top_artists_20250508053522306.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_15114_get_users_top_artists_20250508053522306 (Order: 15114)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15133_get_recently_played_20250508053522764.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_15133_get_recently_played_20250508053522764 (Order: 15133)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15165_get_users_saved_tracks_20250508053523667.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15165_get_users_saved_tracks_20250508053523667 (Order: 15165)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15176_get_users_saved_tracks_20250508053523669.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15176_get_users_saved_tracks_20250508053523669 (Order: 15176)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15190_get_users_saved_episodes_20250508053524118.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_15190_get_users_saved_episodes_20250508053524118 (Order: 15190)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15213_get_categories_20250508053524572.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_15213_get_categories_20250508053524572 (Order: 15213)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15237_get_playlist_20250508053525031.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_15237_get_playlist_20250508053525031 (Order: 15237)
  * def playlist_id = "21:07:16"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15249_get_a_categories_playlists_20250508053525493.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_15249_get_a_categories_playlists_20250508053525493 (Order: 15249)
  * def category_id = "heelplat"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1526_save_episodes_user_20250508053013190.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_1526_save_episodes_user_20250508053013190 (Order: 1526)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15291_get_audiobook_chapters_20250508053526409.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_15291_get_audiobook_chapters_20250508053526409 (Order: 15291)
  * def id = "Nitrobacteriaceae"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15304_get_an_albums_tracks_20250508053526874.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_15304_get_an_albums_tracks_20250508053526874 (Order: 15304)
  * def id = "DZ"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15327_get_an_artists_albums_20250508053527324.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_15327_get_an_artists_albums_20250508053527324 (Order: 15327)
  * def id = "zZvt980MdDxrY1I="
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15339_get_an_artists_albums_20250508053527328.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_15339_get_an_artists_albums_20250508053527328 (Order: 15339)
  * def id = "http:wi.myfrsyvm.co.ukunguarding"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15351_get_featured_playlists_20250508053527773.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_15351_get_featured_playlists_20250508053527773 (Order: 15351)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15367_get_playlists_tracks_20250508053528221.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_15367_get_playlists_tracks_20250508053528221 (Order: 15367)
  * def playlist_id = "PK37 484S 3789 1172 4452 1417"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1538_save_episodes_user_20250508053013194.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_1538_save_episodes_user_20250508053013194 (Order: 1538)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15403_get_recommendations_20250508053529121.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_15403_get_recommendations_20250508053529121 (Order: 15403)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15429_skip_users_playback_to_previous_track_20250508053529591.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_15429_skip_users_playback_to_previous_track_20250508053529591 (Order: 15429)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15439_skip_users_playback_to_previous_track_20250508053529593.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_15439_skip_users_playback_to_previous_track_20250508053529593 (Order: 15439)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15468_add_to_queue_20250508053530486.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_15468_add_to_queue_20250508053530486 (Order: 15468)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15480_add_to_queue_20250508053530489.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_15480_add_to_queue_20250508053530489 (Order: 15480)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15501_create_playlist_20250508053531409.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_15501_create_playlist_20250508053531409 (Order: 15501)
  * def user_id = "individualizingly"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15519_create_playlist_20250508053531417.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_15519_create_playlist_20250508053531417 (Order: 15519)
  * def user_id = "yellowroot"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15542_pause_a_users_playback_20250508053532311.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_15542_pause_a_users_playback_20250508053532311 (Order: 15542)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15548_pause_a_users_playback_20250508053532312.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_15548_pause_a_users_playback_20250508053532312 (Order: 15548)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15576_save_audiobooks_user_20250508053532783.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_15576_save_audiobooks_user_20250508053532783 (Order: 15576)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15589_seek_to_position_in_currently_playing_track_20250508053533232.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_15589_seek_to_position_in_currently_playing_track_20250508053533232 (Order: 15589)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15601_transfer_a_users_playback_20250508053533684.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_15601_transfer_a_users_playback_20250508053533684 (Order: 15601)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15629_toggle_shuffle_for_users_playback_20250508053534160.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_15629_toggle_shuffle_for_users_playback_20250508053534160 (Order: 15629)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15653_follow_playlist_20250508053534620.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_15653_follow_playlist_20250508053534620 (Order: 15653)
  * def playlist_id = "D"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15661_save_tracks_user_20250508053535084.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15661_save_tracks_user_20250508053535084 (Order: 15661)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15680_save_tracks_user_20250508053535090.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15680_save_tracks_user_20250508053535090 (Order: 15680)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15705_save_shows_user_20250508053535991.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_15705_save_shows_user_20250508053535991 (Order: 15705)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15712_save_shows_user_20250508053535993.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_15712_save_shows_user_20250508053535993 (Order: 15712)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15735_set_volume_for_users_playback_20250508053536455.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_15735_set_volume_for_users_playback_20250508053536455 (Order: 15735)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15748_save_albums_user_20250508053536904.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_15748_save_albums_user_20250508053536904 (Order: 15748)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15762_save_episodes_user_20250508053537359.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_15762_save_episodes_user_20250508053537359 (Order: 15762)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15786_follow_artists_users_20250508053537812.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_15786_follow_artists_users_20250508053537812 (Order: 15786)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15815_start_a_users_playback_20250508053538269.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_15815_start_a_users_playback_20250508053538269 (Order: 15815)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15821_change_playlist_details_20250508053538710.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_15821_change_playlist_details_20250508053538710 (Order: 15821)
  * def playlist_id = "wych"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15837_change_playlist_details_20250508053538714.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_15837_change_playlist_details_20250508053538714 (Order: 15837)
  * def playlist_id = "Prussianization"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15869_unfollow_playlist_20250508053539641.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_15869_unfollow_playlist_20250508053539641 (Order: 15869)
  * def playlist_id = "9831476577"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15880_unfollow_playlist_20250508053539643.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_15880_unfollow_playlist_20250508053539643 (Order: 15880)
  * def playlist_id = "21:58:07"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_158_get_multiple_artists_20250508052941063.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_158_get_multiple_artists_20250508052941063 (Order: 158)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15923_remove_tracks_user_20250508053541019.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15923_remove_tracks_user_20250508053541019 (Order: 15923)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15934_remove_tracks_user_20250508053541023.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_15934_remove_tracks_user_20250508053541023 (Order: 15934)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15956_remove_episodes_user_20250508053541473.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_15956_remove_episodes_user_20250508053541473 (Order: 15956)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15978_unfollow_artists_users_20250508053541933.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_15978_unfollow_artists_users_20250508053541933 (Order: 15978)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15995_remove_tracks_playlist_20250508053542392.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_15995_remove_tracks_playlist_20250508053542392 (Order: 15995)
  * def playlist_id = "tuberculinisation"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_15999_remove_tracks_playlist_20250508053542394.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_15999_remove_tracks_playlist_20250508053542394 (Order: 15999)
  * def playlist_id = "antimethodicalness"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16024_get_queue_20250508053543332.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_16024_get_queue_20250508053543332 (Order: 16024)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16037_get_queue_20250508053543334.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_16037_get_queue_20250508053543334 (Order: 16037)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16061_get_recommendation_genres_20250508053544230.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_16061_get_recommendation_genres_20250508053544230 (Order: 16061)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16084_get_current_users_profile_20250508053544684.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_16084_get_current_users_profile_20250508053544684 (Order: 16084)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16092_get_current_users_profile_20250508053544687.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_16092_get_current_users_profile_20250508053544687 (Order: 16092)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16103_get_available_markets_20250508053545137.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_16103_get_available_markets_20250508053545137 (Order: 16103)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16133_get_users_profile_20250508053545582.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_16133_get_users_profile_20250508053545582 (Order: 16133)
  * def user_id = "gCGn7AdBE"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16149_get_several_audio_features_20250508053546028.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_16149_get_several_audio_features_20250508053546028 (Order: 16149)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16173_get_multiple_artists_20250508053546483.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_16173_get_multiple_artists_20250508053546483 (Order: 16173)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16190_get_an_artist_20250508053546940.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_16190_get_an_artist_20250508053546940 (Order: 16190)
  * def id = "+8354-55284007977"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16201_get_audio_features_20250508053547407.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_16201_get_audio_features_20250508053547407 (Order: 16201)
  * def id = "pY2Ebf@5"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16223_get_an_artists_related_artists_20250508053547875.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_16223_get_an_artists_related_artists_20250508053547875 (Order: 16223)
  * def id = "Schroeder"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16239_get_an_artists_related_artists_20250508053547880.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_16239_get_an_artists_related_artists_20250508053547880 (Order: 16239)
  * def id = "leeboard"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16248_check_users_saved_tracks_20250508053548335.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_16248_check_users_saved_tracks_20250508053548335 (Order: 16248)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16274_check_users_saved_audiobooks_20250508053548784.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_16274_check_users_saved_audiobooks_20250508053548784 (Order: 16274)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16295_get_audio_analysis_20250508053549268.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_16295_get_audio_analysis_20250508053549268 (Order: 16295)
  * def id = "coverages"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16319_check_users_saved_shows_20250508053549731.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_16319_check_users_saved_shows_20250508053549731 (Order: 16319)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1631_unfollow_playlist_20250508053015511.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_1631_unfollow_playlist_20250508053015511 (Order: 1631)
  * def playlist_id = "tattered"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16348_check_users_saved_albums_20250508053550631.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_16348_check_users_saved_albums_20250508053550631 (Order: 16348)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16359_check_users_saved_albums_20250508053550642.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_16359_check_users_saved_albums_20250508053550642 (Order: 16359)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16382_check_current_user_follows_20250508053551571.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_16382_check_current_user_follows_20250508053551571 (Order: 16382)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16399_check_current_user_follows_20250508053551576.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_16399_check_current_user_follows_20250508053551576 (Order: 16399)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16427_get_users_saved_audiobooks_20250508053552476.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_16427_get_users_saved_audiobooks_20250508053552476 (Order: 16427)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16431_get_users_saved_audiobooks_20250508053552477.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_16431_get_users_saved_audiobooks_20250508053552477 (Order: 16431)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16457_get_track_20250508053552939.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_16457_get_track_20250508053552939 (Order: 16457)
  * def id = "Pasco"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16469_get_multiple_audiobooks_20250508053553386.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_16469_get_multiple_audiobooks_20250508053553386 (Order: 16469)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16489_get_an_audiobook_20250508053553841.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_16489_get_an_audiobook_20250508053553841 (Order: 16489)
  * def id = "misconception's"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16504_get_users_saved_shows_20250508053554294.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_16504_get_users_saved_shows_20250508053554294 (Order: 16504)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16528_get_a_show_20250508053554743.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_16528_get_a_show_20250508053554743 (Order: 16528)
  * def id = "Carnovsky"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16551_get_multiple_episodes_20250508053555212.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_16551_get_multiple_episodes_20250508053555212 (Order: 16551)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16561_get_an_episode_20250508053555669.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_16561_get_an_episode_20250508053555669 (Order: 16561)
  * def id = "tritaph"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16576_get_an_episode_20250508053555673.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_16576_get_an_episode_20250508053555673 (Order: 16576)
  * def id = "605299398"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16594_get_a_chapter_20250508053556122.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_16594_get_a_chapter_20250508053556122 (Order: 16594)
  * def id = "gammoned"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16611_get_a_list_of_current_users_playlists_20250508053556563.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_16611_get_a_list_of_current_users_playlists_20250508053556563 (Order: 16611)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16643_get_information_about_the_users_current_playback_20250508053557457.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_16643_get_information_about_the_users_current_playback_20250508053557457 (Order: 16643)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16653_get_information_about_the_users_current_playback_20250508053557459.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_16653_get_information_about_the_users_current_playback_20250508053557459 (Order: 16653)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16662_get_multiple_albums_20250508053557908.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_16662_get_multiple_albums_20250508053557908 (Order: 16662)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16690_check_if_user_follows_playlist_20250508053558355.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_16690_check_if_user_follows_playlist_20250508053558355 (Order: 16690)
  * def playlist_id = "serpent-goddess"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16699_check_if_user_follows_playlist_20250508053558359.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_16699_check_if_user_follows_playlist_20250508053558359 (Order: 16699)
  * def playlist_id = "affectability"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16729_get_several_tracks_20250508053559291.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_16729_get_several_tracks_20250508053559291 (Order: 16729)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16746_get_multiple_shows_20250508053559760.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_16746_get_multiple_shows_20250508053559760 (Order: 16746)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16759_get_multiple_shows_20250508053559764.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_16759_get_multiple_shows_20250508053559764 (Order: 16759)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16770_get_the_users_currently_playing_track_20250508053600219.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_16770_get_the_users_currently_playing_track_20250508053600219 (Order: 16770)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16793_get_followed_20250508053600689.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_16793_get_followed_20250508053600689 (Order: 16793)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1680_remove_albums_user_20250508053016417.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_1680_remove_albums_user_20250508053016417 (Order: 1680)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16841_get_users_saved_albums_20250508053602051.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_16841_get_users_saved_albums_20250508053602051 (Order: 16841)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16856_get_users_saved_albums_20250508053602055.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_16856_get_users_saved_albums_20250508053602055 (Order: 16856)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16863_get_users_top_tracks_20250508053602505.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_16863_get_users_top_tracks_20250508053602505 (Order: 16863)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16882_get_users_top_artists_20250508053602961.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_16882_get_users_top_artists_20250508053602961 (Order: 16882)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_168_get_an_artist_20250508052941542.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_168_get_an_artist_20250508052941542 (Order: 168)
  * def id = "nontelegraphically"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16929_get_new_releases_20250508053603895.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_16929_get_new_releases_20250508053603895 (Order: 16929)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16939_get_new_releases_20250508053603897.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_16939_get_new_releases_20250508053603897 (Order: 16939)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16951_get_users_saved_tracks_20250508053604343.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_16951_get_users_saved_tracks_20250508053604343 (Order: 16951)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_16984_get_categories_20250508053605260.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_16984_get_categories_20250508053605260 (Order: 16984)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17001_get_playlist_20250508053605703.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_17001_get_playlist_20250508053605703 (Order: 17001)
  * def playlist_id = "imperativeness"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17006_get_playlist_20250508053605705.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_17006_get_playlist_20250508053605705 (Order: 17006)
  * def playlist_id = "puntal"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17027_get_a_categories_playlists_20250508053606169.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_17027_get_a_categories_playlists_20250508053606169 (Order: 17027)
  * def category_id = "Knin"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17047_get_a_shows_episodes_20250508053606640.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_17047_get_a_shows_episodes_20250508053606640 (Order: 17047)
  * def id = "scholaptitude"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17059_get_a_shows_episodes_20250508053606644.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_17059_get_a_shows_episodes_20250508053606644 (Order: 17059)
  * def id = "MMS"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17082_get_an_albums_tracks_20250508053607545.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_17082_get_an_albums_tracks_20250508053607545 (Order: 17082)
  * def id = "mulberries"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17098_get_an_albums_tracks_20250508053607549.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_17098_get_an_albums_tracks_20250508053607549 (Order: 17098)
  * def id = "20060913"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17116_get_an_artists_albums_20250508053608006.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_17116_get_an_artists_albums_20250508053608006 (Order: 17116)
  * def id = "unsociological"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17131_get_featured_playlists_20250508053608467.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_17131_get_featured_playlists_20250508053608467 (Order: 17131)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17149_get_playlists_tracks_20250508053608931.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_17149_get_playlists_tracks_20250508053608931 (Order: 17149)
  * def playlist_id = "pmdGA"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17172_search_20250508053609388.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_17172_search_20250508053609388 (Order: 17172)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17194_get_recommendations_20250508053609864.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_17194_get_recommendations_20250508053609864 (Order: 17194)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17209_skip_users_playback_to_previous_track_20250508053610332.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_17209_skip_users_playback_to_previous_track_20250508053610332 (Order: 17209)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1722_unfollow_artists_users_20250508053017793.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_1722_unfollow_artists_users_20250508053017793 (Order: 1722)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17255_add_to_queue_20250508053611234.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_17255_add_to_queue_20250508053611234 (Order: 17255)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17268_add_tracks_to_playlist_20250508053611701.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_17268_add_tracks_to_playlist_20250508053611701 (Order: 17268)
  * def playlist_id = "Kingston-upon-Hull"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17277_add_tracks_to_playlist_20250508053611705.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_17277_add_tracks_to_playlist_20250508053611705 (Order: 17277)
  * def playlist_id = "untrainedly MEX"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17300_create_playlist_20250508053612192.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_17300_create_playlist_20250508053612192 (Order: 17300)
  * def user_id = "02:04:30"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17314_upload_custom_playlist_cover_20250508053612653.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_17314_upload_custom_playlist_cover_20250508053612653 (Order: 17314)
  * def playlist_id = "9oZmFk4LQpKkQ3A"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17335_pause_a_users_playback_20250508053613131.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_17335_pause_a_users_playback_20250508053613131 (Order: 17335)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17363_seek_to_position_in_currently_playing_track_20250508053614048.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_17363_seek_to_position_in_currently_playing_track_20250508053614048 (Order: 17363)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17366_seek_to_position_in_currently_playing_track_20250508053614049.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_17366_seek_to_position_in_currently_playing_track_20250508053614049 (Order: 17366)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17395_transfer_a_users_playback_20250508053614522.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_17395_transfer_a_users_playback_20250508053614522 (Order: 17395)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17401_toggle_shuffle_for_users_playback_20250508053614980.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_17401_toggle_shuffle_for_users_playback_20250508053614980 (Order: 17401)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17423_follow_playlist_20250508053615453.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_17423_follow_playlist_20250508053615453 (Order: 17423)
  * def playlist_id = "elms"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17441_save_tracks_user_20250508053615914.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_17441_save_tracks_user_20250508053615914 (Order: 17441)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17462_set_repeat_mode_on_users_playback_20250508053616384.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_17462_set_repeat_mode_on_users_playback_20250508053616384 (Order: 17462)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17478_set_repeat_mode_on_users_playback_20250508053616388.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_17478_set_repeat_mode_on_users_playback_20250508053616388 (Order: 17478)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_174_get_an_artist_20250508052941547.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_174_get_an_artist_20250508052941547 (Order: 174)
  * def id = "bloodlike"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17520_set_volume_for_users_playback_20250508053617287.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_17520_set_volume_for_users_playback_20250508053617287 (Order: 17520)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17534_save_albums_user_20250508053617755.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_17534_save_albums_user_20250508053617755 (Order: 17534)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17548_save_episodes_user_20250508053618211.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_17548_save_episodes_user_20250508053618211 (Order: 17548)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17575_follow_artists_users_20250508053618675.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_17575_follow_artists_users_20250508053618675 (Order: 17575)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17580_follow_artists_users_20250508053618677.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_17580_follow_artists_users_20250508053618677 (Order: 17580)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17613_change_playlist_details_20250508053619594.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_17613_change_playlist_details_20250508053619594 (Order: 17613)
  * def playlist_id = "rotten-rich"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17633_reorder_or_replace_playlists_tracks_20250508053620070.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_17633_reorder_or_replace_playlists_tracks_20250508053620070 (Order: 17633)
  * def playlist_id = "e26d0f20-74a0-412d-9218-066dab565ea7"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1763_remove_shows_user_20250508053018707.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_1763_remove_shows_user_20250508053018707 (Order: 1763)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17664_remove_audiobooks_user_20250508053620982.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_17664_remove_audiobooks_user_20250508053620982 (Order: 17664)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17680_remove_audiobooks_user_20250508053620987.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_17680_remove_audiobooks_user_20250508053620987 (Order: 17680)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17689_remove_albums_user_20250508053621438.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_17689_remove_albums_user_20250508053621438 (Order: 17689)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17716_remove_tracks_user_20250508053621896.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_17716_remove_tracks_user_20250508053621896 (Order: 17716)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1773_remove_shows_user_20250508053018711.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_1773_remove_shows_user_20250508053018711 (Order: 1773)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17757_unfollow_artists_users_20250508053622807.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_17757_unfollow_artists_users_20250508053622807 (Order: 17757)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17773_remove_tracks_playlist_20250508053623288.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_17773_remove_tracks_playlist_20250508053623288 (Order: 17773)
  * def playlist_id = "WV"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_17794_remove_shows_user_20250508053623761.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_17794_remove_shows_user_20250508053623761 (Order: 17794)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1787_get_queue_20250508053019175.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_1787_get_queue_20250508053019175 (Order: 1787)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1809_get_a_users_available_devices_20250508053019627.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_1809_get_a_users_available_devices_20250508053019627 (Order: 1809)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1828_get_recommendation_genres_20250508053020085.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_1828_get_recommendation_genres_20250508053020085 (Order: 1828)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1838_get_recommendation_genres_20250508053020087.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_1838_get_recommendation_genres_20250508053020087 (Order: 1838)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1851_get_current_users_profile_20250508053020543.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_1851_get_current_users_profile_20250508053020543 (Order: 1851)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1873_get_available_markets_20250508053021010.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_1873_get_available_markets_20250508053021010 (Order: 1873)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1896_get_users_profile_20250508053021459.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_1896_get_users_profile_20250508053021459 (Order: 1896)
  * def user_id = "unguarding"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1902_get_several_audio_features_20250508053021924.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_1902_get_several_audio_features_20250508053021924 (Order: 1902)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_191_get_audio_features_20250508052942026.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_191_get_audio_features_20250508052942026 (Order: 191)
  * def id = "Oph"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1950_get_an_artist_20250508053022848.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_1950_get_an_artist_20250508053022848 (Order: 1950)
  * def id = "E"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1967_get_audio_features_20250508053023322.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_1967_get_audio_features_20250508053023322 (Order: 1967)
  * def id = "XL"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1978_get_audio_features_20250508053023327.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_1978_get_audio_features_20250508053023327 (Order: 1978)
  * def id = "vouchees"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_1997_get_an_artists_related_artists_20250508053023787.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_1997_get_an_artists_related_artists_20250508053023787 (Order: 1997)
  * def id = "whitish-tailed"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2021_check_users_saved_audiobooks_20250508053024699.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_2021_check_users_saved_audiobooks_20250508053024699 (Order: 2021)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2032_check_users_saved_audiobooks_20250508053024703.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_2032_check_users_saved_audiobooks_20250508053024703 (Order: 2032)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2059_get_audio_analysis_20250508053025181.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_2059_get_audio_analysis_20250508053025181 (Order: 2059)
  * def id = "Q"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2077_check_users_saved_shows_20250508053025635.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_2077_check_users_saved_shows_20250508053025635 (Order: 2077)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2097_get_playlist_cover_20250508053026099.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_2097_get_playlist_cover_20250508053026099 (Order: 2097)
  * def playlist_id = "reregistered"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2105_check_users_saved_albums_20250508053026559.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_2105_check_users_saved_albums_20250508053026559 (Order: 2105)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2120_check_users_saved_albums_20250508053026563.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_2120_check_users_saved_albums_20250508053026563 (Order: 2120)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2150_check_current_user_follows_20250508053027493.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_2150_check_current_user_follows_20250508053027493 (Order: 2150)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2168_get_an_album_20250508053027939.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_2168_get_an_album_20250508053027939 (Order: 2168)
  * def id = "otohemineurasthenia"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2183_get_users_saved_audiobooks_20250508053028392.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_2183_get_users_saved_audiobooks_20250508053028392 (Order: 2183)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2197_get_users_saved_audiobooks_20250508053028394.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_2197_get_users_saved_audiobooks_20250508053028394 (Order: 2197)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2209_get_track_20250508053028862.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_2209_get_track_20250508053028862 (Order: 2209)
  * def id = "6ffd08aa-6a8e-43c0-adaf-998beb015b64"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2224_get_multiple_audiobooks_20250508053029332.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_2224_get_multiple_audiobooks_20250508053029332 (Order: 2224)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2247_get_an_audiobook_20250508053029795.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_2247_get_an_audiobook_20250508053029795 (Order: 2247)
  * def id = "theow"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2266_get_users_saved_shows_20250508053030253.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_2266_get_users_saved_shows_20250508053030253 (Order: 2266)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2295_get_a_show_20250508053030723.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_2295_get_a_show_20250508053030723 (Order: 2295)
  * def id = "holosiderite"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_230_check_users_saved_tracks_20250508052942934.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_230_check_users_saved_tracks_20250508052942934 (Order: 230)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2322_get_an_episode_20250508053031625.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_2322_get_an_episode_20250508053031625 (Order: 2322)
  * def id = "jqxvwp@outlook.com"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2345_get_a_chapter_20250508053032099.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_2345_get_a_chapter_20250508053032099 (Order: 2345)
  * def id = "amaga"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2350_get_a_chapter_20250508053032100.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_2350_get_a_chapter_20250508053032100 (Order: 2350)
  * def id = "inseams"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2378_get_a_list_of_current_users_playlists_20250508053032562.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_2378_get_a_list_of_current_users_playlists_20250508053032562 (Order: 2378)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2393_get_an_artists_top_tracks_20250508053033028.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_2393_get_an_artists_top_tracks_20250508053033028 (Order: 2393)
  * def id = "acclimatisation"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2409_get_information_about_the_users_current_playback_20250508053033483.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_2409_get_information_about_the_users_current_playback_20250508053033483 (Order: 2409)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2425_get_multiple_albums_20250508053033946.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_2425_get_multiple_albums_20250508053033946 (Order: 2425)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2458_check_if_user_follows_playlist_20250508053034415.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_2458_check_if_user_follows_playlist_20250508053034415 (Order: 2458)
  * def playlist_id = "zillionths"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2460_check_if_user_follows_playlist_20250508053034416.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_2460_check_if_user_follows_playlist_20250508053034416 (Order: 2460)
  * def playlist_id = "6930089856"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2490_get_several_tracks_20250508053035328.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_2490_get_several_tracks_20250508053035328 (Order: 2490)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2500_get_several_tracks_20250508053035330.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_2500_get_several_tracks_20250508053035330 (Order: 2500)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2520_get_multiple_shows_20250508053035793.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_2520_get_multiple_shows_20250508053035793 (Order: 2520)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2546_get_followed_20250508053036728.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_2546_get_followed_20250508053036728 (Order: 2546)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2558_get_followed_20250508053036730.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_2558_get_followed_20250508053036730 (Order: 2558)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2580_get_a_category_20250508053037184.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_2580_get_a_category_20250508053037184 (Order: 2580)
  * def category_id = "s"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2593_get_list_users_playlists_20250508053037634.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_2593_get_list_users_playlists_20250508053037634 (Order: 2593)
  * def user_id = "15.195.67.70"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_261_get_audio_analysis_20250508052943835.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_261_get_audio_analysis_20250508052943835 (Order: 261)
  * def id = "169.20.194.210"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2636_get_users_top_tracks_20250508053038547.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_2636_get_users_top_tracks_20250508053038547 (Order: 2636)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_263_get_audio_analysis_20250508052943837.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_263_get_audio_analysis_20250508052943837 (Order: 263)
  * def id = "RPN"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2671_get_recently_played_20250508053039483.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_2671_get_recently_played_20250508053039483 (Order: 2671)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2684_get_new_releases_20250508053039940.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_2684_get_new_releases_20250508053039940 (Order: 2684)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2700_get_new_releases_20250508053039943.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_2700_get_new_releases_20250508053039943 (Order: 2700)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2723_get_users_saved_episodes_20250508053040867.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_2723_get_users_saved_episodes_20250508053040867 (Order: 2723)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2742_get_categories_20250508053041309.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_2742_get_categories_20250508053041309 (Order: 2742)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2761_get_playlist_20250508053041762.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_2761_get_playlist_20250508053041762 (Order: 2761)
  * def playlist_id = "undiscontinued"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2775_get_playlist_20250508053041768.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_2775_get_playlist_20250508053041768 (Order: 2775)
  * def playlist_id = "01:49:54"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2790_get_a_categories_playlists_20250508053042222.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_2790_get_a_categories_playlists_20250508053042222 (Order: 2790)
  * def category_id = "Cuda"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2818_get_a_shows_episodes_20250508053042687.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_2818_get_a_shows_episodes_20250508053042687 (Order: 2818)
  * def id = "Miro"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2833_get_audiobook_chapters_20250508053043146.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_2833_get_audiobook_chapters_20250508053043146 (Order: 2833)
  * def id = "phonocardiograph"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2845_get_an_albums_tracks_20250508053043584.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_2845_get_an_albums_tracks_20250508053043584 (Order: 2845)
  * def id = "overholy"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2868_get_an_artists_albums_20250508053044049.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_2868_get_an_artists_albums_20250508053044049 (Order: 2868)
  * def id = "CGE"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2878_get_an_artists_albums_20250508053044053.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_2878_get_an_artists_albums_20250508053044053 (Order: 2878)
  * def id = "6HkzB5R3*3"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2907_get_playlists_tracks_20250508053044954.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_2907_get_playlists_tracks_20250508053044954 (Order: 2907)
  * def playlist_id = "Lula"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2910_get_playlists_tracks_20250508053044954.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_2910_get_playlists_tracks_20250508053044954 (Order: 2910)
  * def playlist_id = "sageness"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2930_search_20250508053045424.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_2930_search_20250508053045424 (Order: 2930)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2950_get_recommendations_20250508053045878.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_2950_get_recommendations_20250508053045878 (Order: 2950)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2980_skip_users_playback_to_previous_track_20250508053046342.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_2980_skip_users_playback_to_previous_track_20250508053046342 (Order: 2980)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_2981_skip_users_playback_to_next_track_20250508053046793.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_2981_skip_users_playback_to_next_track_20250508053046793 (Order: 2981)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_29_get_a_users_available_devices_20250508052938197.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_29_get_a_users_available_devices_20250508052938197 (Order: 29)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3028_add_tracks_to_playlist_20250508053047721.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_3028_add_tracks_to_playlist_20250508053047721 (Order: 3028)
  * def playlist_id = "http:irhrqjdl.co.uk"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3038_add_tracks_to_playlist_20250508053047724.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_3038_add_tracks_to_playlist_20250508053047724 (Order: 3038)
  * def playlist_id = "Edwardian"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3055_create_playlist_20250508053048181.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_3055_create_playlist_20250508053048181 (Order: 3055)
  * def user_id = "desquamating"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3072_upload_custom_playlist_cover_20250508053048631.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_3072_upload_custom_playlist_cover_20250508053048631 (Order: 3072)
  * def playlist_id = "fire-raising"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3094_pause_a_users_playback_20250508053049083.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_3094_pause_a_users_playback_20250508053049083 (Order: 3094)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3117_save_audiobooks_user_20250508053049537.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_3117_save_audiobooks_user_20250508053049537 (Order: 3117)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3135_seek_to_position_in_currently_playing_track_20250508053049986.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_3135_seek_to_position_in_currently_playing_track_20250508053049986 (Order: 3135)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3153_transfer_a_users_playback_20250508053050456.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_3153_transfer_a_users_playback_20250508053050456 (Order: 3153)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3163_toggle_shuffle_for_users_playback_20250508053050897.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_3163_toggle_shuffle_for_users_playback_20250508053050897 (Order: 3163)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3187_follow_playlist_20250508053051360.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_3187_follow_playlist_20250508053051360 (Order: 3187)
  * def playlist_id = "JT"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3211_save_tracks_user_20250508053051818.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_3211_save_tracks_user_20250508053051818 (Order: 3211)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3222_set_repeat_mode_on_users_playback_20250508053052277.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_3222_set_repeat_mode_on_users_playback_20250508053052277 (Order: 3222)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3238_set_repeat_mode_on_users_playback_20250508053052282.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_3238_set_repeat_mode_on_users_playback_20250508053052282 (Order: 3238)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3265_set_volume_for_users_playback_20250508053053197.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_3265_set_volume_for_users_playback_20250508053053197 (Order: 3265)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_327_check_users_saved_albums_20250508052945230.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_327_check_users_saved_albums_20250508052945230 (Order: 327)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_328_check_users_saved_albums_20250508052945230.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_328_check_users_saved_albums_20250508052945230 (Order: 328)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3313_save_episodes_user_20250508053054128.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_3313_save_episodes_user_20250508053054128 (Order: 3313)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3339_follow_artists_users_20250508053054578.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_3339_follow_artists_users_20250508053054578 (Order: 3339)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3354_start_a_users_playback_20250508053055040.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_3354_start_a_users_playback_20250508053055040 (Order: 3354)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3364_change_playlist_details_20250508053055496.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_3364_change_playlist_details_20250508053055496 (Order: 3364)
  * def playlist_id = "93df:e96a:4f55:c27d:393d:72ab:57dc:e784"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3387_reorder_or_replace_playlists_tracks_20250508053055954.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_3387_reorder_or_replace_playlists_tracks_20250508053055954 (Order: 3387)
  * def playlist_id = "Ten"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3402_unfollow_playlist_20250508053056411.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_3402_unfollow_playlist_20250508053056411 (Order: 3402)
  * def playlist_id = "nonvenally"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3422_remove_audiobooks_user_20250508053056862.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_3422_remove_audiobooks_user_20250508053056862 (Order: 3422)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3446_remove_albums_user_20250508053057315.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_3446_remove_albums_user_20250508053057315 (Order: 3446)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_344_check_users_saved_episodes_20250508052945675.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_344_check_users_saved_episodes_20250508052945675 (Order: 344)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_346_check_users_saved_episodes_20250508052945676.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_346_check_users_saved_episodes_20250508052945676 (Order: 346)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3494_remove_episodes_user_20250508053058229.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_3494_remove_episodes_user_20250508053058229 (Order: 3494)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3518_unfollow_artists_users_20250508053058696.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_3518_unfollow_artists_users_20250508053058696 (Order: 3518)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3536_remove_tracks_playlist_20250508053059139.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_3536_remove_tracks_playlist_20250508053059139 (Order: 3536)
  * def playlist_id = "03:44:35"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3554_remove_shows_user_20250508053059592.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_3554_remove_shows_user_20250508053059592 (Order: 3554)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3574_get_queue_20250508053100047.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_3574_get_queue_20250508053100047 (Order: 3574)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3588_get_a_users_available_devices_20250508053100496.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_3588_get_a_users_available_devices_20250508053100496 (Order: 3588)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3595_get_a_users_available_devices_20250508053100498.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_3595_get_a_users_available_devices_20250508053100498 (Order: 3595)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3628_get_current_users_profile_20250508053101408.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_3628_get_current_users_profile_20250508053101408 (Order: 3628)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3632_get_current_users_profile_20250508053101409.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_3632_get_current_users_profile_20250508053101409 (Order: 3632)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_364_check_current_user_follows_20250508052946150.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_364_check_current_user_follows_20250508052946150 (Order: 364)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3671_get_users_profile_20250508053102319.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_3671_get_users_profile_20250508053102319 (Order: 3671)
  * def user_id = "67e996a"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3687_get_several_audio_features_20250508053102767.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_3687_get_several_audio_features_20250508053102767 (Order: 3687)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3713_get_multiple_artists_20250508053103229.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_3713_get_multiple_artists_20250508053103229 (Order: 3713)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_371_check_current_user_follows_20250508052946154.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_371_check_current_user_follows_20250508052946154 (Order: 371)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3746_get_audio_features_20250508053104144.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_3746_get_audio_features_20250508053104144 (Order: 3746)
  * def id = "'m UN m wk"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3771_get_an_artists_related_artists_20250508053104608.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_3771_get_an_artists_related_artists_20250508053104608 (Order: 3771)
  * def id = "WsOfDRF.vx"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_378_check_current_user_follows_20250508052946157.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_378_check_current_user_follows_20250508052946157 (Order: 378)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3800_check_users_saved_tracks_20250508053105069.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_3800_check_users_saved_tracks_20250508053105069 (Order: 3800)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3821_get_audio_analysis_20250508053105962.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_3821_get_audio_analysis_20250508053105962 (Order: 3821)
  * def id = "proclamatory"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3830_get_audio_analysis_20250508053105971.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_3830_get_audio_analysis_20250508053105971 (Order: 3830)
  * def id = "Narva"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3857_check_users_saved_shows_20250508053106437.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_3857_check_users_saved_shows_20250508053106437 (Order: 3857)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3864_get_playlist_cover_20250508053106893.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_3864_get_playlist_cover_20250508053106893 (Order: 3864)
  * def playlist_id = "Panjim"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3887_check_users_saved_albums_20250508053107348.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_3887_check_users_saved_albums_20250508053107348 (Order: 3887)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_389_get_an_album_20250508052946625.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_389_get_an_album_20250508052946625 (Order: 389)
  * def id = "superseptuaginarian"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3933_check_current_user_follows_20250508053108257.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_3933_check_current_user_follows_20250508053108257 (Order: 3933)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3952_get_an_album_20250508053108714.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_3952_get_an_album_20250508053108714 (Order: 3952)
  * def id = "IS04 8308 2266 8452 6208 9236 63"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3961_get_users_saved_audiobooks_20250508053109167.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_3961_get_users_saved_audiobooks_20250508053109167 (Order: 3961)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_3979_get_users_saved_audiobooks_20250508053109170.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_3979_get_users_saved_audiobooks_20250508053109170 (Order: 3979)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_399_get_an_album_20250508052946628.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_399_get_an_album_20250508052946628 (Order: 399)
  * def id = "nanga"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4011_get_multiple_audiobooks_20250508053110083.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_4011_get_multiple_audiobooks_20250508053110083 (Order: 4011)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4027_get_an_audiobook_20250508053110530.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_4027_get_an_audiobook_20250508053110530 (Order: 4027)
  * def id = "leukorrhea"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4042_get_users_saved_shows_20250508053110974.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_4042_get_users_saved_shows_20250508053110974 (Order: 4042)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4061_get_a_show_20250508053111436.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_4061_get_a_show_20250508053111436 (Order: 4061)
  * def id = "Q9owLuwaECRje"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4096_get_multiple_episodes_20250508053111891.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_4096_get_multiple_episodes_20250508053111891 (Order: 4096)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4105_get_an_episode_20250508053112337.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_4105_get_an_episode_20250508053112337 (Order: 4105)
  * def id = "monopitch"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4128_get_a_chapter_20250508053112785.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_4128_get_a_chapter_20250508053112785 (Order: 4128)
  * def id = "CR91 3404 4671 0725 9457 43"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4149_get_a_list_of_current_users_playlists_20250508053113219.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_4149_get_a_list_of_current_users_playlists_20250508053113219 (Order: 4149)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4160_get_a_list_of_current_users_playlists_20250508053113220.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_4160_get_a_list_of_current_users_playlists_20250508053113220 (Order: 4160)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4182_get_information_about_the_users_current_playback_20250508053114127.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_4182_get_information_about_the_users_current_playback_20250508053114127 (Order: 4182)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4198_get_information_about_the_users_current_playback_20250508053114131.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_4198_get_information_about_the_users_current_playback_20250508053114131 (Order: 4198)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4206_get_multiple_albums_20250508053114570.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_4206_get_multiple_albums_20250508053114570 (Order: 4206)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4235_check_if_user_follows_playlist_20250508053115041.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_4235_check_if_user_follows_playlist_20250508053115041 (Order: 4235)
  * def playlist_id = "myosins"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4247_get_several_chapters_20250508053115491.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_4247_get_several_chapters_20250508053115491 (Order: 4247)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_426_get_track_20250508052947571.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_426_get_track_20250508052947571 (Order: 426)
  * def id = "VAC"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4282_get_multiple_shows_20250508053116381.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_4282_get_multiple_shows_20250508053116381 (Order: 4282)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4298_get_multiple_shows_20250508053116386.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_4298_get_multiple_shows_20250508053116386 (Order: 4298)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4324_get_followed_20250508053117306.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_4324_get_followed_20250508053117306 (Order: 4324)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4346_get_a_category_20250508053117758.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_4346_get_a_category_20250508053117758 (Order: 4346)
  * def category_id = "elms"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4363_get_list_users_playlists_20250508053118206.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_4363_get_list_users_playlists_20250508053118206 (Order: 4363)
  * def user_id = "Zn"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4382_get_users_saved_albums_20250508053118667.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_4382_get_users_saved_albums_20250508053118667 (Order: 4382)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4390_get_users_saved_albums_20250508053118669.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_4390_get_users_saved_albums_20250508053118669 (Order: 4390)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4407_get_users_top_tracks_20250508053119136.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_4407_get_users_top_tracks_20250508053119136 (Order: 4407)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4430_get_users_top_artists_20250508053119589.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_4430_get_users_top_artists_20250508053119589 (Order: 4430)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4450_get_recently_played_20250508053120041.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_4450_get_recently_played_20250508053120041 (Order: 4450)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4471_get_new_releases_20250508053120499.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_4471_get_new_releases_20250508053120499 (Order: 4471)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4483_get_users_saved_tracks_20250508053120950.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_4483_get_users_saved_tracks_20250508053120950 (Order: 4483)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_44_get_recommendation_genres_20250508052938681.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_44_get_recommendation_genres_20250508052938681 (Order: 44)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4526_get_categories_20250508053121853.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_4526_get_categories_20250508053121853 (Order: 4526)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4533_get_categories_20250508053121854.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_4533_get_categories_20250508053121854 (Order: 4533)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4549_get_playlist_20250508053122323.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_4549_get_playlist_20250508053122323 (Order: 4549)
  * def playlist_id = "Demy"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4582_get_a_shows_episodes_20250508053123227.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_4582_get_a_shows_episodes_20250508053123227 (Order: 4582)
  * def id = "Edwardian"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4588_get_a_shows_episodes_20250508053123229.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_4588_get_a_shows_episodes_20250508053123229 (Order: 4588)
  * def id = "noncancellable"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4611_get_audiobook_chapters_20250508053123683.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_4611_get_audiobook_chapters_20250508053123683 (Order: 4611)
  * def id = "rapid"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4629_get_an_albums_tracks_20250508053124150.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_4629_get_an_albums_tracks_20250508053124150 (Order: 4629)
  * def id = "W"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4651_get_an_artists_albums_20250508053124603.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_4651_get_an_artists_albums_20250508053124603 (Order: 4651)
  * def id = "forams"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4656_get_an_artists_albums_20250508053124604.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_4656_get_an_artists_albums_20250508053124604 (Order: 4656)
  * def id = "5Tqz"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4679_get_featured_playlists_20250508053125068.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_4679_get_featured_playlists_20250508053125068 (Order: 4679)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4699_get_playlists_tracks_20250508053125535.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_4699_get_playlists_tracks_20250508053125535 (Order: 4699)
  * def playlist_id = "SX"
  Given path 'playlists/<playlist_id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4717_search_20250508053125989.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_4717_search_20250508053125989 (Order: 4717)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_472_get_an_audiobook_20250508052948494.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_472_get_an_audiobook_20250508052948494 (Order: 472)
  * def id = "y Aello "
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4758_skip_users_playback_to_previous_track_20250508053126908.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_4758_skip_users_playback_to_previous_track_20250508053126908 (Order: 4758)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4777_skip_users_playback_to_next_track_20250508053127368.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_4777_skip_users_playback_to_next_track_20250508053127368 (Order: 4777)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4792_add_to_queue_20250508053127818.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_4792_add_to_queue_20250508053127818 (Order: 4792)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4801_add_tracks_to_playlist_20250508053128267.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_4801_add_tracks_to_playlist_20250508053128267 (Order: 4801)
  * def playlist_id = "09:35:33"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4820_add_tracks_to_playlist_20250508053128274.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_4820_add_tracks_to_playlist_20250508053128274 (Order: 4820)
  * def playlist_id = "Lula"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_484_get_users_saved_shows_20250508052948938.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_484_get_users_saved_shows_20250508052948938 (Order: 484)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4856_upload_custom_playlist_cover_20250508053129176.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_4856_upload_custom_playlist_cover_20250508053129176 (Order: 4856)
  * def playlist_id = "tonify"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4876_pause_a_users_playback_20250508053129645.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_4876_pause_a_users_playback_20250508053129645 (Order: 4876)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4897_save_audiobooks_user_20250508053130098.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_4897_save_audiobooks_user_20250508053130098 (Order: 4897)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4917_seek_to_position_in_currently_playing_track_20250508053130546.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_4917_seek_to_position_in_currently_playing_track_20250508053130546 (Order: 4917)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4925_transfer_a_users_playback_20250508053131002.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_4925_transfer_a_users_playback_20250508053131002 (Order: 4925)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4948_toggle_shuffle_for_users_playback_20250508053131466.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_4948_toggle_shuffle_for_users_playback_20250508053131466 (Order: 4948)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4971_follow_playlist_20250508053131932.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_4971_follow_playlist_20250508053131932 (Order: 4971)
  * def playlist_id = "229.33.134.197"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_4982_save_tracks_user_20250508053132389.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_4982_save_tracks_user_20250508053132389 (Order: 4982)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5003_set_repeat_mode_on_users_playback_20250508053132844.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_5003_set_repeat_mode_on_users_playback_20250508053132844 (Order: 5003)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5023_save_shows_user_20250508053133301.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_5023_save_shows_user_20250508053133301 (Order: 5023)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5039_save_shows_user_20250508053133308.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_5039_save_shows_user_20250508053133308 (Order: 5039)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5067_save_albums_user_20250508053134209.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_5067_save_albums_user_20250508053134209 (Order: 5067)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5076_save_albums_user_20250508053134211.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_5076_save_albums_user_20250508053134211 (Order: 5076)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5102_follow_artists_users_20250508053135124.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_5102_follow_artists_users_20250508053135124 (Order: 5102)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5121_start_a_users_playback_20250508053135582.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_5121_start_a_users_playback_20250508053135582 (Order: 5121)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5127_start_a_users_playback_20250508053135583.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_5127_start_a_users_playback_20250508053135583 (Order: 5127)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5142_change_playlist_details_20250508053136026.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_5142_change_playlist_details_20250508053136026 (Order: 5142)
  * def playlist_id = "IDA"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5165_reorder_or_replace_playlists_tracks_20250508053136476.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_5165_reorder_or_replace_playlists_tracks_20250508053136476 (Order: 5165)
  * def playlist_id = "manniferous"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_518_get_a_show_20250508052949398.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_518_get_a_show_20250508052949398 (Order: 518)
  * def id = "R"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5210_remove_audiobooks_user_20250508053137393.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_5210_remove_audiobooks_user_20250508053137393 (Order: 5210)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5214_remove_audiobooks_user_20250508053137394.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_5214_remove_audiobooks_user_20250508053137394 (Order: 5214)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5239_remove_albums_user_20250508053137853.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_5239_remove_albums_user_20250508053137853 (Order: 5239)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5264_remove_episodes_user_20250508053138757.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_5264_remove_episodes_user_20250508053138757 (Order: 5264)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5275_remove_episodes_user_20250508053138761.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_5275_remove_episodes_user_20250508053138761 (Order: 5275)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5285_unfollow_artists_users_20250508053139203.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_5285_unfollow_artists_users_20250508053139203 (Order: 5285)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5311_remove_tracks_playlist_20250508053139659.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_5311_remove_tracks_playlist_20250508053139659 (Order: 5311)
  * def playlist_id = "IB"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5325_remove_shows_user_20250508053140106.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_5325_remove_shows_user_20250508053140106 (Order: 5325)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5356_get_queue_20250508053140557.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_5356_get_queue_20250508053140557 (Order: 5356)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_535_get_multiple_episodes_20250508052949876.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_535_get_multiple_episodes_20250508052949876 (Order: 535)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5377_get_a_users_available_devices_20250508053141013.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_5377_get_a_users_available_devices_20250508053141013 (Order: 5377)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_53_get_recommendation_genres_20250508052938685.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_53_get_recommendation_genres_20250508052938685 (Order: 53)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5425_get_available_markets_20250508053142356.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_5425_get_available_markets_20250508053142356 (Order: 5425)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_542_get_an_episode_20250508052950346.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_542_get_an_episode_20250508052950346 (Order: 542)
  * def id = "belfry Thetford microphoning "
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5453_get_users_profile_20250508053142817.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_5453_get_users_profile_20250508053142817 (Order: 5453)
  * def user_id = "overcheck"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5475_get_several_audio_features_20250508053143262.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_5475_get_several_audio_features_20250508053143262 (Order: 5475)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5494_get_multiple_artists_20250508053143712.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_5494_get_multiple_artists_20250508053143712 (Order: 5494)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5516_get_an_artist_20250508053144163.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_5516_get_an_artist_20250508053144163 (Order: 5516)
  * def id = "hawk's-eye"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5534_get_audio_features_20250508053144613.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_5534_get_audio_features_20250508053144613 (Order: 5534)
  * def id = "Jussiaean"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5544_get_an_artists_related_artists_20250508053145070.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_5544_get_an_artists_related_artists_20250508053145070 (Order: 5544)
  * def id = "Loral"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5572_check_users_saved_tracks_20250508053145520.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_5572_check_users_saved_tracks_20250508053145520 (Order: 5572)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_557_get_an_episode_20250508052950352.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_557_get_an_episode_20250508052950352 (Order: 557)
  * def id = "unslumped"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5592_check_users_saved_audiobooks_20250508053145971.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_5592_check_users_saved_audiobooks_20250508053145971 (Order: 5592)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5619_get_audio_analysis_20250508053146437.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_5619_get_audio_analysis_20250508053146437 (Order: 5619)
  * def id = "hush "
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5640_check_users_saved_shows_20250508053146884.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_5640_check_users_saved_shows_20250508053146884 (Order: 5640)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5661_check_users_saved_albums_20250508053147779.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_5661_check_users_saved_albums_20250508053147779 (Order: 5661)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5670_check_users_saved_albums_20250508053147781.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_5670_check_users_saved_albums_20250508053147781 (Order: 5670)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5690_check_users_saved_episodes_20250508053148231.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_5690_check_users_saved_episodes_20250508053148231 (Order: 5690)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5705_check_current_user_follows_20250508053148675.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_5705_check_current_user_follows_20250508053148675 (Order: 5705)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5717_check_current_user_follows_20250508053148679.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_5717_check_current_user_follows_20250508053148679 (Order: 5717)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5752_get_users_saved_audiobooks_20250508053149588.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_5752_get_users_saved_audiobooks_20250508053149588 (Order: 5752)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5767_get_track_20250508053150053.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_5767_get_track_20250508053150053 (Order: 5767)
  * def id = "xpjud@live.com"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_577_get_a_chapter_20250508052950816.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_577_get_a_chapter_20250508052950816 (Order: 577)
  * def id = "unalarming"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_57_get_recommendation_genres_20250508052938687.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_57_get_recommendation_genres_20250508052938687 (Order: 57)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5811_get_an_audiobook_20250508053150990.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_5811_get_an_audiobook_20250508053150990 (Order: 5811)
  * def id = ""
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5830_get_users_saved_shows_20250508053151440.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_5830_get_users_saved_shows_20250508053151440 (Order: 5830)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5854_get_a_show_20250508053151899.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_5854_get_a_show_20250508053151899 (Order: 5854)
  * def id = "ljjvnonur@gmail.com"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5869_get_multiple_episodes_20250508053152357.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_5869_get_multiple_episodes_20250508053152357 (Order: 5869)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5895_get_an_episode_20250508053152798.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_5895_get_an_episode_20250508053152798 (Order: 5895)
  * def id = "ome"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5910_get_a_chapter_20250508053153248.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_5910_get_a_chapter_20250508053153248 (Order: 5910)
  * def id = "+9948 95297916151"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5923_get_a_list_of_current_users_playlists_20250508053153699.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_5923_get_a_list_of_current_users_playlists_20250508053153699 (Order: 5923)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_594_get_a_list_of_current_users_playlists_20250508052951287.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_594_get_a_list_of_current_users_playlists_20250508052951287 (Order: 594)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5960_get_an_artists_top_tracks_20250508053154152.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_5960_get_an_artists_top_tracks_20250508053154152 (Order: 5960)
  * def id = "supranationalism"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_5973_get_information_about_the_users_current_playback_20250508053154600.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_5973_get_information_about_the_users_current_playback_20250508053154600 (Order: 5973)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6000_get_multiple_albums_20250508053155057.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_6000_get_multiple_albums_20250508053155057 (Order: 6000)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6015_check_if_user_follows_playlist_20250508053155503.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_6015_check_if_user_follows_playlist_20250508053155503 (Order: 6015)
  * def playlist_id = "cfaf2d42-ab3b-4109-8276-e0381de4b669"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6031_get_several_chapters_20250508053155948.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_6031_get_several_chapters_20250508053155948 (Order: 6031)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6050_get_several_tracks_20250508053156397.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_6050_get_several_tracks_20250508053156397 (Order: 6050)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6062_get_multiple_shows_20250508053156840.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_6062_get_multiple_shows_20250508053156840 (Order: 6062)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6081_get_the_users_currently_playing_track_20250508053157292.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_6081_get_the_users_currently_playing_track_20250508053157292 (Order: 6081)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6098_get_the_users_currently_playing_track_20250508053157296.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_6098_get_the_users_currently_playing_track_20250508053157296 (Order: 6098)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6126_get_a_category_20250508053158183.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_6126_get_a_category_20250508053158183 (Order: 6126)
  * def category_id = "metacarpophalangeal"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6140_get_a_category_20250508053158188.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_6140_get_a_category_20250508053158188 (Order: 6140)
  * def category_id = "birdlet"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6159_get_list_users_playlists_20250508053158641.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_6159_get_list_users_playlists_20250508053158641 (Order: 6159)
  * def user_id = "autogenuous"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6171_get_users_saved_albums_20250508053159085.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_6171_get_users_saved_albums_20250508053159085 (Order: 6171)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6192_get_users_top_tracks_20250508053159525.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_6192_get_users_top_tracks_20250508053159525 (Order: 6192)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6209_get_users_top_artists_20250508053159976.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_6209_get_users_top_artists_20250508053159976 (Order: 6209)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6230_get_recently_played_20250508053200425.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_6230_get_recently_played_20250508053200425 (Order: 6230)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6243_get_new_releases_20250508053200864.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_6243_get_new_releases_20250508053200864 (Order: 6243)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6264_get_users_saved_tracks_20250508053201318.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_6264_get_users_saved_tracks_20250508053201318 (Order: 6264)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6285_get_users_saved_episodes_20250508053201759.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_6285_get_users_saved_episodes_20250508053201759 (Order: 6285)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6308_get_categories_20250508053202208.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_6308_get_categories_20250508053202208 (Order: 6308)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6316_get_categories_20250508053202209.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_6316_get_categories_20250508053202209 (Order: 6316)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6339_get_playlist_20250508053202660.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_6339_get_playlist_20250508053202660 (Order: 6339)
  * def playlist_id = "170.100.113.122"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6349_get_a_categories_playlists_20250508053203122.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}/playlists
Scenario: test_TestId_6349_get_a_categories_playlists_20250508053203122 (Order: 6349)
  * def category_id = "187-252106"
  Given path 'browse/categories/<category_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6373_get_a_shows_episodes_20250508053203572.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_6373_get_a_shows_episodes_20250508053203572 (Order: 6373)
  * def id = "TB"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6389_get_audiobook_chapters_20250508053204022.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_6389_get_audiobook_chapters_20250508053204022 (Order: 6389)
  * def id = "skintlin"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6418_get_an_albums_tracks_20250508053204490.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_6418_get_an_albums_tracks_20250508053204490 (Order: 6418)
  * def id = "c6e47a1e-e63a-4ebc-af22-6c6d312ef48a"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6421_get_an_artists_albums_20250508053204961.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_6421_get_an_artists_albums_20250508053204961 (Order: 6421)
  * def id = "00068837663"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6447_get_featured_playlists_20250508053205420.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_6447_get_featured_playlists_20250508053205420 (Order: 6447)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_646_get_multiple_albums_20250508052952644.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_646_get_multiple_albums_20250508052952644 (Order: 646)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6489_search_20250508053206316.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_6489_search_20250508053206316 (Order: 6489)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6501_get_recommendations_20250508053206760.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_6501_get_recommendations_20250508053206760 (Order: 6501)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6525_skip_users_playback_to_previous_track_20250508053207226.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_6525_skip_users_playback_to_previous_track_20250508053207226 (Order: 6525)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6542_skip_users_playback_to_next_track_20250508053207669.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_6542_skip_users_playback_to_next_track_20250508053207669 (Order: 6542)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6551_skip_users_playback_to_next_track_20250508053207670.java
# 原始 URL: https://api.spotify.com/v1/me/player/next
Scenario: test_TestId_6551_skip_users_playback_to_next_track_20250508053207670 (Order: 6551)
  Given path 'me/player/next'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6575_add_to_queue_20250508053208121.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_6575_add_to_queue_20250508053208121 (Order: 6575)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6581_add_tracks_to_playlist_20250508053208572.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_6581_add_tracks_to_playlist_20250508053208572 (Order: 6581)
  * def playlist_id = "VAV IB Z"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6607_create_playlist_20250508053209028.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_6607_create_playlist_20250508053209028 (Order: 6607)
  * def user_id = "http:xsjvff.xlca.ch"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6623_upload_custom_playlist_cover_20250508053209482.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_6623_upload_custom_playlist_cover_20250508053209482 (Order: 6623)
  * def playlist_id = "JNYkegtZ5"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6637_upload_custom_playlist_cover_20250508053209485.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_6637_upload_custom_playlist_cover_20250508053209485 (Order: 6637)
  * def playlist_id = "inaneness"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6665_save_audiobooks_user_20250508053210379.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_6665_save_audiobooks_user_20250508053210379 (Order: 6665)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6686_seek_to_position_in_currently_playing_track_20250508053210834.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_6686_seek_to_position_in_currently_playing_track_20250508053210834 (Order: 6686)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6691_seek_to_position_in_currently_playing_track_20250508053210835.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_6691_seek_to_position_in_currently_playing_track_20250508053210835 (Order: 6691)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6711_transfer_a_users_playback_20250508053211287.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_6711_transfer_a_users_playback_20250508053211287 (Order: 6711)
  Given path 'me/player'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6741_follow_playlist_20250508053212192.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_6741_follow_playlist_20250508053212192 (Order: 6741)
  * def playlist_id = "phthalyl"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6746_follow_playlist_20250508053212194.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_6746_follow_playlist_20250508053212194 (Order: 6746)
  * def playlist_id = "fimble"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6779_save_tracks_user_20250508053212662.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_6779_save_tracks_user_20250508053212662 (Order: 6779)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6793_set_repeat_mode_on_users_playback_20250508053213102.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_6793_set_repeat_mode_on_users_playback_20250508053213102 (Order: 6793)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6807_save_shows_user_20250508053213551.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_6807_save_shows_user_20250508053213551 (Order: 6807)
  Given path 'me/shows'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6831_set_volume_for_users_playback_20250508053214010.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_6831_set_volume_for_users_playback_20250508053214010 (Order: 6831)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6847_save_albums_user_20250508053214475.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_6847_save_albums_user_20250508053214475 (Order: 6847)
  Given path 'me/albums'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_685_get_several_chapters_20250508052953565.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_685_get_several_chapters_20250508052953565 (Order: 685)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6878_save_episodes_user_20250508053214941.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_6878_save_episodes_user_20250508053214941 (Order: 6878)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6894_follow_artists_users_20250508053215390.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_6894_follow_artists_users_20250508053215390 (Order: 6894)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6912_start_a_users_playback_20250508053215844.java
# 原始 URL: https://api.spotify.com/v1/me/player/play
Scenario: test_TestId_6912_start_a_users_playback_20250508053215844 (Order: 6912)
  Given path 'me/player/play'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6926_change_playlist_details_20250508053216299.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_6926_change_playlist_details_20250508053216299 (Order: 6926)
  * def playlist_id = "f7"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6950_reorder_or_replace_playlists_tracks_20250508053216748.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_6950_reorder_or_replace_playlists_tracks_20250508053216748 (Order: 6950)
  * def playlist_id = "s"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_6967_unfollow_playlist_20250508053217198.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_6967_unfollow_playlist_20250508053217198 (Order: 6967)
  * def playlist_id = "Yao"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_697_get_several_chapters_20250508052953569.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_697_get_several_chapters_20250508052953569 (Order: 697)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7001_remove_albums_user_20250508053218097.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_7001_remove_albums_user_20250508053218097 (Order: 7001)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7025_remove_tracks_user_20250508053218550.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_7025_remove_tracks_user_20250508053218550 (Order: 7025)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7042_remove_episodes_user_20250508053219031.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_7042_remove_episodes_user_20250508053219031 (Order: 7042)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7065_unfollow_artists_users_20250508053219482.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_7065_unfollow_artists_users_20250508053219482 (Order: 7065)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7069_unfollow_artists_users_20250508053219484.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_7069_unfollow_artists_users_20250508053219484 (Order: 7069)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7100_remove_tracks_playlist_20250508053219936.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_7100_remove_tracks_playlist_20250508053219936 (Order: 7100)
  * def playlist_id = "egressAstronomy"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7119_remove_shows_user_20250508053220594.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_7119_remove_shows_user_20250508053220594 (Order: 7119)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7123_get_queue_20250508053221036.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_7123_get_queue_20250508053221036 (Order: 7123)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7147_get_a_users_available_devices_20250508053221490.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_7147_get_a_users_available_devices_20250508053221490 (Order: 7147)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7168_get_recommendation_genres_20250508053221932.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_7168_get_recommendation_genres_20250508053221932 (Order: 7168)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7176_get_recommendation_genres_20250508053221933.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_7176_get_recommendation_genres_20250508053221933 (Order: 7176)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7196_get_current_users_profile_20250508053222386.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_7196_get_current_users_profile_20250508053222386 (Order: 7196)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7224_get_users_profile_20250508053223293.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_7224_get_users_profile_20250508053223293 (Order: 7224)
  * def user_id = "uva"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7231_get_users_profile_20250508053223296.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_7231_get_users_profile_20250508053223296 (Order: 7231)
  * def user_id = "fans"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7259_get_several_audio_features_20250508053223748.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_7259_get_several_audio_features_20250508053223748 (Order: 7259)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7270_get_multiple_artists_20250508053224195.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_7270_get_multiple_artists_20250508053224195 (Order: 7270)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7287_get_an_artist_20250508053224642.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_7287_get_an_artist_20250508053224642 (Order: 7287)
  * def id = "snowless"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7303_get_audio_features_20250508053225096.java
# 原始 URL: https://api.spotify.com/v1/audio-features/{id}
Scenario: test_TestId_7303_get_audio_features_20250508053225096 (Order: 7303)
  * def id = "208-84-255"
  Given path 'audio-features/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7324_get_an_artists_related_artists_20250508053225554.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_7324_get_an_artists_related_artists_20250508053225554 (Order: 7324)
  * def id = "byres"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7350_check_users_saved_tracks_20250508053225998.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_7350_check_users_saved_tracks_20250508053225998 (Order: 7350)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7369_check_users_saved_audiobooks_20250508053226454.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_7369_check_users_saved_audiobooks_20250508053226454 (Order: 7369)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7381_get_audio_analysis_20250508053226916.java
# 原始 URL: https://api.spotify.com/v1/audio-analysis/{id}
Scenario: test_TestId_7381_get_audio_analysis_20250508053226916 (Order: 7381)
  * def id = "tattered"
  Given path 'audio-analysis/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7408_check_users_saved_shows_20250508053227382.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_7408_check_users_saved_shows_20250508053227382 (Order: 7408)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7416_check_users_saved_shows_20250508053227384.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_7416_check_users_saved_shows_20250508053227384 (Order: 7416)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7442_check_users_saved_albums_20250508053228272.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_7442_check_users_saved_albums_20250508053228272 (Order: 7442)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7445_check_users_saved_albums_20250508053228273.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_7445_check_users_saved_albums_20250508053228273 (Order: 7445)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7469_check_users_saved_episodes_20250508053228724.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_7469_check_users_saved_episodes_20250508053228724 (Order: 7469)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7481_check_current_user_follows_20250508053229169.java
# 原始 URL: https://api.spotify.com/v1/me/following/contains
Scenario: test_TestId_7481_check_current_user_follows_20250508053229169 (Order: 7481)
  Given path 'me/following/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7506_get_an_album_20250508053229624.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_7506_get_an_album_20250508053229624 (Order: 7506)
  * def id = "meltdown"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7519_get_an_album_20250508053229628.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_7519_get_an_album_20250508053229628 (Order: 7519)
  * def id = "Cleopatre"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7552_get_track_20250508053230548.java
# 原始 URL: https://api.spotify.com/v1/tracks/{id}
Scenario: test_TestId_7552_get_track_20250508053230548 (Order: 7552)
  * def id = "20141203"
  Given path 'tracks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7564_get_multiple_audiobooks_20250508053231001.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_7564_get_multiple_audiobooks_20250508053231001 (Order: 7564)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7576_get_multiple_audiobooks_20250508053231006.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_7576_get_multiple_audiobooks_20250508053231006 (Order: 7576)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7590_get_an_audiobook_20250508053231454.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_7590_get_an_audiobook_20250508053231454 (Order: 7590)
  * def id = "remote-controlled"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7609_get_users_saved_shows_20250508053231909.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_7609_get_users_saved_shows_20250508053231909 (Order: 7609)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7634_get_a_show_20250508053232367.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_7634_get_a_show_20250508053232367 (Order: 7634)
  * def id = "proangiosperm"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7659_get_multiple_episodes_20250508053232818.java
# 原始 URL: https://api.spotify.com/v1/episodes
Scenario: test_TestId_7659_get_multiple_episodes_20250508053232818 (Order: 7659)
  Given path 'episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7664_get_an_episode_20250508053233274.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_7664_get_an_episode_20250508053233274 (Order: 7664)
  * def id = "tattered"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7683_get_a_chapter_20250508053233736.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_7683_get_a_chapter_20250508053233736 (Order: 7683)
  * def id = "facing"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_769_get_followed_20250508052955382.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_769_get_followed_20250508052955382 (Order: 769)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7720_get_a_list_of_current_users_playlists_20250508053234186.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_7720_get_a_list_of_current_users_playlists_20250508053234186 (Order: 7720)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7739_get_an_artists_top_tracks_20250508053234634.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_7739_get_an_artists_top_tracks_20250508053234634 (Order: 7739)
  * def id = "questionably"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7756_get_information_about_the_users_current_playback_20250508053235084.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_7756_get_information_about_the_users_current_playback_20250508053235084 (Order: 7756)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7777_get_multiple_albums_20250508053235540.java
# 原始 URL: https://api.spotify.com/v1/albums
Scenario: test_TestId_7777_get_multiple_albums_20250508053235540 (Order: 7777)
  Given path 'albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7793_check_if_user_follows_playlist_20250508053235993.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_7793_check_if_user_follows_playlist_20250508053235993 (Order: 7793)
  * def playlist_id = "intrication"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7815_get_several_chapters_20250508053236441.java
# 原始 URL: https://api.spotify.com/v1/chapters
Scenario: test_TestId_7815_get_several_chapters_20250508053236441 (Order: 7815)
  Given path 'chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7834_get_several_tracks_20250508053236900.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_7834_get_several_tracks_20250508053236900 (Order: 7834)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7859_get_multiple_shows_20250508053237359.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_7859_get_multiple_shows_20250508053237359 (Order: 7859)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7867_get_the_users_currently_playing_track_20250508053237806.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_7867_get_the_users_currently_playing_track_20250508053237806 (Order: 7867)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7890_get_followed_20250508053238264.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_7890_get_followed_20250508053238264 (Order: 7890)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7900_get_followed_20250508053238266.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_7900_get_followed_20250508053238266 (Order: 7900)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7920_get_a_category_20250508053238709.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_7920_get_a_category_20250508053238709 (Order: 7920)
  * def category_id = "otohemineurasthenia"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7933_get_list_users_playlists_20250508053239161.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_7933_get_list_users_playlists_20250508053239161 (Order: 7933)
  * def user_id = "VSS"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7954_get_users_saved_albums_20250508053239612.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_7954_get_users_saved_albums_20250508053239612 (Order: 7954)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7975_get_users_top_tracks_20250508053240068.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_7975_get_users_top_tracks_20250508053240068 (Order: 7975)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_7995_get_users_top_artists_20250508053240524.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_7995_get_users_top_artists_20250508053240524 (Order: 7995)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8009_get_recently_played_20250508053240973.java
# 原始 URL: https://api.spotify.com/v1/me/player/recently-played
Scenario: test_TestId_8009_get_recently_played_20250508053240973 (Order: 8009)
  Given path 'me/player/recently-played'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8025_get_new_releases_20250508053241437.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_8025_get_new_releases_20250508053241437 (Order: 8025)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8046_get_users_saved_tracks_20250508053241885.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_8046_get_users_saved_tracks_20250508053241885 (Order: 8046)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8059_get_users_saved_tracks_20250508053241887.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_8059_get_users_saved_tracks_20250508053241887 (Order: 8059)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8089_get_categories_20250508053242795.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_8089_get_categories_20250508053242795 (Order: 8089)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8109_get_playlist_20250508053243254.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_8109_get_playlist_20250508053243254 (Order: 8109)
  * def playlist_id = "OU"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8117_get_playlist_20250508053243258.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_8117_get_playlist_20250508053243258 (Order: 8117)
  * def playlist_id = "J"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_812_get_list_users_playlists_20250508052956286.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_812_get_list_users_playlists_20250508052956286 (Order: 812)
  * def user_id = "celiolymph"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8155_get_a_shows_episodes_20250508053244168.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}/episodes
Scenario: test_TestId_8155_get_a_shows_episodes_20250508053244168 (Order: 8155)
  * def id = "Dictyosiphon"
  Given path 'shows/<id>/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8180_get_audiobook_chapters_20250508053244632.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}/chapters
Scenario: test_TestId_8180_get_audiobook_chapters_20250508053244632 (Order: 8180)
  * def id = "^1W"
  Given path 'audiobooks/<id>/chapters'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_81_get_available_markets_20250508052939622.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_81_get_available_markets_20250508052939622 (Order: 81)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8209_get_an_artists_albums_20250508053245526.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_8209_get_an_artists_albums_20250508053245526 (Order: 8209)
  * def id = "20130826"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8230_get_featured_playlists_20250508053245982.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_8230_get_featured_playlists_20250508053245982 (Order: 8230)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8237_get_featured_playlists_20250508053245984.java
# 原始 URL: https://api.spotify.com/v1/browse/featured-playlists
Scenario: test_TestId_8237_get_featured_playlists_20250508053245984 (Order: 8237)
  Given path 'browse/featured-playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8266_search_20250508053246891.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_8266_search_20250508053246891 (Order: 8266)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8278_search_20250508053246895.java
# 原始 URL: https://api.spotify.com/v1/search
Scenario: test_TestId_8278_search_20250508053246895 (Order: 8278)
  Given path 'search'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8298_get_recommendations_20250508053247359.java
# 原始 URL: https://api.spotify.com/v1/recommendations
Scenario: test_TestId_8298_get_recommendations_20250508053247359 (Order: 8298)
  Given path 'recommendations'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8313_skip_users_playback_to_previous_track_20250508053247800.java
# 原始 URL: https://api.spotify.com/v1/me/player/previous
Scenario: test_TestId_8313_skip_users_playback_to_previous_track_20250508053247800 (Order: 8313)
  Given path 'me/player/previous'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8342_add_to_queue_20250508053248699.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_8342_add_to_queue_20250508053248699 (Order: 8342)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8346_add_to_queue_20250508053248700.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_8346_add_to_queue_20250508053248700 (Order: 8346)
  Given path 'me/player/queue'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8367_add_tracks_to_playlist_20250508053249145.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_8367_add_tracks_to_playlist_20250508053249145 (Order: 8367)
  * def playlist_id = "20080526"
  Given path 'playlists/<playlist_id>/tracks'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8392_create_playlist_20250508053249617.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_8392_create_playlist_20250508053249617 (Order: 8392)
  * def user_id = "kits"
  Given path 'users/<user_id>/playlists'
  When method post
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8404_upload_custom_playlist_cover_20250508053250071.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_8404_upload_custom_playlist_cover_20250508053250071 (Order: 8404)
  * def playlist_id = "eh"
  Given path 'playlists/<playlist_id>/images'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8432_pause_a_users_playback_20250508053250520.java
# 原始 URL: https://api.spotify.com/v1/me/player/pause
Scenario: test_TestId_8432_pause_a_users_playback_20250508053250520 (Order: 8432)
  Given path 'me/player/pause'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8447_save_audiobooks_user_20250508053250979.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_8447_save_audiobooks_user_20250508053250979 (Order: 8447)
  Given path 'me/audiobooks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8463_seek_to_position_in_currently_playing_track_20250508053251426.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_8463_seek_to_position_in_currently_playing_track_20250508053251426 (Order: 8463)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8479_seek_to_position_in_currently_playing_track_20250508053251429.java
# 原始 URL: https://api.spotify.com/v1/me/player/seek
Scenario: test_TestId_8479_seek_to_position_in_currently_playing_track_20250508053251429 (Order: 8479)
  Given path 'me/player/seek'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8505_toggle_shuffle_for_users_playback_20250508053252336.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_8505_toggle_shuffle_for_users_playback_20250508053252336 (Order: 8505)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8508_toggle_shuffle_for_users_playback_20250508053252336.java
# 原始 URL: https://api.spotify.com/v1/me/player/shuffle
Scenario: test_TestId_8508_toggle_shuffle_for_users_playback_20250508053252336 (Order: 8508)
  Given path 'me/player/shuffle'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8540_follow_playlist_20250508053252795.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_8540_follow_playlist_20250508053252795 (Order: 8540)
  * def playlist_id = "e"
  Given path 'playlists/<playlist_id>/followers'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8547_save_tracks_user_20250508053253242.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_8547_save_tracks_user_20250508053253242 (Order: 8547)
  Given path 'me/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8571_set_repeat_mode_on_users_playback_20250508053253694.java
# 原始 URL: https://api.spotify.com/v1/me/player/repeat
Scenario: test_TestId_8571_set_repeat_mode_on_users_playback_20250508053253694 (Order: 8571)
  Given path 'me/player/repeat'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_857_get_users_top_tracks_20250508052957210.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_857_get_users_top_tracks_20250508052957210 (Order: 857)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_859_get_users_top_tracks_20250508052957212.java
# 原始 URL: https://api.spotify.com/v1/me/top/tracks
Scenario: test_TestId_859_get_users_top_tracks_20250508052957212 (Order: 859)
  Given path 'me/top/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8615_set_volume_for_users_playback_20250508053254617.java
# 原始 URL: https://api.spotify.com/v1/me/player/volume
Scenario: test_TestId_8615_set_volume_for_users_playback_20250508053254617 (Order: 8615)
  Given path 'me/player/volume'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8647_save_episodes_user_20250508053255516.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_8647_save_episodes_user_20250508053255516 (Order: 8647)
  Given path 'me/episodes'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8668_follow_artists_users_20250508053255965.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_8668_follow_artists_users_20250508053255965 (Order: 8668)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8670_follow_artists_users_20250508053255966.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_8670_follow_artists_users_20250508053255966 (Order: 8670)
  Given path 'me/following'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8701_change_playlist_details_20250508053256883.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_8701_change_playlist_details_20250508053256883 (Order: 8701)
  * def playlist_id = "584691297"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8712_change_playlist_details_20250508053256887.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_8712_change_playlist_details_20250508053256887 (Order: 8712)
  * def playlist_id = "coinstantaneousness"
  Given path 'playlists/<playlist_id>'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8727_reorder_or_replace_playlists_tracks_20250508053257337.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_8727_reorder_or_replace_playlists_tracks_20250508053257337 (Order: 8727)
  * def playlist_id = "brawls"
  Given path 'playlists/<playlist_id>/tracks'
  When method put
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8756_unfollow_playlist_20250508053257791.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers
Scenario: test_TestId_8756_unfollow_playlist_20250508053257791 (Order: 8756)
  * def playlist_id = "lx"
  Given path 'playlists/<playlist_id>/followers'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8773_remove_audiobooks_user_20250508053258233.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_8773_remove_audiobooks_user_20250508053258233 (Order: 8773)
  Given path 'me/audiobooks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8789_remove_albums_user_20250508053258687.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_8789_remove_albums_user_20250508053258687 (Order: 8789)
  Given path 'me/albums'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8812_remove_tracks_user_20250508053259148.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_8812_remove_tracks_user_20250508053259148 (Order: 8812)
  Given path 'me/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8826_remove_episodes_user_20250508053259608.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_8826_remove_episodes_user_20250508053259608 (Order: 8826)
  Given path 'me/episodes'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8841_unfollow_artists_users_20250508053300057.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_8841_unfollow_artists_users_20250508053300057 (Order: 8841)
  Given path 'me/following'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8864_remove_tracks_playlist_20250508053300516.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_8864_remove_tracks_playlist_20250508053300516 (Order: 8864)
  * def playlist_id = "tended"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8879_remove_tracks_playlist_20250508053300520.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/tracks
Scenario: test_TestId_8879_remove_tracks_playlist_20250508053300520 (Order: 8879)
  * def playlist_id = "intermeddle"
  Given path 'playlists/<playlist_id>/tracks'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8890_remove_shows_user_20250508053300963.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_8890_remove_shows_user_20250508053300963 (Order: 8890)
  Given path 'me/shows'
  When method delete
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8912_get_queue_20250508053301413.java
# 原始 URL: https://api.spotify.com/v1/me/player/queue
Scenario: test_TestId_8912_get_queue_20250508053301413 (Order: 8912)
  Given path 'me/player/queue'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8938_get_a_users_available_devices_20250508053301867.java
# 原始 URL: https://api.spotify.com/v1/me/player/devices
Scenario: test_TestId_8938_get_a_users_available_devices_20250508053301867 (Order: 8938)
  Given path 'me/player/devices'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8948_get_recommendation_genres_20250508053302307.java
# 原始 URL: https://api.spotify.com/v1/recommendations/available-genre-seeds
Scenario: test_TestId_8948_get_recommendation_genres_20250508053302307 (Order: 8948)
  Given path 'recommendations/available-genre-seeds'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8968_get_current_users_profile_20250508053302763.java
# 原始 URL: https://api.spotify.com/v1/me
Scenario: test_TestId_8968_get_current_users_profile_20250508053302763 (Order: 8968)
  Given path 'me'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_8989_get_available_markets_20250508053303203.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_8989_get_available_markets_20250508053303203 (Order: 8989)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9006_get_users_profile_20250508053303657.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}
Scenario: test_TestId_9006_get_users_profile_20250508053303657 (Order: 9006)
  * def user_id = "theow"
  Given path 'users/<user_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9028_get_several_audio_features_20250508053304118.java
# 原始 URL: https://api.spotify.com/v1/audio-features
Scenario: test_TestId_9028_get_several_audio_features_20250508053304118 (Order: 9028)
  Given path 'audio-features'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9041_get_multiple_artists_20250508053304574.java
# 原始 URL: https://api.spotify.com/v1/artists
Scenario: test_TestId_9041_get_multiple_artists_20250508053304574 (Order: 9041)
  Given path 'artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9064_get_an_artist_20250508053305025.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_9064_get_an_artist_20250508053305025 (Order: 9064)
  * def id = "abuse"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9067_get_an_artist_20250508053305026.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}
Scenario: test_TestId_9067_get_an_artist_20250508053305026 (Order: 9067)
  * def id = "OHMS"
  Given path 'artists/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_90_get_available_markets_20250508052939626.java
# 原始 URL: https://api.spotify.com/v1/markets
Scenario: test_TestId_90_get_available_markets_20250508052939626 (Order: 90)
  Given path 'markets'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9102_get_an_artists_related_artists_20250508053305940.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/related-artists
Scenario: test_TestId_9102_get_an_artists_related_artists_20250508053305940 (Order: 9102)
  * def id = "BVD"
  Given path 'artists/<id>/related-artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9130_check_users_saved_tracks_20250508053306397.java
# 原始 URL: https://api.spotify.com/v1/me/tracks/contains
Scenario: test_TestId_9130_check_users_saved_tracks_20250508053306397 (Order: 9130)
  Given path 'me/tracks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9152_check_users_saved_audiobooks_20250508053306843.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_9152_check_users_saved_audiobooks_20250508053306843 (Order: 9152)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9158_check_users_saved_audiobooks_20250508053306845.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks/contains
Scenario: test_TestId_9158_check_users_saved_audiobooks_20250508053306845 (Order: 9158)
  Given path 'me/audiobooks/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9190_check_users_saved_shows_20250508053307770.java
# 原始 URL: https://api.spotify.com/v1/me/shows/contains
Scenario: test_TestId_9190_check_users_saved_shows_20250508053307770 (Order: 9190)
  Given path 'me/shows/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9208_get_playlist_cover_20250508053308221.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/images
Scenario: test_TestId_9208_get_playlist_cover_20250508053308221 (Order: 9208)
  * def playlist_id = "zCzq"
  Given path 'playlists/<playlist_id>/images'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9225_check_users_saved_albums_20250508053308667.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_9225_check_users_saved_albums_20250508053308667 (Order: 9225)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9235_check_users_saved_albums_20250508053308669.java
# 原始 URL: https://api.spotify.com/v1/me/albums/contains
Scenario: test_TestId_9235_check_users_saved_albums_20250508053308669 (Order: 9235)
  Given path 'me/albums/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9256_check_users_saved_episodes_20250508053309125.java
# 原始 URL: https://api.spotify.com/v1/me/episodes/contains
Scenario: test_TestId_9256_check_users_saved_episodes_20250508053309125 (Order: 9256)
  Given path 'me/episodes/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_927_get_users_saved_tracks_20250508052959030.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_927_get_users_saved_tracks_20250508052959030 (Order: 927)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9294_get_an_album_20250508053310021.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}
Scenario: test_TestId_9294_get_an_album_20250508053310021 (Order: 9294)
  * def id = "lows"
  Given path 'albums/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9316_get_users_saved_audiobooks_20250508053310472.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_9316_get_users_saved_audiobooks_20250508053310472 (Order: 9316)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9317_get_users_saved_audiobooks_20250508053310473.java
# 原始 URL: https://api.spotify.com/v1/me/audiobooks
Scenario: test_TestId_9317_get_users_saved_audiobooks_20250508053310473 (Order: 9317)
  Given path 'me/audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9348_get_multiple_audiobooks_20250508053311368.java
# 原始 URL: https://api.spotify.com/v1/audiobooks
Scenario: test_TestId_9348_get_multiple_audiobooks_20250508053311368 (Order: 9348)
  Given path 'audiobooks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9362_get_an_audiobook_20250508053311815.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_9362_get_an_audiobook_20250508053311815 (Order: 9362)
  * def id = "spondylolisthetic"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9378_get_an_audiobook_20250508053311822.java
# 原始 URL: https://api.spotify.com/v1/audiobooks/{id}
Scenario: test_TestId_9378_get_an_audiobook_20250508053311822 (Order: 9378)
  * def id = "http:v.io"
  Given path 'audiobooks/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9390_get_users_saved_shows_20250508053312260.java
# 原始 URL: https://api.spotify.com/v1/me/shows
Scenario: test_TestId_9390_get_users_saved_shows_20250508053312260 (Order: 9390)
  Given path 'me/shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9417_get_a_show_20250508053312723.java
# 原始 URL: https://api.spotify.com/v1/shows/{id}
Scenario: test_TestId_9417_get_a_show_20250508053312723 (Order: 9417)
  * def id = "ovariosalpingectomy"
  Given path 'shows/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9442_get_an_episode_20250508053313614.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_9442_get_an_episode_20250508053313614 (Order: 9442)
  * def id = "ASDIC"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9444_get_an_episode_20250508053313615.java
# 原始 URL: https://api.spotify.com/v1/episodes/{id}
Scenario: test_TestId_9444_get_an_episode_20250508053313615 (Order: 9444)
  * def id = "236.88.98.163"
  Given path 'episodes/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9474_get_a_chapter_20250508053314055.java
# 原始 URL: https://api.spotify.com/v1/chapters/{id}
Scenario: test_TestId_9474_get_a_chapter_20250508053314055 (Order: 9474)
  * def id = "ETR"
  Given path 'chapters/<id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9490_get_a_list_of_current_users_playlists_20250508053314504.java
# 原始 URL: https://api.spotify.com/v1/me/playlists
Scenario: test_TestId_9490_get_a_list_of_current_users_playlists_20250508053314504 (Order: 9490)
  Given path 'me/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9510_get_an_artists_top_tracks_20250508053314973.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/top-tracks
Scenario: test_TestId_9510_get_an_artists_top_tracks_20250508053314973 (Order: 9510)
  * def id = "casteless"
  Given path 'artists/<id>/top-tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_951_get_users_saved_episodes_20250508052959489.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_951_get_users_saved_episodes_20250508052959489 (Order: 951)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9536_get_information_about_the_users_current_playback_20250508053315426.java
# 原始 URL: https://api.spotify.com/v1/me/player
Scenario: test_TestId_9536_get_information_about_the_users_current_playback_20250508053315426 (Order: 9536)
  Given path 'me/player'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9564_check_if_user_follows_playlist_20250508053316338.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_9564_check_if_user_follows_playlist_20250508053316338 (Order: 9564)
  * def playlist_id = "filmable"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9571_check_if_user_follows_playlist_20250508053316341.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}/followers/contains
Scenario: test_TestId_9571_check_if_user_follows_playlist_20250508053316341 (Order: 9571)
  * def playlist_id = "unbeginningly V reflie"
  Given path 'playlists/<playlist_id>/followers/contains'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9603_get_several_tracks_20250508053317248.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_9603_get_several_tracks_20250508053317248 (Order: 9603)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9615_get_several_tracks_20250508053317253.java
# 原始 URL: https://api.spotify.com/v1/tracks
Scenario: test_TestId_9615_get_several_tracks_20250508053317253 (Order: 9615)
  Given path 'tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9633_get_multiple_shows_20250508053317698.java
# 原始 URL: https://api.spotify.com/v1/shows
Scenario: test_TestId_9633_get_multiple_shows_20250508053317698 (Order: 9633)
  Given path 'shows'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9644_get_the_users_currently_playing_track_20250508053318141.java
# 原始 URL: https://api.spotify.com/v1/me/player/currently-playing
Scenario: test_TestId_9644_get_the_users_currently_playing_track_20250508053318141 (Order: 9644)
  Given path 'me/player/currently-playing'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9676_get_followed_20250508053318599.java
# 原始 URL: https://api.spotify.com/v1/me/following
Scenario: test_TestId_9676_get_followed_20250508053318599 (Order: 9676)
  Given path 'me/following'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9695_get_a_category_20250508053319054.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_9695_get_a_category_20250508053319054 (Order: 9695)
  * def category_id = "dither"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9700_get_a_category_20250508053319056.java
# 原始 URL: https://api.spotify.com/v1/browse/categories/{category_id}
Scenario: test_TestId_9700_get_a_category_20250508053319056 (Order: 9700)
  * def category_id = "artifact's"
  Given path 'browse/categories/<category_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9718_get_list_users_playlists_20250508053319501.java
# 原始 URL: https://api.spotify.com/v1/users/{user_id}/playlists
Scenario: test_TestId_9718_get_list_users_playlists_20250508053319501 (Order: 9718)
  * def user_id = "Kol"
  Given path 'users/<user_id>/playlists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9738_get_users_saved_albums_20250508053319956.java
# 原始 URL: https://api.spotify.com/v1/me/albums
Scenario: test_TestId_9738_get_users_saved_albums_20250508053319956 (Order: 9738)
  Given path 'me/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9766_get_users_top_artists_20250508053320838.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_9766_get_users_top_artists_20250508053320838 (Order: 9766)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9779_get_users_top_artists_20250508053320841.java
# 原始 URL: https://api.spotify.com/v1/me/top/artists
Scenario: test_TestId_9779_get_users_top_artists_20250508053320841 (Order: 9779)
  Given path 'me/top/artists'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_979_get_categories_20250508052959953.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_979_get_categories_20250508052959953 (Order: 979)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9804_get_new_releases_20250508053321732.java
# 原始 URL: https://api.spotify.com/v1/browse/new-releases
Scenario: test_TestId_9804_get_new_releases_20250508053321732 (Order: 9804)
  Given path 'browse/new-releases'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9835_get_users_saved_tracks_20250508053322185.java
# 原始 URL: https://api.spotify.com/v1/me/tracks
Scenario: test_TestId_9835_get_users_saved_tracks_20250508053322185 (Order: 9835)
  Given path 'me/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9851_get_users_saved_episodes_20250508053322636.java
# 原始 URL: https://api.spotify.com/v1/me/episodes
Scenario: test_TestId_9851_get_users_saved_episodes_20250508053322636 (Order: 9851)
  Given path 'me/episodes'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9861_get_categories_20250508053323096.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_9861_get_categories_20250508053323096 (Order: 9861)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9876_get_categories_20250508053323099.java
# 原始 URL: https://api.spotify.com/v1/browse/categories
Scenario: test_TestId_9876_get_categories_20250508053323099 (Order: 9876)
  Given path 'browse/categories'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9897_get_playlist_20250508053323567.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_9897_get_playlist_20250508053323567 (Order: 9897)
  * def playlist_id = "acara"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_991_get_playlist_20250508053000400.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_991_get_playlist_20250508053000400 (Order: 991)
  * def playlist_id = "uncondensational"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_993_get_playlist_20250508053000401.java
# 原始 URL: https://api.spotify.com/v1/playlists/{playlist_id}
Scenario: test_TestId_993_get_playlist_20250508053000401 (Order: 993)
  * def playlist_id = "modi"
  Given path 'playlists/<playlist_id>'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9963_get_an_albums_tracks_20250508053325369.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_9963_get_an_albums_tracks_20250508053325369 (Order: 9963)
  * def id = "17:37:56"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9977_get_an_albums_tracks_20250508053325373.java
# 原始 URL: https://api.spotify.com/v1/albums/{id}/tracks
Scenario: test_TestId_9977_get_an_albums_tracks_20250508053325373 (Order: 9977)
  * def id = "IRE"
  Given path 'albums/<id>/tracks'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

# 原始檔案: TestId_9996_get_an_artists_albums_20250508053325829.java
# 原始 URL: https://api.spotify.com/v1/artists/{id}/albums
Scenario: test_TestId_9996_get_an_artists_albums_20250508053325829 (Order: 9996)
  * def id = "evil-favoredness"
  Given path 'artists/<id>/albums'
  When method get
  Then assert responseStatus >= 100 && responseStatus <= 499
  # 註：預期狀態碼範圍 100-499
  # 原始斷言： Assertions.assertFalse(response0.getStatusCode()>=500,"StatusCode 5xx: The test sequence was not executed successfully.");
  * match response.status != 500 || karate.fail('StatusCode 5xx: The test sequence was not executed successfully.')

