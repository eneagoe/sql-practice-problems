SELECT ship_country, avg(freight) AS average_freight FROM orders WHERE order_date >= (SELECT max(order_date) - INTERVAL '1 year' FROM orders) GROUP BY ship_country ORDER BY 2 DESC LIMIT 3;
