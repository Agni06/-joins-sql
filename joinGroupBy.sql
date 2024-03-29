--spending by each customer
select rm.customer_id, sum(rm.renting_price)

  from
  
(select r.customer_id, m.renting_price from renting r
left join
movies m
on r.movie_id = m.movie_id) as rm

group by (rm.customer_id);
