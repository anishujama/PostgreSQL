select c.name, order_id
from cusstomer as c
left join orders as o on c.id = o.customer_id;
