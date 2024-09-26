SELECT orders.employee_id, last_name, orders.order_id, product_name, quantity FROM orders
  JOIN employees ON orders.employee_id = employees.employee_id
  JOIN order_details ON orders.order_id = order_details.order_id
  JOIN products ON order_details.product_id = products.product_id
  ORDER BY orders.order_id, products.product_id;
