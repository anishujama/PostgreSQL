
select customer_id,
case amount
	when 1200 then 'prime customer'
	when 999 then 'plus customer'
	else 'Regular customer '
end as CustomerStatus
from payment