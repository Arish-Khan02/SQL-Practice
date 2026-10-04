# Write your MySQL query statement below
SELECT MAX(num) as num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) < 2
) AS single_num;