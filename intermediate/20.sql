SELECT category_name, count(*) AS total_products FROM products JOIN categories ON categories.category_id = products.category_id GROUP BY category_name ORDER BY 2 DESC;
