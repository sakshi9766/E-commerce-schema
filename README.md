# E-commerce-schema
# E-Commerce Database Schema Project
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
