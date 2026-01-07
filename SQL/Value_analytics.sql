select new_id ,
first_value (new_id) over (order by new_id) as "first_value",
last_value (new_id) over (order by new_id) as "last_value",
lead  (new_id) over (order by new_id) as "lead",
lag (new_id) over (order by new_id) as "lag"
from agregate_windoow