SELECT S.user_id, 
       COALESCE(ROUND(COUNT(CASE WHEN C.action='confirmed' THEN 1 END) / COUNT(C.action),2),0) as confirmation_rate
FROM Signups as S
LEFT JOIN Confirmations as C ON S.user_id=C.user_id
GROUP BY S.user_id 
