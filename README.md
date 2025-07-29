# LATGA

這是一個運用大型語言模型與使用者行為腳本，自動化生成Web API的黑箱測試案例。

LATGA方法包含兩種測試流程：

Structural Blackbox : 結合 LLM 與操作相依圖，自動產生涵蓋多種測試場景的 Karate 測試案例。

Behavioral Blackbox : 進一步透過 LLM 模擬前端互動流程，生成 Gherkin 行為腳本，再轉化為貼近實際操作行為的測試案例。


# 環境需由

Spring Boot

Karate

# Tonken Key

在 /application.properties 中，請自行更改成使用者的 Key
