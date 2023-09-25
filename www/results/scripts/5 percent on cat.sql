# on suppose qu'on reçoive un nom de catégorie

UPDATE products
    JOIN categories
    ON products.category_id = categories.id
SET price = price * 1.05
WHERE categories.name = 'Pain & CO...';