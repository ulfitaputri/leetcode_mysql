# Write your MySQL query statement below
SELECT MAX(num) as num
FROM MyNumbers 
WHERE num in (
    SELECT num 
    FROM MyNUmbers 
    GROUP BY num
    HAVING COUNT(num) = 1
)
