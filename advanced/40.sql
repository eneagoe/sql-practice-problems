SELECT * FROM order_details
  JOIN (SELECT order_id FROM order_details WHERE quantity >= 60 GROUP BY order_id, quantity HAVING count(*) > 1) double_entries ON double_entries.order_id = order_details.order_id
  ORDER BY order_details.order_id, product_id;
