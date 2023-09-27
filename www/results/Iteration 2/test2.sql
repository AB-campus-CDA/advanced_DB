SELECT
    users.name AS manager,
    department.name AS department,
    COUNT(user_id) AS employees
FROM department
         JOIN users
              ON manager_id=users.id
         JOIN employees
              ON department.id = department_id
GROUP BY department.name, users.name;