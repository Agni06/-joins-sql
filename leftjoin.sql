select * from renting_selected as r 
left join 
customers_selected as c
on
r.customer_id = c.customer_id;
