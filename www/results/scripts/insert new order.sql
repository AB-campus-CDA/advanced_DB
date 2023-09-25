# get last order number and convert to integer
#//TODO change LPAD(id +1 with something like LPAD( parseInt(number)+1 ...
SELECT @next_number := LPAD(id + 1,10, 0) FROM orders
WHERE id = (
    SELECT
        MAX(id) FROM orders
    WHERE number IS NOT NULL
);

# create new order with number + 1 converted to string with zero
INSERT INTO orders(number, customer_id, date, total)
VALUES (@next_number, 3, CONCAT(CURRENT_DATE, ' ',CURRENT_TIME), null);