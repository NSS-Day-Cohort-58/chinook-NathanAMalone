SELECT
    e.FirstName || ' ' || e.LastName EmployeeFullName,
    COUNT(c.CustomerId) NumberOfCustomers
FROM Employee e
LEFT JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.LastName