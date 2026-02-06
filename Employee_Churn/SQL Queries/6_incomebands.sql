SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN '1. Under 3K'
        WHEN MonthlyIncome < 5000 THEN '2. 3K-5K'
        WHEN MonthlyIncome < 8000 THEN '3. 5K-8K'
        WHEN MonthlyIncome < 12000 THEN '4. 8K-12K'
        ELSE '5. 12K+'
    END AS income_band,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
GROUP BY income_band
ORDER BY income_band