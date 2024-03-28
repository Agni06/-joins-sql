--Select only records from customers coming from Belgium.

SELECT *
FROM renting AS r
LEFT JOIN customers AS c
ON r.customer_id = c.customer_id
where
c.country = 'Belgium'
; -- Select only records from customers coming from Belgium
