SELECT ship_country, avg(freight) AS average_freight FROM orders GROUP BY ship_country ORDER BY 2 DESC LIMIT 3;
