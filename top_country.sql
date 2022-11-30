SELECT
    BillingCountry Country,
    SUM(Total) SumOfTotal
FROM Invoice
GROUP BY BillingCountry
ORDER BY SumOfTotal DESC
LIMIT 1