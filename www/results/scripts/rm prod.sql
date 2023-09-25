# suppression d'un produit du catalogue en fonction de son (nettoyage par default)

DELETE
FROM products
WHERE name IS NULL;