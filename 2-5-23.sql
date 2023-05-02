create table car(
car_no int,car_name varchar(20),car_price int,car_quantity int);

select * from car;

INSERT INTO car VALUES(112,"BMW",1000000,2),(132,"RangeRover",500000,3),
(154,"Tesla",700000,7),(167,"ferrari",20000000,1);

select COUNT(car_name) AS Car_count,car_price from car GROUP BY car_price;

-- Another table

CREATE TABLE visit(
entry_date DATE, price INT, duration int);

select * from visit;

INSERT INTO visit VALUES('2023-05-01',50,20),('2023-05-01',100,50),
('2023-05-04',60,30),('2023-05-04',80,15),('2023-05-10',120,60),
('2023-05-10',100,30);

select * from visit where price>50 order by price DESC;

select count(entry_date),price from visit GROUP BY price;

-- EXTRACT

SELECT EXTRACT(YEAR FROM ENTRY_DATE) AS YEAR, EXTRACT(MONTH 
FROM ENTRY_DATE) AS MONTH, ROUND(AVG(PRICE),2) FROM
VISIT GROUP BY EXTRACT(YEAR FROM ENTRY_DATE), EXTRACT(MONTH 
FROM ENTRY_DATE);

select * from visit;

select entry_date,round(avg(price),2) as avg_price
from visit
group by entry_date order by entry_date;

-- group by with where gives error
select count(duration),price 
from visit
group by price where price>50;

-- group by with having gives output
select count(duration),price 
from visit
group by price having price>50;




