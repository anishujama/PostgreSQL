with my_cp AS (
	select *, avg(amount) over(order by p.customer_id) as "average_price",
	count(address_id) over (order by c.customer_id) as "count"
	from payment as p
	inner join customer as c
	on p.customer_id = c.customer_id
),
my_ca as(
	select *
	from customer as c
	inner join address as a 
	on a.address_id = c.address_id
	inner join country as cc
	on cc.city_id = a.city_id
)
select cp.first_name, cp.last_name, ca.city, ca.country, cp.amount, 
from my_ca as ca my_cp as cp