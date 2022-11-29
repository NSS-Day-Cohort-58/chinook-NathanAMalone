SELECT
    c.id,
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Customer c
JOIN Invoice i
    ON i.CustomerId = c.id
WHERE c.Country ="Brazil"