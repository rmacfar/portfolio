SELECT
    COUNTIF(Age IS NULL) AS null_age,
    COUNTIF(Attrition IS NULL) AS null_attrition,
    COUNTIF(Department IS NULL) AS null_department,
    COUNTIF(MonthlyIncome IS NULL) AS null_income,
    COUNTIF(JobRole IS NULL) AS null_jobrole,
    COUNTIF(YearsAtCompany IS NULL) AS null_years
FROM ibm-hr-project.HR_analytics.employees;
