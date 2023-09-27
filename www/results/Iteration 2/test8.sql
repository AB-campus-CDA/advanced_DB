SELECT 'Amsterdam' AS place, SUM(euro_cache) AS revenue
FROM bills_amsterdam
UNION ALL
SELECT 'Antwerpen', SUM(euro_cache)
FROM bills_antwerpen
UNION ALL
SELECT 'Groningen', SUM(euro_cache)
FROM bills_groningen
UNION ALL
SELECT 'Haarlem', SUM(euro_cache)
FROM bills_haarlem
UNION ALL
SELECT 'Leiden', SUM(euro_cache)
FROM bills_leiden
ORDER BY revenue DESC