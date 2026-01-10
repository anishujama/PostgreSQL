CREATE TABLE Products (
Order_date date,
Sales int );

INSERT INTO Products(Order_date,Sales)
VALUES
('2021-01-01',20), ('2021-01-02',32), ('2021-02-08',45), ('2021-02-04',31),

('2021-03-21',33), ('2021-03-06',19), ('2021-04-07',21), ('2021-04-22',10) 

find mothly sales and sort it by desc order
  
select extract(year from Order_date) as Years , to_char(order_date,'Mon') as months,
sum(sales) as totalsales
from Products
group by 1,2
order by totalsales desc
