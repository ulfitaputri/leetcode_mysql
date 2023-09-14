# Write your MySQL query statement below

WITH CTE as(
    SELECT
        player_id,
        DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS login
    FROM Activity
)

SELECT ROUND(SUM(login)/COUNT(DISTINCT player_id), 2) as fraction 
FROM CTE