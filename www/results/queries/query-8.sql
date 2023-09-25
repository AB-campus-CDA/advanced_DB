SELECT * from (
                  SELECT number, SUM(order_product.quantity * price) AS total
                  FROM order_product
                           JOIN products
                                ON order_product.product_id = products.id
                           JOIN orders
                                ON order_product.order_id = orders.id
                  GROUP BY order_id
              ) as all_orders
WHERE total BETWEEN 100 AND 550;