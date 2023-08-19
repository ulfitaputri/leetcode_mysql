# Write your MySQL query statement below
SELECT 
    Project.project_id,
    ROUND(SUM(Employee.experience_years)/COUNT(Employee.experience_years),2) as average_years
FROM Project 
JOIN Employee 
USING (employee_id)
GROUP BY 1