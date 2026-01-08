select c.name, order_id
from cusstomer as c
inner join orders as o on c.id = o.customer_id;
