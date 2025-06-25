
INSERT INTO customers(customer_id, customer_name, email, phone, address) values(102, 'sakshi_N', 'sakshiN@gmail.com', 2936549927, 'Pune');
INSERT INTO customers(customer_id, customer_name, email, phone, address) values(103, 'mukesh', 'mukesh@gmail.com', 2936684938, 'mumbai');
INSERT INTO customers(customer_id, customer_name, email, phone, address) values(104, 'sanu', 'sanu@gmail.com', 2936684926, 'indore');
INSERT INTO customers(customer_id, customer_name, email, phone, address) values(105, 'abhi', 'abhi@gmail.com', 3826489275, 'nashik');*/
INSERT INTO customers(customer_id, customer_name, email, phone) values(106, 'abhik', 'abhiK@gmail.com', 3828489275);
INSERT INTO customers(customer_id, customer_name) values(107, 'sahil');

UPDATE customers SET email='sahil@gmail.com' WHERE customer_id=107;
UPDATE customers SET customer_name='abhijeet' WHERE customer_id=105;

DELETE FROM customers WHERE customer_id=106;

SELECT * FROM customers;


