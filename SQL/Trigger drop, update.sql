
create table staff
(
id int GENERATED ALWAYS AS IDENTITY,
emp_name varchar(50)  not null
);

insert into staff(emp_name)
values 
('Anishujama khan ');

update staff 
set emp_name = 'anaitullah khan'

select * from staff



create function check_satff_name() returns trigger
AS 
$$
begin
	if length (new.emp_name)<10 or new.emp_name is null then
	raise exception 'the emp_name cannot less then 10 character';
	end if;
	return new;
	end;
	$$
	language plpgsql

create trigger staff_name_check
before insert or update
on staff
for each row
execute procedure check_satff_name()

drop trigger staff_name_check on staff



