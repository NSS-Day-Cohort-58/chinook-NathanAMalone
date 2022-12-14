SELECT
    EmployeeFullName,
    MAX(TotalSum) MaxTotalSum
FROM
    (
    SELECT
        e.FirstName || ' ' || e.LastName EmployeeFullName,
        SUM(i.Total) TotalSum
    FROM Employee e
    JOIN Customer c
        ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i
        ON i.CustomerId = c.CustomerId
    WHERE i.InvoiceDate LIKE "%2009%"
    GROUP BY EmployeeFullName
    ORDER BY TotalSum DESC
    LIMIT 1
    )
GROUP BY EmployeeFullName
ORDER BY MaxTotalSum DESC