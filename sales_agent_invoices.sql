SELECT
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
ORDER BY i.InvoiceId
