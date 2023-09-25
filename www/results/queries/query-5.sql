SELECT name, order_product.quantity, products.price
FROM products JOIN order_product
                   ON products.id = order_product.product_id
WHERE order_id = 1;