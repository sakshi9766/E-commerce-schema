/*ALTER TABLE customers
ADD COLUMN city VARCHAR(20);*/

/*ALTER TABLE customers
ADD COLUMN age Integer;*/

/*ALTER TABLE customers
DROP COLUMN city;*/

SELECT * FROM customers;


/*UPDATE customers SET age=20
where customer_id=101;*/
UPDATE customers SET age=54
where customer_id=102;
UPDATE customers SET age=34
where customer_id=103;
UPDATE customers SET age=22
where customer_id=104;
UPDATE customers SET age=39
where customer_id=105;
UPDATE customers SET age=27
where customer_id=107;

SELECT * FROM customers;

SELECT * FROM customers 
where age > 45;

select * from customers
ORDER BY customer_name;

select * from customers
where age between 20 and 30;

select * from customers
where address='nashik' or address='Pune';

select * from customers
where customer_name like 'sakshi%';

select * from customers
order by age desc;

select * from customers
order by age desc limit 5;