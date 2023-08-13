# Write your MySQL query statement below
SELECT (
  SELECT DISTINCT SALARY
  FROM Employee 
  ORDER BY 1 DESC
  LIMIT 1
  OFFSET 1)
AS SecondHighestSalary;
