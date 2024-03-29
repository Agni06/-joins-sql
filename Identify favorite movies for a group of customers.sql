--For each movie, report the number of times it was rented, as well as the average rating. Limit your results to customers born in the 1970

SELECT m.title, 
count(*) ,-- Report number of views per movie
avg(r.rating) -- Report the average rating per movie
FROM renting AS r
LEFT JOIN customers AS c
ON c.customer_id = r.customer_id
LEFT JOIN movies AS m
ON m.movie_id = r.movie_id
WHERE c.date_of_birth BETWEEN '1970-01-01' AND '1979-12-31'
group by m.title;
