SELECT 
    Gender,
    JobLevel,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct,
    ROUND(AVG(MonthlyIncome), 0) AS avg_income
FROM ibm-hr-project.HR_analytics.employees
GROUP BY Gender, JobLevel
ORDER BY JobLevel, Gender