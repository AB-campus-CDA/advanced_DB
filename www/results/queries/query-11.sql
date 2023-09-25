SELECT first_name, last_name, SUM(ALL products.price * order_product.quantity) AS total_orders
FROM customers
         LEFT OUTER JOIN orders
                         ON orders.customer_id = customers.id
         LEFT OUTER JOIN order_product
                         ON orders.id = order_product.order_id
         LEFT OUTER JOIN products
                         ON order_product.product_id = products.id
GROUP BY customers.id;