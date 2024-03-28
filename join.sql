--Augment the table renting with all columns from the table customers with a LEFT JOIN.
--Use as alias' for the tables r and c respectively.

SELECT * -- Join renting with customers
FROM renting r
LEFT JOIN customers c
ON c.customer_id = r.customer_id;
