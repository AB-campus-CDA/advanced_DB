CREATE VIEW Ordered_products AS
SELECT orders.id AS id,
       orders.number AS number,
       products.id AS product_id,
       products.name AS product_name,
       products.quantity AS product_q,
       products.price AS product_price,
       products.category_id AS cat_id,
       categories.name AS category_name
FROM orders
         JOIN order_product
              ON orders.id = order_product.order_id
         JOIN products
              ON order_product.product_id = products.id
         JOIN categories
              ON products.category_id = categories.id;


CREATE VIEW Customers_orders AS
SELECT customers.id, COUNT(DISTINCT orders.id) AS n_orders
FROM customers
         LEFT OUTER JOIN orders
                         ON orders.customer_id = customers.id
GROUP BY customers.id;