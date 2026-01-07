--offset the lead and lag value by 2 in the output columns
select new_id ,
lead  (new_id,2) over (order by new_id) as "lead",
lag (new_id,2) over (order by new_id) as "lag"
from agregate_windoow