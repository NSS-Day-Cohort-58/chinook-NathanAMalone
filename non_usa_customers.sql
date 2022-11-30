SELECT
    c.FirstName || ' ' || c.LastName CustomerFullName,
    c.CustomerId,
    c.Country
FROM Customer c
WHERE c.Country !="USA"