SELECT 
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome,
    JobSatisfaction
FROM ibm-hr-project.HR_analytics.employees
WHERE Attrition = FALSE  
    AND MonthlyIncome < 4000
    AND OverTime = TRUE
    AND JobSatisfaction <= 2