DROP TABLE IF EXISTS Customers_orders;

CREATE VIEW Customers_orders AS
SELECT customers.id, COUNT(DISTINCT orders.id) AS n_orders
FROM customers
         LEFT OUTER JOIN orders
                         ON orders.customer_id = customers.id
GROUP BY customers.id;

DELETE
FROM customers
WHERE id = (
    SELECT id
    FROM Customers_orders
    WHERE n_orders = 0);