SELECT s1.id, s1.visit_date, s1.people
FROM Stadium s1
JOIN Stadium s2 ON s1.id = s2.id + 1 AND s2.people >= 100
JOIN Stadium s3 ON s2.id = s3.id + 1 AND s3.people >= 100
WHERE s1.people >= 100
UNION
SELECT s2.id, s2.visit_date, s2.people
FROM Stadium s1
JOIN Stadium s2 ON s1.id = s2.id + 1 AND s2.people >= 100
JOIN Stadium s3 ON s2.id = s3.id + 1 AND s3.people >= 100
WHERE s1.people >= 100
UNION
SELECT s3.id, s3.visit_date, s3.people
FROM Stadium s1
JOIN Stadium s2 ON s1.id = s2.id + 1 AND s2.people >= 100
JOIN Stadium s3 ON s2.id = s3.id + 1 AND s3.people >= 100
WHERE s1.people >= 100
ORDER BY visit_date;
