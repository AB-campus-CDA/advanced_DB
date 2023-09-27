SELECT product_name,
       price,
       SUM(amount),
       ROUND((SUM(amount) * price), 2) AS revenue
FROM bought_last_month
         JOIN product
              ON product_name=product.name
GROUP BY product_name, price
ORDER BY revenue DESC;