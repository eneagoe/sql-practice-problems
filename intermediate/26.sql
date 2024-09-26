SELECT ship_country, avg(freight) AS average_freight FROM orders WHERE DATE_PART('year', order_date) = 1996 GROUP BY ship_country ORDER BY 2 DESC LIMIT 3;
