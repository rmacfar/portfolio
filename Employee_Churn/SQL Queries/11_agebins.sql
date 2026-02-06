SELECT 
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age < 35 THEN '25-34'
        WHEN Age < 45 THEN '35-44'
        WHEN Age < 55 THEN '45-54'
        ELSE '55+'
    END AS age_band,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
GROUP BY age_band
ORDER BY age_band