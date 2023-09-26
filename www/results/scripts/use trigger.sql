# when an order is made, update
DROP TRIGGER testOnTotal;



CREATE TRIGGER testOnTotal
    AFTER INSERT ON order_product
    FOR EACH ROW
BEGIN
    UPDATE orders
    SET total = total + (SELECT SUM(product_price * product_q) FROM ordered_prods AS
        (SELECT customers.id, COUNT(DISTINCT orders.id) AS n_orders
                         FROM customers
                             LEFT OUTER JOIN orders
                         ON orders.customer_id = customers.id
                         GROUP BY customers.id)
                         WHERE ordered_prods.id=NEW.order_id)
    WHERE orders.id = NEW.order_id;
END;



SELECT @next_number := LPAD( CAST(number AS FLOAT ) + 1,10, 0) FROM orders
WHERE id = (
    SELECT
        MAX(id) FROM orders
    WHERE number IS NOT NULL
);

# create new order with number + 1 converted to string with zero
INSERT INTO orders(number, customer_id, date, total)
VALUES (@next_number, 3, CONCAT(CURRENT_DATE, ' ',CURRENT_TIME), 0);

# add 3 products to this order
SELECT @current_order_id := id FROM orders WHERE id = (SELECT MAX(id) FROM orders);

INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 2, 6);
INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 3, 7);
INSERT INTO order_product(order_id, product_id, quantity)
VALUES (@current_order_id, 14, 8);