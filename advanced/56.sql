SELECT initial_orders.customer_id,
       initial_orders.order_id AS initial_order_id,
       initial_orders.order_date AS initial_order_date,
       next_orders.order_id AS next_order_id,
       next_orders.order_date AS next_order_date,
       next_orders.order_date - initial_orders.order_date AS days_between
  FROM orders initial_orders
  JOIN orders next_orders ON initial_orders.customer_id = next_orders.customer_id
  WHERE next_orders.order_date - initial_orders.order_date <= 5
    AND next_orders.order_id > initial_orders.order_id
  ORDER BY 1, initial_orders.order_date, next_orders.order_date;
