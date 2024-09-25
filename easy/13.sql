SELECT order_id, product_id, unit_price, quantity, ROUND((unit_price * quantity)::numeric, 2) AS total_price FROM order_details ORDER BY order_id, product_id;

