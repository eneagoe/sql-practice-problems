WITH order_counts AS
(SELECT employee_id, count(*) AS all_orders FROM orders GROUP BY employee_id)
SELECT orders.employee_id, last_name, all_orders, count(order_id) AS late_orders, count(order_id) / all_orders::float AS percent_last_orders FROM orders
  JOIN employees ON employees.employee_id = orders.employee_id
  JOIN order_counts ON employees.employee_id = order_counts.employee_id
  WHERE shipped_date >= required_date GROUP BY 1, 2, 3 ORDER BY 1;
