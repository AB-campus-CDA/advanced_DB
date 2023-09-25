# get last order number and convert to integer

SELECT @next_number := LPAD( CAST(number AS FLOAT ) + 1,10, 0) FROM orders
WHERE id = (
    SELECT
        MAX(id) FROM orders
    WHERE number IS NOT NULL
);

# create new order with number + 1 converted to string with zero
INSERT INTO orders(number, customer_id, date, total)
VALUES (@next_number, 3, CONCAT(CURRENT_DATE, ' ',CURRENT_TIME), null);

# add 3 products to this order
SELECT @current_order_id := id FROM orders WHERE id = (SELECT MAX(id) FROM orders);

INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 2, 6);
INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 3, 7);
INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 14, 8);