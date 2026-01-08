select * 
from travel t1
where not exists (
select * from travel t2
where t1."Source"  = t2."Destination"
and t1."Destination" = t2."Source"
and t1."Destination">t2."Destination"
)