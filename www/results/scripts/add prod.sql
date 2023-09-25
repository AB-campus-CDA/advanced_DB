# on suppose que le client ait fourni un nom de catégorie (il faut insert l'id) et une quantité

SELECT @cat_id := (SELECT id FROM categories WHERE name = 'Slow Food');

INSERT INTO products(category_id, quantity)
    VALUES (@cat_id, 600);