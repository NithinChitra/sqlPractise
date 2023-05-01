INSERT INTO test select * from herovired.rgm;
select * from test;

-- to delete all data in a table we use below command
TRUNCATE TABLE test;

-- to delete data (some)
DELETE FROM test WHERE student_name="nithin";

DROP TABLE test;

create table table1(student_id int primary key not null,
student_name varchar(20) not null);

select * from student_table;
DELETE FROM student_table;

INSERT INTO student_table VALUES(1,"nithin","NDL",66),(2,"Gowtham","KNL",87);

ALTER TABLE table1 RENAME TO student_table;
 ALTER TABLE student_table  RENAME COLUMN student_name TO name;
ALTER TABLE student_table  RENAME COLUMN student_id TO id;
ALTER TABLE student_table ADD  COLUMN contact varchar(20);

-- to drop column
ALTER TABLE student_table DROP COLUMN contact;

INSERT INTO student_table(address) VALUES ("NDL");

UPDATE student_table SET address="NDL" WHERE id = "1";
UPDATE student_table SET address="KNL" WHERE id = "2";

ALTER TABLE student_table ADD COLUMN marks int;
UPDATE student_table SET marks="77" WHERE id = "1";
UPDATE student_table SET marks="98" WHERE id = "2";

TRUNCATE TABLE student_table;

create table orders(order_num int,purchase_amount int, 
order_date date, customer_id int, salesman_id int
);

select * from orders;
INSERT INTO orders VALUES(12,1200,'2023-04-28',302,200),
(13,1000,'2023-04-29',303,205),(15,1300,'2023-04-30',304,210);

select * from orders where not (order_date="2023-04-30") and (salesman_id
>202 or purchase_amount>1000);


