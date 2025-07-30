package Karate.tools;

import java.util.*;
import java.util.stream.Collectors;

/**
 *  操作覆蓋比對器 - 比較 API 文件中的操作與 Karate 測試中的實現
 * 使用正則表達式進行精確比對，生成詳細的覆蓋率報告
 *
 * @author StaticBlackbox Team
 * @version 1.0 - Operation Coverage Analysis
 */
public class OperationCoverageComparator {

    /**
     * 比對結果封裝類
     */
    public static class ComparisonResult {
        private final List<ApiOperationExtractor.ApiOperation> expectedOperations;   // API 文件中的操作
        private final List<ApiOperationExtractor.ApiOperation> implementedOperations; // Karate 中實現的操作
        private final List<ApiOperationExtractor.ApiOperation> coveredOperations;     // 已覆蓋的操作
        private final List<ApiOperationExtractor.ApiOperation> missingOperations;     // 缺失的操作
        private final List<ApiOperationExtractor.ApiOperation> extraOperations;      // 額外的操作（可能是測試錯誤）
        private final double coveragePercentage;
        private final String summary;
        private final List<String> warnings;

        public ComparisonResult(List<ApiOperationExtractor.ApiOperation> expectedOperations,
                                List<ApiOperationExtractor.ApiOperation> implementedOperations,
                                List<ApiOperationExtractor.ApiOperation> coveredOperations,
                                List<ApiOperationExtractor.ApiOperation> missingOperations,
                                List<ApiOperationExtractor.ApiOperation> extraOperations) {

            this.expectedOperations = new ArrayList<>(expectedOperations);
            this.implementedOperations = new ArrayList<>(implementedOperations);
            this.coveredOperations = new ArrayList<>(coveredOperations);
            this.missingOperations = new ArrayList<>(missingOperations);
            this.extraOperations = new ArrayList<>(extraOperations);
            this.warnings = new ArrayList<>();

            // 計算覆蓋率
            this.coveragePercentage = expectedOperations.isEmpty() ? 100.0 :
                    (double) coveredOperations.size() / expectedOperations.size() * 100.0;

            // 生成摘要
            this.summary = generateSummary();
        }

        // Getters
        public List<ApiOperationExtractor.ApiOperation> getExpectedOperations() { return new ArrayList<>(expectedOperations); }
        public List<ApiOperationExtractor.ApiOperation> getImplementedOperations() { return new ArrayList<>(implementedOperations); }
        public List<ApiOperationExtractor.ApiOperation> getCoveredOperations() { return new ArrayList<>(coveredOperations); }
        public List<ApiOperationExtractor.ApiOperation> getMissingOperations() { return new ArrayList<>(missingOperations); }
        public List<ApiOperationExtractor.ApiOperation> getExtraOperations() { return new ArrayList<>(extraOperations); }
        public double getCoveragePercentage() { return coveragePercentage; }
        public String getSummary() { return summary; }
        public List<String> getWarnings() { return new ArrayList<>(warnings); }

        public void addWarning(String warning) {
            this.warnings.add(warning);
        }

        public boolean isFullyCovered() {
            return missingOperations.isEmpty();
        }

        public boolean hasExtraOperations() {
            return !extraOperations.isEmpty();
        }

        private String generateSummary() {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format("覆蓋率: %.1f%% (%d/%d)",
                    coveragePercentage, coveredOperations.size(), expectedOperations.size()));

            if (!missingOperations.isEmpty()) {
                sb.append(String.format(", 缺失: %d個", missingOperations.size()));
            }

            if (!extraOperations.isEmpty()) {
                sb.append(String.format(", 額外: %d個", extraOperations.size()));
            }

            return sb.toString();
        }

        /**
         * 生成詳細的比對報告（給 GPT 使用）
         */
        public String generateDetailedReport() {
            StringBuilder report = new StringBuilder();

            report.append("=".repeat(60)).append("\n");
            report.append(" API 操作覆蓋率比對報告\n");
            report.append("=".repeat(60)).append("\n");

            report.append(String.format(" 總體覆蓋率: %.1f%% (%d/%d)\n\n",
                    coveragePercentage, coveredOperations.size(), expectedOperations.size()));

            // 已覆蓋的操作
            if (!coveredOperations.isEmpty()) {
                report.append(" 已正確實現的 API 操作:\n");
                for (ApiOperationExtractor.ApiOperation op : coveredOperations) {
                    report.append(String.format("   • %s\n", op.toString()));
                }
                report.append("\n");
            }

            // 缺失的操作
            if (!missingOperations.isEmpty()) {
                report.append(" 缺失的 API 操作（需要補充）:\n");
                for (ApiOperationExtractor.ApiOperation op : missingOperations) {
                    report.append(String.format("   • %s", op.toString()));
                    if (op.getSummary() != null) {
                        report.append(String.format(" - %s", op.getSummary()));
                    }
                    report.append("\n");
                }
                report.append("\n");
            }

            // 額外的操作
            if (!extraOperations.isEmpty()) {
                report.append(" 額外實現的操作（可能是錯誤或多餘）:\n");
                for (ApiOperationExtractor.ApiOperation op : extraOperations) {
                    report.append(String.format("   • %s\n", op.toString()));
                }
                report.append("\n");
            }

            // HTTP 方法統計
            report.append(" HTTP 方法統計:\n");
            Map<String, Integer> expectedCounts = countByMethod(expectedOperations);
            Map<String, Integer> implementedCounts = countByMethod(implementedOperations);

            Set<String> allMethods = new HashSet<>(expectedCounts.keySet());
            allMethods.addAll(implementedCounts.keySet());

            for (String method : allMethods) {
                int expected = expectedCounts.getOrDefault(method, 0);
                int implemented = implementedCounts.getOrDefault(method, 0);
                String status = implemented >= expected ? "" : "";
                report.append(String.format("   %s %s: %d/%d\n", status, method, implemented, expected));
            }

            report.append("\n").append("=".repeat(60)).append("\n");

            return report.toString();
        }

