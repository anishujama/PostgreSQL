select new_id ,
row_number() over (order by new_id) as "row_number",
rank () over (order by new_id) as "rank",
dense_rank () over (order by new_id) as "dense_rank",
percent_rank () over (order by new_id) as "percent_rank"
from agregate_windoow