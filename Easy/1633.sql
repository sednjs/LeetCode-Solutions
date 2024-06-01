# Write your MySQL query statement below
# the percentage of the users registered in each contest rounded to two decimals.

SELECT contest_id, 
       ROUND(COUNT(DISTINCT user_id) / (SELECT COUNT(DISTINCT user_id) FROM Users) * 100,2) AS percentage
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id
