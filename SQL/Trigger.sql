								---Trigger---
--Table---Audit_Table--- Create_funtion--Create_trigger--Event(insert,update,delete,truncate)

			--create table employeee--

create table employeee
(
id int GENERATED ALWAYS AS IDENTITY,
first_name varchar(50)  not null,
last_name varchar (50) not null
);

			---insert_value_in_employeee_table---

insert into employeee(first_name,last_name)
values
('Amir','Raj'),
('Ritesh','Pandey')

			---create table employe_audit--

create table employe_audit(
id int GENERATED ALWAYS AS IDENTITY,
employe_id int not null,
first_name varchar(50)  not null,
changed_on timestamp(6) not null
);


		---create or replace function log_first_name_change()---

create or replace function log_first_name_change()
returns trigger
LANGUAGE PLPGSQL
as 
$$
 begin 
 	if new.first_name <> old.first_name 
  then
  	insert into employe_audit(employe_id,first_name,changed_on)
	  values
	  (old.id,old.first_name,now());
	  end if;
	  return new;
	  end;
	  $$

		---create trigger---

create trigger first_name_changes
before update on employeee
for each row
execute procedure log_first_name_change()

		---event_execute---

update employeee
set first_name = 'Aditya'
where id = 1

update employeee
set first_name = 'Rohan'
where id = 1

select * from employeee
select * from employe_audit