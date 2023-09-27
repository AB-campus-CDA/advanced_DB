CREATE VIEW depart_employees AS
SELECT
    users.id AS user_id,
    users.name AS user_name,
    users.salary AS user_salary,
    department_id AS dep_id,
    department.name AS dep_name,
    manager_id
FROM users
         JOIN employees
              ON users.id = employees.user_id
         JOIN department
              ON employees.department_id = department.id