# Write your MySQL query statement below
SELECT 
    EmployeeRanked.department_name as Department,
    EmployeeRanked.employee_name as Employee,
    EmployeeRanked.employee_salary as Salary
FROM (
    SELECT
        Department.name as department_name,
        Employee.name as employee_name,
        Employee.salary as employee_salary,
        RANK() OVER (PARTITION BY Employee.departmentId ORDER BY Employee.salary DESC) as salary_rank
    FROM Employee
    JOIN Department 
    ON Employee.departmentId = Department.id
) as EmployeeRanked
WHERE salary_rank = 1;

