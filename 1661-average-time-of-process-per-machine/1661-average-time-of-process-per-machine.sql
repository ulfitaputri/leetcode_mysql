# Write your MySQL query statement below
WITH CTE1 AS (
  SELECT 
    machine_id, 
    ROUND(SUM(timestamp), 3) as total_start,
    COUNT(machine_id) as machine_count
  FROM Activity
  WHERE activity_type = 'start'
  GROUP BY 1
),
CTE2 AS(
  SELECT 
    machine_id,
    ROUND(SUM(timestamp), 3) as total_end,
    COUNT(machine_id) as machine_count
  FROM Activity
  WHERE activity_type = 'end'
  GROUP BY 1
)
SELECT
  CTE1.machine_id,
  ROUND((CTE2.total_end - CTE1.total_start)/CTE1.machine_count, 3) as processing_time
FROM CTE1
JOIN CTE2
USING (machine_id)