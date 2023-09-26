/*CREATE VIEW FullAvailability AS

SELECT categories.name, IFNULL(available, 1) AS availability
FROM categories
         LEFT OUTER JOIN (SELECT available, categories.name AS notAvail
                          FROM categories
                                   JOIN products
                                        ON categories.id = products.category_id
                          WHERE available = 0
                          GROUP BY categories.name) AS NotAvailCateg
                         ON NotAvailCateg.notAvail = categories.name;*/

SELECT name FROM FullAvailability
WHERE availability;