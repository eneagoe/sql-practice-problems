SELECT employee_id, order_id, order_date FROM orders WHERE (date_trunc('MONTH', order_date) + INTERVAL '1 MONTH - 1 day') = order_date ORDER BY employee_id, order_id;
