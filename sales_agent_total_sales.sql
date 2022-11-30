SELECT
    e.FirstName || ' ' || e.LastName EmployeeFullName,
    COUNT(i.InvoiceId) TotalSales
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
GROUP BY EmployeeFullName