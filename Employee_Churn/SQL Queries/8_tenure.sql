SELECT 
  CASE 
    WHEN YearsAtCompany < 2 THEN '0-1 years'
    WHEN YearsAtCompany < 5 THEN '2-4 years'
    WHEN YearsAtCompany < 10 THEN '5-9 years'
    ELSE '10+ years'
  END AS tenure_band,
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS leavers,
  ROUND(COUNTIF(Attrition = TRUE) / COUNT(*) * 100, 2) AS attrition_rate_pct
FROM ibm-hr-project.HR_analytics.employees
GROUP BY tenure_band
ORDER BY tenure_band