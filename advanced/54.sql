WITH supplier_countries AS
  (SELECT country, count(*) AS total_suppliers FROM suppliers GROUP BY 1),
customer_countries AS
  (SELECT country, count(*) AS total_customers FROM customers GROUP BY 1),
all_countries AS
  (SELECT country FROM suppliers UNION SELECT country FROM customers ORDER BY 1)
SELECT all_countries.country,
       COALESCE(total_suppliers, 0) AS total_suppliers,
       COALESCE(total_customers, 0) AS total_customers
  FROM all_countries
  LEFT JOIN supplier_countries ON all_countries.country = supplier_countries.country
  LEFT JOIN customer_countries ON all_countries.country = customer_countries.country;
