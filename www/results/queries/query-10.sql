SELECT first_name, last_name, COUNT(DISTINCT orders.id) AS n_orders
FROM customers
         LEFT OUTER JOIN orders
                         ON orders.customer_id = customers.id
GROUP BY customers.id;