SELECT SUM(order_product.quantity * price) AS total
FROM order_product
         JOIN products
              ON order_product.product_id = products.id
         JOIN orders
              ON order_product.order_id = orders.id
WHERE date = CURRENT_DATE
GROUP BY order_id;