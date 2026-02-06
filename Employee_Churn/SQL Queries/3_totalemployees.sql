SELECT 
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    COUNTIF(Attrition = FALSE) AS stayers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees