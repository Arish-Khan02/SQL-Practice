# Write your MySQL query statement below
SELECT DISTINCT L1.num AS ConsecutiveNums
FROM Logs AS l1
JOIN Logs AS L2
ON l1.id = l2.id + 1
JOIN Logs AS L3
ON l2.id = l3.id + 1
WHERE l1.num = l2.num AND l2.num = l3.num;
