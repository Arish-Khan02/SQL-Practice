# Write your MySQL query statement below
SELECT person_name 
FROM (
    SELECT 
        a.person_name, 
        a.turn,
        sum(b.Weight) AS total_weight
    FROM Queue AS a
    JOIN Queue AS b
        ON b.Turn <= a.Turn
    GROUP BY a.person_id, a.turn, a.person_name
    ORDER BY a.turn
) AS q
WHERE q.total_weight <= 1000
ORDER BY q.turn DESC
LIMIT 1;