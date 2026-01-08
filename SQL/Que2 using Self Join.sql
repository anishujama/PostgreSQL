with cte as (
select *, row_number() over() as S_no
from travel
)
select t1.*
from cte as t1
join cte as t2
on t1."Source" = t2."Destination"
and t1.S_no<t2.S_no