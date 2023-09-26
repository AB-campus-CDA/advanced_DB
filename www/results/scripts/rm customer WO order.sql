DELETE
FROM customers
WHERE id = (
    SELECT id
    FROM Customers_orders
    WHERE n_orders = 0);