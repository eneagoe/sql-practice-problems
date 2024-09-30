WITH countries AS
  (SELECT suppliers.country AS supplier_country, customers.country AS customer_country, COALESCE(suppliers.country, customers.country) AS country_name FROM suppliers FULL OUTER JOIN customers ON suppliers.country = customers.country GROUP BY 1, 2 ORDER BY country_name)
SELECT supplier_country, customer_country FROM countries;
