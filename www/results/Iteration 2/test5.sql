SELECT player, MAX(score) AS score
FROM scores
WHERE scores.player = player
GROUP BY player;