SELECT country, city, count(*) AS total_customers FROM customers GROUP BY country, city ORDER BY 3 DESC;
