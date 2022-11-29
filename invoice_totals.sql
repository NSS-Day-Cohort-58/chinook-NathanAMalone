SELECT
    c.FirstName CustomerFirstName,
    c.LastName CustomerLastName,
    c.Country,
    e.FirstName AgentFirstName,
    e.LastName AgentLastName,
    i.Total InvoiceTotal
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
