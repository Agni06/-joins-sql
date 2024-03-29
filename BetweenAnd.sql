--Select only those records of customers born in the 70s.
SELECT *
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
where date_of_birth between '1970-01-01' and '1979-12-31'; -- Select customers born in the 70s
