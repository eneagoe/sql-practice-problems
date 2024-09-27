SELECT orders.order_id, count(*) AS total_order_details FROM orders JOIN order_details ON orders.order_id = order_details.order_id GROUP BY 1 ORDER BY 2 DESC LIMIT 10;
