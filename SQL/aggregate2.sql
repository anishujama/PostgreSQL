select new_id , new_cat,
sum(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "Total",
avg(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "average",
count(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "count",
min(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "min",
max(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "max"
from agregate_windoow