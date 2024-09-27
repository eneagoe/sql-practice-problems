SELECT orders.customer_id, customers.company_name, orders.order_id, SUM(unit_price * quantity) AS total_order_amount
  FROM orders
  JOIN customers ON orders.customer_id = customers.customer_id
  JOIN order_details ON order_details.order_id = orders.order_id
  WHERE date_part('year', order_date) = 1998
  GROUP BY 1, 2, 3
  HAVING SUM(unit_price * quantity) >= 10000
  ORDER BY 4 DESC;
