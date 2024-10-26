SELECT 
    T.request_at AS Day,
    ROUND(
        SUM(CASE WHEN T.status IN ('cancelled_by_driver', 'cancelled_by_client') THEN 1 ELSE 0 END) /
        COUNT(T.id), 
        2
    ) AS 'Cancellation Rate'
FROM Trips T
JOIN Users UC ON T.client_id = UC.users_id AND UC.banned = 'No'
JOIN Users UD ON T.driver_id = UD.users_id AND UD.banned = 'No'
WHERE T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY T.request_at;
