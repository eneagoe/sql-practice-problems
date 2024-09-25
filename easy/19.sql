SELECT order_id, order_date, company_name FROM orders JOIN shippers ON orders.ship_via = shippers.shipper_id WHERE order_id < 10300 ORDER BY order_id;
