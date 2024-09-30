WITH amounts AS
  (SELECT orders.customer_id, customers.company_name, ROUND(SUM(unit_price * quantity)::numeric, 2) AS total_order_amount
    FROM orders
    JOIN customers ON orders.customer_id = customers.customer_id
    JOIN order_details ON order_details.order_id = orders.order_id
    WHERE date_part('year', order_date) = 1998
    GROUP BY 1, 2),
grouped_customers AS
(SELECT amounts.*,
    CASE
      WHEN total_order_amount >= 0 AND total_order_amount < 1000 THEN 'Low'
      WHEN total_order_amount >= 1000 AND total_order_amount < 5000 THEN 'Medium'
      WHEN total_order_amount >= 5000 AND total_order_amount < 10000 THEN 'High'
      ELSE 'Very High'
    END
  AS customer_group FROM amounts ORDER BY 1)
SELECT customer_group, count(*) AS total_in_group, count(*) / sum(count(*)) OVER () AS percentage_in_group
FROM grouped_customers GROUP BY 1 ORDER BY 3 DESC;
