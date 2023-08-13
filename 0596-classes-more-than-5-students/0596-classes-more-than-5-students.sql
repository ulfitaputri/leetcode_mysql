# Write your MySQL query statement below
select class
from Courses
group by 1
having count(student) >= 5