        private Map<String, Integer> countByMethod(List<ApiOperationExtractor.ApiOperation> operations) {
            return operations.stream()
                    .collect(Collectors.groupingBy(
                            ApiOperationExtractor.ApiOperation::getMethod,
                            Collectors.summingInt(op -> 1)
                    ));
        }

        /**
         * 生成給 GPT 的簡化比對提示
         */
        public String generateGptPrompt() {
            StringBuilder prompt = new StringBuilder();

            prompt.append("\n API 操作覆蓋率分析結果:\n");
            prompt.append(String.format("覆蓋率: %.1f%% (%d/%d 個操作已實現)\n",
                    coveragePercentage, coveredOperations.size(), expectedOperations.size()));

            if (!missingOperations.isEmpty()) {
                prompt.append("\n 以下 API 操作尚未在 Karate 測試中實現，請特別注意:\n");
                for (ApiOperationExtractor.ApiOperation op : missingOperations) {
                    prompt.append(String.format("   • %s", op.getFullSignature()));
                    if (op.getSummary() != null) {
                        prompt.append(String.format(" (%s)", op.getSummary()));
                    }
                    prompt.append("\n");
                }
            }

            if (!extraOperations.isEmpty()) {
                prompt.append("\n 以下操作在 Karate 中實現但不在 API 文件中，請確認:\n");
                for (ApiOperationExtractor.ApiOperation op : extraOperations) {
                    prompt.append(String.format("   • %s\n", op.getFullSignature()));
                }
            }

            if (isFullyCovered() && !hasExtraOperations()) {
                prompt.append("\n 所有 API 操作都已正確實現！");
            }

            return prompt.toString();
        }
    }

    /**
     *  主要比對方法：比較期望操作與實現操作
     */
    public ComparisonResult compareOperations(
            ApiOperationExtractor.ApiAnalysisResult expectedResult,
            String karateContent) {

        // 1. 從 Karate 內容提取已實現的操作
        ApiOperationExtractor extractor = new ApiOperationExtractor();
        List<ApiOperationExtractor.ApiOperation> implementedOps =
                extractor.extractImplementedOperations(karateContent);

        // 2. 執行比對
        return compareOperations(expectedResult.getOperations(), implementedOps);
    }

    /**
     *  詳細比對兩個操作列表
     */
    public ComparisonResult compareOperations(
            List<ApiOperationExtractor.ApiOperation> expectedOps,
            List<ApiOperationExtractor.ApiOperation> implementedOps) {

        List<ApiOperationExtractor.ApiOperation> coveredOps = new ArrayList<>();
        List<ApiOperationExtractor.ApiOperation> missingOps = new ArrayList<>();
        List<ApiOperationExtractor.ApiOperation> extraOps = new ArrayList<>();

        // 創建快速查找的 Set（基於 method + path）
        Set<String> expectedSignatures = expectedOps.stream()
                .map(ApiOperationExtractor.ApiOperation::getFullSignature)
                .collect(Collectors.toSet());

        Set<String> implementedSignatures = implementedOps.stream()
                .map(ApiOperationExtractor.ApiOperation::getFullSignature)
                .collect(Collectors.toSet());

        // 找出已覆蓋的操作
        for (ApiOperationExtractor.ApiOperation expectedOp : expectedOps) {
            String signature = expectedOp.getFullSignature();

            if (implementedSignatures.contains(signature) ||
                    isPathMatching(expectedOp, implementedOps)) {
                coveredOps.add(expectedOp);
            } else {
                missingOps.add(expectedOp);
            }
        }

        // 找出額外實現的操作
        for (ApiOperationExtractor.ApiOperation implementedOp : implementedOps) {
            String signature = implementedOp.getFullSignature();

            if (!expectedSignatures.contains(signature) &&
                    !isPathMatching(implementedOp, expectedOps)) {
                extraOps.add(implementedOp);
            }
        }

        ComparisonResult result = new ComparisonResult(
                expectedOps, implementedOps, coveredOps, missingOps, extraOps);

        // 添加智能警告
        addIntelligentWarnings(result);

        return result;
    }

    /**
     *  路徑匹配檢查（處理路徑參數的差異）
     */
    private boolean isPathMatching(ApiOperationExtractor.ApiOperation targetOp,
                                   List<ApiOperationExtractor.ApiOperation> candidateOps) {

        for (ApiOperationExtractor.ApiOperation candidate : candidateOps) {
            if (!targetOp.getMethod().equals(candidate.getMethod())) {
                continue;
            }

            // 精確匹配
            if (targetOp.getPath().equals(candidate.getPath())) {
                return true;
            }

            // 路徑參數匹配 (/users/{id} vs /users/123)
            if (isPathParameterMatch(targetOp.getPath(), candidate.getPath())) {
                return true;
            }
        }

        return false;
    }

    /**
     *  路徑參數匹配檢查
     */
    private boolean isPathParameterMatch(String expectedPath, String actualPath) {
        // 將 {id} 替換為通配符進行匹配
        String expectedPattern = expectedPath
                .replaceAll("\\{[^}]+\\}", "[^/]+")  // {id} -> [^/]+
                .replaceAll("/", "\\\\/");           // / -> \/

        // 將 123 等數字替換為通配符進行匹配
        String actualPattern = actualPath
                .replaceAll("\\d+", "[^/]+")         // 數字 -> [^/]+
                .replaceAll("/", "\\\\/");           // / -> \/

        return expectedPath.matches(actualPattern) || actualPath.matches(expectedPattern);
    }

    /**
     *  添加智能警告和建議
     */
    private void addIntelligentWarnings(ComparisonResult result) {
        // 檢查常見的路徑參數問題
        for (ApiOperationExtractor.ApiOperation missing : result.getMissingOperations()) {
            for (ApiOperationExtractor.ApiOperation implemented : result.getImplementedOperations()) {
                if (missing.getMethod().equals(implemented.getMethod()) &&
                        areSimilarPaths(missing.getPath(), implemented.getPath())) {
                    result.addWarning(String.format(
                            "路徑可能不匹配: 期望 '%s'，實現 '%s'",
                            missing.getPath(), implemented.getPath()));
                }
            }
        }

        // 檢查方法不匹配但路徑相同的情況
        for (ApiOperationExtractor.ApiOperation missing : result.getMissingOperations()) {
            for (ApiOperationExtractor.ApiOperation implemented : result.getImplementedOperations()) {
                if (missing.getPath().equals(implemented.getPath()) &&
                        !missing.getMethod().equals(implemented.getMethod())) {
                    result.addWarning(String.format(
                            "方法不匹配: 路徑 '%s' 期望 %s，實現 %s",
                            missing.getPath(), missing.getMethod(), implemented.getMethod()));
                }
            }
        }

        // 覆蓋率建議
        if (result.getCoveragePercentage() < 50) {
            result.addWarning("覆蓋率過低，建議檢查 API 文件解析是否正確");
        } else if (result.getCoveragePercentage() < 80) {
            result.addWarning("覆蓋率偏低，建議補充缺失的測試案例");
        }
    }

    /**
     *  檢查路徑相似性
     */
    private boolean areSimilarPaths(String path1, String path2) {
        // 移除路徑參數後比較
        String normalized1 = path1.replaceAll("\\{[^}]+\\}", "{}");
        String normalized2 = path2.replaceAll("\\d+", "{}");

        return normalized1.equals(normalized2) ||
                path1.replace("_", "-").equals(path2.replace("_", "-")) ||
                path1.toLowerCase().equals(path2.toLowerCase());
    }

    /**
     *  生成統計報告
     */
    public String generateStatisticsReport(ComparisonResult result) {
        StringBuilder report = new StringBuilder();

        report.append(" 操作覆蓋統計報告:\n");
        report.append(String.format("   總體覆蓋率: %.1f%%\n", result.getCoveragePercentage()));
        report.append(String.format("   期望操作數: %d 個\n", result.getExpectedOperations().size()));
        report.append(String.format("   實現操作數: %d 個\n", result.getImplementedOperations().size()));
        report.append(String.format("   已覆蓋操作: %d 個\n", result.getCoveredOperations().size()));
        report.append(String.format("   缺失操作數: %d 個\n", result.getMissingOperations().size()));
        report.append(String.format("   額外操作數: %d 個\n", result.getExtraOperations().size()));

        if (!result.getWarnings().isEmpty()) {
            report.append("\n 警告:\n");
            for (String warning : result.getWarnings()) {
                report.append(String.format("   • %s\n", warning));
            }
        }

        return report.toString();
    }
}