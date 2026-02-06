SELECT 
    COUNT(*) as total_employees,
    COUNT(DISTINCT Age) AS age,
    COUNT(DISTINCT Department) AS department,
    COUNT(DISTINCT JobRole) AS jobrole,
    COUNT(DISTINCT JobLevel) AS joblevel,
    COUNT(DISTINCT MonthlyIncome) AS income
FROM ibm-hr-project.HR_analytics.employees