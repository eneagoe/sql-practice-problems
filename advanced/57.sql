WITH next_orders AS
(SELECT customer_id, order_date,
       LEAD(order_date, 1) OVER (PARTITION BY customer_id ORDER BY customer_id, order_date) AS next_order_date
  FROM orders
  ORDER BY customer_id, order_id)
SELECT customer_id, order_date, next_order_date, next_order_date - order_date AS days_between_orders
  FROM next_orders
  WHERE next_order_date - order_date <= 5;
