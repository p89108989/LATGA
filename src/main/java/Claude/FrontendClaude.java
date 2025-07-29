package Claude;


import java.util.List;
import java.util.Scanner;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class FrontendClaude implements CommandLineRunner {

    @Autowired
    private ClaudeService claudeService;

    /**
     * Spring Boot 應用程式入口點
     */
    public static void main(String[] args) {
        // 設定Spring Boot不啟動web伺服器
        System.setProperty("spring.main.web-application-type", "none");
        SpringApplication.run(FrontendClaude.class, args);
    }

    /**
     * CommandLineRunner實現 - 應用程式啟動後執行
     */
    @Override
    public void run(String... args) throws Exception {
        System.out.println("=== Claude 聊天機器人 (Spring Boot版本) ===");
        System.out.println("應用程式已啟動，開始初始化Claude服務...");

        // 檢查Claude服務是否可用
        if (!claudeService.isConfigured()) {
            System.err.println("錯誤: Claude API未正確配置，請檢查application.properties");
            return;
        }

        System.out.println("Claude服務初始化完成！");
        startInteractiveChat();
    }

    /**
     * 開始互動式聊天
     */
    private void startInteractiveChat() {
        Scanner scanner = new Scanner(System.in);
        String sessionId = "main_session";

        System.out.println("\n可用指令:");
        System.out.println("- 'exit' 或 'quit': 離開程式");
        System.out.println("- 'clear': 清除對話歷史");
        System.out.println("- 'history': 查看對話歷史");
        System.out.println("- 'sessions': 查看所有會話");
        System.out.println("- 'switch <sessionId>': 切換會話");
        System.out.println("- 'help': 顯示幫助訊息");
        System.out.println("\n開始聊天吧！\n");

        while (true) {
            System.out.print("[" + sessionId + "] 你: ");
            String userInput = scanner.nextLine().trim();

            if (userInput.isEmpty()) {
                continue;
            }

            // 處理特殊指令
            if (handleCommand(userInput, sessionId, scanner)) {
                // 如果是exit指令，handleCommand會返回true
                break;
            }

            // 如果用戶切換了會話，更新sessionId
            if (userInput.startsWith("switch ")) {
                String newSessionId = userInput.substring(7).trim();
                if (!newSessionId.isEmpty()) {
                    sessionId = newSessionId;
                    System.out.println("已切換到會話: " + sessionId + "\n");
                }
                continue;
            }

            // 發送訊息給Claude
            try {
                System.out.print("Claude正在思考中");

                // 在背景執行，同時顯示思考動畫
                Thread thinkingAnimation = startThinkingAnimation();

                String response = claudeService.sendMessage(userInput, sessionId);

                thinkingAnimation.interrupt();
                System.out.print("\r                                        \r"); // 清除動畫

                System.out.println("Claude: " + response + "\n");

            } catch (Exception e) {
                System.err.println("錯誤: " + e.getMessage() + "\n");
            }
        }

        System.out.println("感謝使用Claude聊天機器人，再見！");
        scanner.close();
    }

    /**
     * 處理特殊指令
     */
    private boolean handleCommand(String input, String currentSessionId, Scanner scanner) {
        String command = input.toLowerCase();

        switch (command) {
            case "exit":
            case "quit":
                return true;

            case "clear":
                claudeService.clearHistory(currentSessionId);
                System.out.println("會話 '" + currentSessionId + "' 的對話歷史已清除！\n");
                break;

            case "history":
                showHistory(currentSessionId);
                break;

            case "sessions":
                showActiveSessions();
                break;

            case "help":
                showHelp();
                break;

            default:
                if (input.startsWith("switch ")) {
                    // 這個在主迴圈中處理
                    return false;
                }
                // 不是指令，返回false讓主迴圈處理為一般訊息
                return false;
        }

        return false;
    }

    /**
     * 顯示思考動畫
     */
    private Thread startThinkingAnimation() {
        Thread animation = new Thread(() -> {
            String[] frames = {".", "..", "...", "...."};
            int frameIndex = 0;

            try {
                while (!Thread.currentThread().isInterrupted()) {
                    System.out.print("\rClaude正在思考中" + frames[frameIndex]);
                    frameIndex = (frameIndex + 1) % frames.length;
                    Thread.sleep(500);
                }
            } catch (InterruptedException e) {
                // 動畫結束
            }
        });

        animation.start();
        return animation;
    }

    /**
     * 顯示對話歷史
     */
    private void showHistory(String sessionId) {
        List<Message> history = claudeService.getConversationHistory(sessionId);
        if (history.isEmpty()) {
            System.out.println("會話 '" + sessionId + "' 目前沒有對話歷史\n");
            return;
        }

        System.out.println("\n=== 會話 '" + sessionId + "' 的對話歷史 ===");
        for (int i = 0; i < history.size(); i++) {
            Message msg = history.get(i);
            String role = "user".equals(msg.getRole()) ? "你" : "Claude";
            System.out.println((i + 1) + ". " + role + ": " + msg.getContent());
            System.out.println("   ─────────────────────────────────────");
        }
        System.out.println("總共 " + history.size() + " 條訊息\n");
    }

    /**
     * 顯示所有活躍會話
     */
    private void showActiveSessions() {
        List<String> sessions = claudeService.getActiveSessions();
        if (sessions.isEmpty()) {
            System.out.println("目前沒有活躍的會話\n");
            return;
        }

        System.out.println("\n=== 活躍會話列表 ===");
        for (int i = 0; i < sessions.size(); i++) {
            String session = sessions.get(i);
            int messageCount = claudeService.getConversationHistory(session).size();
            System.out.println((i + 1) + ". " + session + " (" + messageCount + " 條訊息)");
        }
        System.out.println("使用 'switch <sessionId>' 切換會話\n");
    }

    /**
     * 顯示幫助訊息
     */
    private void showHelp() {
        System.out.println("\n=== 指令說明 ===");
        System.out.println("exit/quit        - 離開程式");
        System.out.println("clear            - 清除當前會話的對話歷史");
        System.out.println("history          - 查看當前會話的對話歷史");
        System.out.println("sessions         - 查看所有活躍會話");
        System.out.println("switch <id>      - 切換到指定會話ID");
        System.out.println("help             - 顯示此幫助訊息");
        System.out.println("\n直接輸入訊息即可與Claude對話\n");
    }
}

