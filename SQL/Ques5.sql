create table match(
team varchar(50)
)
insert into match
(team)
values
('India'),('pak'),('Aus'),('Eng')


--List all the matches between teams, if matches are played once


with cte as (
select * , row_number() over(order by team asc) as team_id 
from match
)
select a.team as "Team-A" , a.team as "Team-B" from cte as a 
join cte as b
on a.team <> b.team
where a.team_id<b.team_id