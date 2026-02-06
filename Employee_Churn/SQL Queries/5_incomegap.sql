SELECT 
    JobRole,
    ROUND(AVG(CASE WHEN Attrition = TRUE THEN MonthlyIncome END), 0) AS avg_leavers,
    ROUND(AVG(CASE WHEN Attrition = FALSE THEN MonthlyIncome END), 0) AS avg_stayers,
    ROUND(AVG(CASE WHEN Attrition = FALSE THEN MonthlyIncome END) - 
          AVG(CASE WHEN Attrition = TRUE THEN MonthlyIncome END), 0) AS income_gap
FROM ibm-hr-project.HR_analytics.employees
GROUP BY JobRole
ORDER BY income_gap DESC