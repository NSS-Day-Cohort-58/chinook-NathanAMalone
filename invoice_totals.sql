SELECT
    i.Total InvoiceTotal,
    c.FirstName || ' ' || c.LastName CustomerFullName,
    c.Country,
    e.FirstName || ' ' || e.LastName AgentFullName
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
