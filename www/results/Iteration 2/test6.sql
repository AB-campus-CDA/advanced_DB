SELECT bill_id, euro_cache, employee, 'Amsterdam' AS plaats
FROM bills_amsterdam
UNION ALL
SELECT bill_id, euro_cache, employee, 'Antwerpen'
FROM bills_antwerpen
UNION ALL
SELECT bill_id, euro_cache, employee, 'Groningen'
FROM bills_groningen
UNION ALL
SELECT bill_id, euro_cache, employee, 'Haarlem'
FROM bills_haarlem
UNION ALL
SELECT bill_id, euro_cache, employee, 'Leiden'
FROM bills_leiden
ORDER BY bill_id;