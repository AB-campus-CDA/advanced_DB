# when an order is made, update total

CREATE TRIGGER testOnTotal
    AFTER INSERT ON order_product
    FOR EACH ROW
BEGIN
    UPDATE orders
    SET total = total + NEW.quantity * (SELECT price FROM products WHERE products.id = NEW.product_id)
    WHERE orders.id = NEW.order_id;
END;
