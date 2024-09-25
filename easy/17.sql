SELECT contact_title, count(*) AS total_contact_title FROM customers GROUP BY contact_title ORDER BY 2 DESC;
