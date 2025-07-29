```gherkin
Feature: Spotify Web API Frontend 功能測試
  為確保整個Spotify Web API前端介面所有功能均正常運作，進行全面的功能測試。

  Background:
    Given 使用者開啟Spotify Web API完整前端介面
    And 頁面載入完成

  # 瀏覽與發現區域測試
  Scenario: 瀏覽與發現 - 可用市場
    When 使用者切換至 "瀏覽發現" 分頁
    And 點擊 "獲取可用市場" 按鈕
    Then 應呼叫API端點 "/markets" 並以GET方法執行
    And 應收到成功回應

  Scenario: 瀏覽與發現 - 精選播放列表
    When 使用者切換至 "瀏覽發現" 分頁
    And 輸入國家代碼為 "US"
    And 輸入語言為 "en_US"
    And 點擊 "獲取精選播放列表" 按鈕
    Then 應呼叫API端點 "/browse/featured-playlists" 並以GET方法執行
    And 應收到成功回應

  Scenario: 瀏覽與發現 - 新專輯發布
    When 使用者切換至 "瀏覽發現" 分頁
    And 點擊 "獲取新專輯" 按鈕
    Then 應呼叫API端點 "/browse/new-releases" 並以GET方法執行
    And 應收到成功回應

  Scenario: 瀏覽與發現 - 瀏覽分類
    When 使用者切換至 "瀏覽發現" 分頁
    And 點擊 "獲取所有分類" 按鈕
    Then 應呼叫API端點 "/browse/categories" 並以GET方法執行
    And 應收到成功回應

    When 輸入分類ID為 "pop"
    And 點擊 "獲取特定分類" 按鈕
    Then 應呼叫API端點 "/browse/categories/{category_id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "獲取分類播放列表" 按鈕
    Then 應呼叫API端點 "/browse/categories/{category_id}/playlists" 並以GET方法執行
    And 應收到成功回應

  Scenario: 瀏覽與發現 - 推薦系統
    When 使用者切換至 "瀏覽發現" 分頁
    And 點擊 "獲取可用流派種子" 按鈕
    Then 應呼叫API端點 "/recommendations/available-genre-seeds" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "獲取推薦" 按鈕
    Then 應呼叫API端點 "/recommendations" 並以GET方法執行
    And 應收到成功回應

  # 搜索區域測試
  Scenario Outline: 搜索功能 - 根據不同類型搜尋
    Given 使用者切換至 "搜索" 分頁
    When 使用者在搜索框輸入 "<keyword>"
    And 使用者選擇搜索類型為 "<type>"
    And 點擊 "搜索" 按鈕
    Then 應呼叫API端點 "/search?q=<keyword>&type=<type>" 並以GET方法執行
    And 應收到成功回應

    Examples:
      | keyword  | type      |
      | "Beatles" | track    |
      | "Adele"  | artist    |
      | "1989"   | album     |
      | "Chill"  | playlist  |
      | "News"   | show      |
      | "Episode1" | episode |
      | "Harry Potter" | audiobook |

  # 播放列表管理區域測試
  Scenario: 播放列表操作 - 取得播放列表及相關操作
    Given 使用者切換至 "播放列表" 分頁
    When 輸入播放列表ID為 "12345"
    And 點擊 "獲取播放列表" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "獲取封面圖片" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/images" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "上傳自定義封面" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/images" 並以PUT方法執行
    And 應收到成功回應

  Scenario: 播放列表曲目操作
    Given 使用者切換至 "播放列表" 分頁
    When 輸入播放列表ID為 "12345"
    And 點擊 "獲取曲目列表" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/tracks" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "添加曲目" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/tracks" 並以POST方法執行
    And 應收到成功回應

    When 點擊 "更新曲目順序" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/tracks" 並以PUT方法執行
    And 應收到成功回應

    When 點擊 "刪除曲目" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/tracks" 並以DELETE方法執行
    And 應收到成功回應

  Scenario: 播放列表關注操作
    Given 使用者切換至 "播放列表" 分頁
    When 輸入播放列表ID為 "12345"
    And 點擊 "關注播放列表" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/followers" 並以PUT方法執行
    And 應收到成功回應

    When 點擊 "取消關注" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/followers" 並以DELETE方法執行
    And 應收到成功回應

    When 點擊 "檢查關注狀態" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}/followers/contains" 並以GET方法執行
    And 應收到成功回應

  Scenario: 修改播放列表詳情
    Given 使用者切換至 "播放列表" 分頁
    When 輸入播放列表ID為 "12345"
    And 點擊 "修改播放列表詳情" 按鈕
    Then 應呼叫API端點 "/playlists/{playlist_id}" 並以PUT方法執行
    And 應收到成功回應

  # 藝術家區域測試
  Scenario: 藝術家操作 - 取得及批量取得
    Given 使用者切換至 "藝術家" 分頁
    When 輸入藝術家ID為 "artist123"
    And 點擊 "獲取藝術家信息" 按鈕
    Then 應呼叫API端點 "/artists/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取藝術家" 按鈕
    Then 應呼叫API端點 "/artists" 並以GET方法執行
    And 應收到成功回應

  Scenario: 藝術家專輯與熱門歌曲
    Given 使用者切換至 "藝術家" 分頁
    When 輸入藝術家ID為 "artist123"
    And 點擊 "獲取藝術家專輯" 按鈕
    Then 應呼叫API端點 "/artists/{id}/albums" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "獲取熱門歌曲" 按鈕
    Then 應呼叫API端點 "/artists/{id}/top-tracks" 並以GET方法執行
    And 應收到成功回應

  Scenario: 獲取相關藝術家
    Given 使用者切換至 "藝術家" 分頁
    When 輸入藝術家ID為 "artist123"
    And 點擊 "獲取相關藝術家" 按鈕
    Then 應呼叫API端點 "/artists/{id}/related-artists" 並以GET方法執行
    And 應收到成功回應

  # 專輯與歌曲區域測試
  Scenario: 專輯操作 - 取得專輯及批量取得
    Given 使用者切換至 "專輯歌曲" 分頁
    When 輸入專輯ID為 "album456"
    And 點擊 "獲取專輯信息" 按鈕
    Then 應呼叫API端點 "/albums/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取專輯" 按鈕
    Then 應呼叫API端點 "/albums" 並以GET方法執行
    And 應收到成功回應

  Scenario: 專輯曲目與歌曲操作
    Given 使用者切換至 "專輯歌曲" 分頁
    When 輸入專輯ID為 "album456"
    And 點擊 "獲取專輯曲目" 按鈕
    Then 應呼叫API端點 "/albums/{id}/tracks" 並以GET方法執行
    And 應收到成功回應

    When 輸入歌曲ID為 "track789"
    And 點擊 "獲取歌曲信息" 按鈕
    Then 應呼叫API端點 "/tracks/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取歌曲" 按鈕
    Then 應呼叫API端點 "/tracks" 並以GET方法執行
    And 應收到成功回應

  Scenario: 音頻特征與音頻分析
    Given 使用者切換至 "專輯歌曲" 分頁
    When 輸入歌曲ID為 "track789"
    And 點擊 "獲取音頻特征" 按鈕
    Then 應呼叫API端點 "/audio-features/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取音頻特征" 按鈕
    Then 應呼叫API端點 "/audio-features" 並以GET方法執行
    And 應收到成功回應

    When 輸入歌曲ID為 "track789"
    And 點擊 "獲取音頻分析" 按鈕
    Then 應呼叫API端點 "/audio-analysis/{id}" 並以GET方法執行
    And 應收到成功回應

  # 播客與有聲書區域測試
  Scenario: 播客節目與集數操作
    Given 使用者切換至 "播客有聲書" 分頁
    When 輸入播客ID為 "show001"
    And 點擊 "獲取播客信息" 按鈕
    Then 應呼叫API端點 "/shows/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取播客" 按鈕
    Then 應呼叫API端點 "/shows" 並以GET方法執行
    And 應收到成功回應

    When 輸入播客ID為 "show001"
    And 點擊 "獲取播客集數" 按鈕
    Then 應呼叫API端點 "/shows/{id}/episodes" 並以GET方法執行
    And 應收到成功回應

    When 輸入集數ID為 "episode123"
    And 點擊 "獲取集數信息" 按鈕
    Then 應呼叫API端點 "/episodes/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取集數" 按鈕
    Then 應呼叫API端點 "/episodes" 並以GET方法執行
    And 應收到成功回應

  Scenario: 有聲書與章節操作
    Given 使用者切換至 "播客有聲書" 分頁
    When 輸入有聲書ID為 "audiobook789"
    And 點擊 "獲取有聲書信息" 按鈕
    Then 應呼叫API端點 "/audiobooks/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取有聲書" 按鈕
    Then 應呼叫API端點 "/audiobooks" 並以GET方法執行
    And 應收到成功回應

    When 輸入有聲書ID為 "audiobook789"
    And 點擊 "獲取有聲書章節" 按鈕
    Then 應呼叫API端點 "/audiobooks/{id}/chapters" 並以GET方法執行
    And 應收到成功回應

    When 輸入章節ID為 "chapter456"
    And 點擊 "獲取章節信息" 按鈕
    Then 應呼叫API端點 "/chapters/{id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "批量獲取章節" 按鈕
    Then 應呼叫API端點 "/chapters" 並以GET方法執行
    And 應收到成功回應

  # 用戶管理區域測試
  Scenario: 用戶信息與播放列表管理
    Given 使用者切換至 "用戶管理" 分頁
    When 輸入用戶ID為 "user999"
    And 點擊 "獲取用戶信息" 按鈕
    Then 應呼叫API端點 "/users/{user_id}" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "獲取用戶播放列表" 按鈕
    Then 應呼叫API端點 "/users/{user_id}/playlists" 並以GET方法執行
    And 應收到成功回應

    When 點擊 "創建新播放列表" 按鈕
    Then 應呼叫API端點 "/users/{user_id}/playlists" 並以POST方法執行
    And 應收到成功回應

  # 分頁切換測試
  Scenario Outline: 頁面分頁切換功能
    Given 使用者在首頁
    When 使用者點擊 "<tab_label>" 分頁
    Then 畫面應切換至 "<tab_label>" 頁面
    And 該頁面應顯示對應功能區塊

    Examples:
      | tab_label   |
      | 瀏覽發現    |
      | 搜索        |
      | 播放列表    |
      | 藝術家      |
      | 專輯歌曲    |
      | 播客有聲書  |
      | 用戶管理    |
```
---

### 測試案例說明

- 每個主要功能區塊（瀏覽、搜索、播放列表、藝術家、專輯歌曲、播客有聲書、用戶管理）皆包含API呼叫的完整測試。
- 測試確保按鈕點擊會呼叫對應的API端點，並以正確HTTP方法執行。
- 測試包含輸入框內容的填寫，確保參數能正確帶入API路徑。
- 搜索功能以Scenario Outline涵蓋不同搜尋類型與關鍵字，以提高覆蓋率。
- 分頁切換測試確保前端UI切換行為正常。
- 所有Scenario皆確認API回應成功，符合前端的模擬API呼叫預期。
- 本測試文檔符合BDD最佳實踐，語意清晰，方便自動化與手動測試執行。

此Gherkin測試文件可作為前端完整功能驗收依據，確保Spotify Web API前端介面各工作流程完整且正確。