WITH double_entries AS (
  SELECT order_id FROM order_details WHERE quantity >= 60 GROUP BY order_id, quantity HAVING count(quantity) >= 2 ORDER BY order_id
)
SELECT * FROM order_details WHERE order_details.order_id IN (SELECT order_id FROM double_entries);
