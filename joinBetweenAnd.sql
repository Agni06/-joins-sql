-- you can report these values for the year 2018. 
 -- Calculate the revenue in 2018, the number of movie rentals and the number of active customers in 2018. 
 -- An active customer is a customer who rented at least one movie in 2018.

SELECT 
	SUM(m.renting_price), 
	COUNT(*), 
	COUNT(DISTINCT r.customer_id)
FROM renting AS r
LEFT JOIN movies AS m
ON r.movie_id = m.movie_id
-- Only look at movie rentals in 2018
WHERE date_renting BETWEEN '2018-01-01' AND '2018-12-31';
