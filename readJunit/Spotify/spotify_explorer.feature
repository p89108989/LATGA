Feature: Spotify Explorer 音樂瀏覽與互動功能

  Background:
    Given 使用者已登入應用程式

  Scenario: 搜尋並播放歌曲
    When 使用者輸入 "Track 1" 作為搜尋關鍵字
    And 選擇搜尋類型為 "Tracks"
    And 點擊搜尋按鈕
    Then 應該顯示至少一首符合的歌曲
    When 使用者點擊播放按鈕
    Then 該歌曲應開始播放

  Scenario: 建立新的播放清單並加入歌曲
    When 使用者切換至 "Playlists" 頁籤
    And 點擊 "Create Playlist"
    And 輸入播放清單名稱為 "My Rock Mix"
    And 點擊確認建立
    Then 應新增一個名稱為 "My Rock Mix" 的播放清單
    When 使用者點擊該播放清單
    And 點擊 "Add Track"
    And 選擇 "Track 2"
    And 點擊確認加入
    Then 該播放清單中應包含 "Track 2"

  Scenario: 儲存與移除專輯
    When 使用者搜尋 "Album 1" 並儲存該專輯
    Then "Album 1" 應出現在 "Saved Albums" 中
    When 使用者切換至 "Profile" 頁籤
    And 切換到 "Saved Albums" 分頁
    And 點擊 "移除" 按鈕
    Then "Album 1" 應從收藏中移除

  Scenario: 查看藝人與熱門曲目
    When 使用者切換至 "Artists" 頁籤
    And 點擊藝人 "Artist 1"
    Then 應顯示其熱門歌曲、專輯與相關藝人

  Scenario: 使用播放器控制歌曲
    Given 正在播放 "Track 1"
    When 使用者點擊 "Pause"
    Then 播放應暫停
    When 使用者點擊 "Next"
    Then 播放器應顯示下一首歌曲
    When 使用者拖曳音量滑桿至 80%
    Then 播放器音量應為 80%