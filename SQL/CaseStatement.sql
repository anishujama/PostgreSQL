select customer_id, amount,
case 
	when amount >500 then 'expensive product'
	when amount = 300 then 'moderate product'
	else 'inexpensive product'
end as ProductSystem
from payment