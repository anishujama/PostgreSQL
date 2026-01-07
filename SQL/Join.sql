select c.first_name, p.amount,p.mode
from customer as c
full outer join payment as p
on c.customer_id = p.customer_id

select c.first_name, p.amount,p.mode
from customer as c
right join payment as p
on c.customer_id = p.customer_id

select c.first_name, p.amount,p.mode
from customer as c
left join payment as p
on c.customer_id = p.customer_id

select c.first_name, p.amount,p.mode
from customer as c
inner join payment as p
on c.customer_id = p.customer_id
