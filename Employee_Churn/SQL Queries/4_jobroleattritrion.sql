SELECT 
    JobRole,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
GROUP BY JobRole
ORDER BY attrition_rate_pct DESC