
SELECT * FROM Ordered_products
WHERE order_id NOT IN (
    SELECT orders.id
    FROM orders
             JOIN order_product
                  ON orders.id = order_product.order_id
             JOIN products
                  ON order_product.product_id = products.id
    WHERE products.name = 'B - Coca'
);
