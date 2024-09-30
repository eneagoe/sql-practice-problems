WITH country_orders AS
(
  SELECT ship_country, customer_id, order_id, order_date,
         row_number() OVER (PARTITION BY ship_country ORDER BY order_date) AS rn
  FROM orders
)
SELECT ship_country, customer_id, order_id, order_date
FROM country_orders WHERE rn = 1;
