SELECT *
FROM users
WHERE salary = (
    SELECT MAX(salary)
    FROM users
)