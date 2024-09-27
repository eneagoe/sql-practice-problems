SELECT order_id FROM order_details WHERE quantity >= 60 GROUP BY order_id, quantity HAVING count(quantity) >= 2 ORDER BY order_id;
