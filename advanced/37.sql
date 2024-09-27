SELECT order_id FROM orders ORDER BY random() LIMIT (SELECT count(*) / 50 FROM orders);
