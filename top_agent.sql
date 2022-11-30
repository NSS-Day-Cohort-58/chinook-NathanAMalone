   SELECT
        e.FirstName || ' ' || e.LastName EmployeeFullName,
        SUM(i.Total) TotalSum
    FROM Employee e
    JOIN Customer c
        ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i
        ON i.CustomerId = c.CustomerId
    GROUP BY EmployeeFullName
    ORDER BY TotalSum DESC
    LIMIT 1