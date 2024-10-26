WITH RankedSalaries AS (
    SELECT 
        E.name AS Employee,
        E.salary AS Salary,
        D.name AS Department,
        DENSE_RANK() OVER (PARTITION BY E.departmentId ORDER BY E.salary DESC) AS salary_rank
    FROM Employee E
    JOIN Department D ON E.departmentId = D.id
)
SELECT 
    Department,
    Employee,
    Salary
FROM RankedSalaries
WHERE salary_rank <= 3
ORDER BY Department, Salary DESC;
