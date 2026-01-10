select candidate_id, count(skills) as skillcount from Applications
where skills in ('Python','SQL','Power BI')
group by candidate_id
having count (skills) = 3
order by candidate_id asc
