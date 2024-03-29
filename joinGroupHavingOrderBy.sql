--Remove those movies from the table with only one rental.
--Order the result table such that movies with highest rating come first.

SELECT m.title, 
COUNT(*),
AVG(r.rating) 
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE c.date_of_birth BETWEEN '1970-01-01' AND '1979-12-31'
GROUP BY m.title
HAVING COUNT(*) > 1  -- Remove movies with only one rental
ORDER BY AVG(r.rating) DESC; -- Order with highest rating first
