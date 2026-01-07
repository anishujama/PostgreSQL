select new_id , new_cat,
sum(new_id) over (partition by new_cat) As "Total",
avg(new_id) over (partition by new_cat ) As "avg",
min(new_id) over (partition by new_cat  ) As "min",
max(new_id) over (partition by new_cat ) As "max",
count(new_id) over (partition by new_cat) As "count"
from agregate_windoow