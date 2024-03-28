select m.title, c.name, from renting as r
left join
movies as m
on r.movie_id = m.movie_id
left join

customers as c
  on
r.customer_id = c.customer_id
