---->TASK1 
# Intership Task 1: Schema creation
 E-commerce-schema
 Description

This project is part of the SQL Developer Internship. It involves designing and implementing a relational database schema for an E-Commerce store using PostgreSQL in pgAdmin.

---

 Entities/Tables Created

1. Customers – Stores customer information.
2. Categories – Stores product categories.
3. Products – Stores product details linked to categories.
4. Orders – Stores orders placed by customers.
5. OrderDetails– Stores products in each order (many-to-many).
6. Payments – Stores payment information for orders.

---
Relationships

- Each `Customer` can place multiple `Orders`.
- Each `Order` can include multiple `Products` through `OrderDetails`.
- Each `Product` belongs to one `Category`.
- Each `Order` has one `Payment`.

---

Tools Used

- PostgreSQL
- pgAdmin 4
- dbdiagram.io (for ERD)

---

 Files Included

- `schema.sql` – SQL script to create the full database schema.
- `ERD(E-commerce).pdf` – ER diagram of the schema.
- `README.md` – Project overview.

---

How to Run

1. Open pgAdmin.
2. Create a database named `ecommerce_store`.
3. Open Query Tool, paste the SQL from `schema.sql`, and execute.
4. Explore tables under Schemas > public > Tables.

---

 Task Outcome

- Successfully implemented a normalized database schema.
- Defined primary and foreign key constraints.
- Created ER Diagram to visually represent table relationships.


--->TASK2
# Internship Task 2: Data Insertion and Handling Nulls

 Objective
Practice inserting, updating, and deleting data in a `customers` table, while handling null values and applying data manipulation operations.

---

 Tools Used
- pgAdmin (PostgreSQL)
- SQL (DML operations)

---

Table Structure
Table Name:`customers`  
Columns:
- `customer_id` (INTEGER, PRIMARY KEY)
- `customer_name` (TEXT, NOT NULL)
- `email` (TEXT, nullable)
- `phone` (BIGINT, nullable)
- `address` (TEXT, nullable)

---

Operations Performed

 Insert Records
sql
INSERT INTO customers(customer_id, customer_name, email, phone, address)
VALUES (102, 'sakshi_N', 'sakshiN@gmail.com', 2936549927, 'Pune');

INSERT INTO customers(customer_id, customer_name, email, phone, address)
VALUES (103, 'mukesh', 'mukesh@gmail.com', 2936684938, 'mumbai');

INSERT INTO customers(customer_id, customer_name, email, phone, address)
VALUES (104, 'sanu', 'sanu@gmail.com', 2936684926, 'indore');

INSERT INTO customers(customer_id, customer_name, email, phone, address)
VALUES (105, 'abhi', 'abhi@gmail.com', 3826489275, 'nashik');

INSERT INTO customers(customer_id, customer_name, email, phone)
VALUES (106, 'abhik', 'abhiK@gmail.com', 3828489275); -- address left NULL

INSERT INTO customers(customer_id, customer_name)
VALUES (107, 'sahil'); -- email, phone, address left NULL

---
Update Records
UPDATE customers
SET email = 'sahil@gmail.com'
WHERE customer_id = 107;

UPDATE customers
SET customer_name = 'abhijeet'
WHERE customer_id = 105;

---
Delete Records
DELETE FROM customers
WHERE customer_id = 106;

Task 3: Writing Basic SELECT Queries

Objective:
Extract data from the customers table using basic SQL commands such as SELECT, WHERE, ORDER BY, LIMIT, and column operations like ADD and DROP.

Tools Used:

DB Browser for SQLite or MySQL Workbench

Table Used:
Table Name: customers

Column Name	Data Type
customer_id	INTEGER (Primary Key)
customer_name	TEXT
email	TEXT
phone	INTEGER
address	TEXT
age	INTEGER
city	VARCHAR(20) (optional)

SQL Operations Performed:

Add Column

sql
Copy
Edit
ALTER TABLE customers ADD COLUMN city VARCHAR(20);
ALTER TABLE customers ADD COLUMN age INTEGER;
Drop Column

sql
Copy
Edit
ALTER TABLE customers DROP COLUMN city; -- Works in MySQL, not supported in older SQLite versions
Update Data

sql
Copy
Edit
UPDATE customers SET age = 54 WHERE customer_id = 102;
UPDATE customers SET age = 34 WHERE customer_id = 103;
UPDATE customers SET age = 22 WHERE customer_id = 104;
UPDATE customers SET age = 39 WHERE customer_id = 105;
UPDATE customers SET age = 27 WHERE customer_id = 107;
Data Retrieval Queries:

View all customer data

sql
Copy
Edit
SELECT * FROM customers;
Customers with age greater than 45

sql
Copy
Edit
SELECT * FROM customers WHERE age > 45;
Order by customer name in ascending order

sql
Copy
Edit
SELECT * FROM customers ORDER BY customer_name;
Customers with age between 20 and 30

sql
Copy
Edit
SELECT * FROM customers WHERE age BETWEEN 20 AND 30;
Customers from Nashik or Pune

sql
Copy
Edit
SELECT * FROM customers WHERE address = 'nashik' OR address = 'Pune';
Customers whose name starts with 'sakshi'

sql
Copy
Edit
SELECT * FROM customers WHERE customer_name LIKE 'sakshi%';
Order by age in descending order

sql
Copy
Edit
SELECT * FROM customers ORDER BY age DESC;
Top 5 oldest customers

sql
Copy
Edit
SELECT * FROM customers ORDER BY age DESC LIMIT 5;
