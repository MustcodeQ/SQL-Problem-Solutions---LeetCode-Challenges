WITH ConsecutivePeople AS (
    SELECT 
        id,
        visit_date,
        people,
        CAST(ROW_NUMBER() OVER (ORDER BY id) AS SIGNED) - CAST(id AS SIGNED) AS group_id
    FROM Stadium
    WHERE people >= 100
),
GroupedPeople AS (
    SELECT 
        group_id,
        COUNT(*) AS consecutive_count,
        MIN(id) AS min_id,
        MAX(id) AS max_id
    FROM ConsecutivePeople
    GROUP BY group_id
    HAVING COUNT(*) >= 3
)
SELECT 
    S.id,
    S.visit_date,
    S.people
FROM Stadium S
JOIN GroupedPeople G
ON S.id BETWEEN G.min_id AND G.max_id
ORDER BY S.visit_date;
