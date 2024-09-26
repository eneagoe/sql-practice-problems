SELECT customer_id FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM orders WHERE employee_id = 4);
