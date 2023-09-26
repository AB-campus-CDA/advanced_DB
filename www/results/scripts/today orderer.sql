SELECT customers.id, first_name, last_name, address, postal_code, city
FROM customers
         JOIN orders
              ON customers.id = orders.customer_id
WHERE DATE(date) = CURRENT_DATE
GROUP BY customers.id, first_name, last_name, address, postal_code, city;
