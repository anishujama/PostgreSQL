CREATE TABLE Applications (
candidate_id int,
skills varchar);

INSERT INTO Applications(candidate_id,skills)
VALUES
(101, 'Power BI'), (101, 'Python'), (101, 'SQL'), (102, 'Tableau'), (102, 'SQL'),
(108, 'Python'), (108, 'SQL'), (108, 'Power BI'), (104, 'Python'), (104, 'Excel')


Find the candidates best suited for an open Data Science job. Find candidates who are proficient
in Python, SQL, and Power BI.
Write a query to list the candidates who possess all of the required skills for the job. Sort the output
by candidate ID in ascending order. 

  
select candidate_id, count(skills) as skillcount from Applications
where skills in ('Python','SQL','Power BI')
group by candidate_id
having count (skills) = 3
order by candidate_id asc

