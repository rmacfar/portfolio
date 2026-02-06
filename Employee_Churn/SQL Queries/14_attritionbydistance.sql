SELECT 
    CASE 
        WHEN DistanceFromHome <= 5 THEN '1. 0-5 km'
        WHEN DistanceFromHome <= 10 THEN '2. 6-10 km'
        WHEN DistanceFromHome <= 20 THEN '3. 11-20 km'
        ELSE '4. 20+ km'
    END AS distance_band,
    COUNT(*) AS total_employees,
    COUNTIF(Attrition = TRUE) AS leavers,
    ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
GROUP BY distance_band
ORDER BY distance_band