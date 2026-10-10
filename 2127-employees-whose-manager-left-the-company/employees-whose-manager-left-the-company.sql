# Write your MySQL query statement below
SELECT e.employee_id
FROM Employees AS e
WHERE e.manager_id NOT IN (
    SELECT s.employee_id
    FROM Employees s
)
AND e.salary < 30000
ORDER BY employee_id;