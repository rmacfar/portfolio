SELECT 
    'High Risk Profile' AS flagged,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
WHERE MonthlyIncome < 4000
    AND OverTime = TRUE
    AND JobSatisfaction <= 2