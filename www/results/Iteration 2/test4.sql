SELECT customer.name AS name,
       ROUND(SUM(price * amount), 2) AS euro

FROM bought_last_month
         JOIN customer
              ON bought_last_month.customer_id = customer.id
         JOIN product
              ON product_name = product.name
WHERE customer.name = 'Dennis'

UNION ALL

SELECT product_name AS name,
       ROUND((price * amount), 2) AS euro
FROM bought_last_month
         JOIN customer
              ON bought_last_month.customer_id = customer.id
         JOIN product
              ON product_name = product.name
WHERE customer.name = 'Dennis'
