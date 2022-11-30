--If wanting total amount spent
SELECT
    BillingCountry Country,
    SUM(Total) SumOfTotal
FROM Invoice
GROUP BY BillingCountry

--If wanting how many sales were made
SELECT
    BillingCountry Country,
    COUNT(InvoiceId) TotalSalesMade
FROM Invoice
GROUP BY Country