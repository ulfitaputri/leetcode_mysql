# Write your MySQL query statement below
SELECT 
  Prices.product_id, 
  ROUND(SUM(price*units)/SUM(units), 2) as average_price
FROM Prices 
JOIN UnitsSold
USING (product_id)
WHERE UnitsSold.purchase_date between Prices.start_date AND Prices.end_date
GROUP BY 1