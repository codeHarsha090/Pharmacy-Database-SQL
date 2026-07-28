# Pharmacy Database SQL

This repository contains a SQL script that creates and manages a simple database for a pharmacy's tablet inventory.

## What This Code Does
* **Creates a Table:** Sets up a `Tablets` table with columns for ID, Name, Weight, Disease, and Symptom.
* **Modifies Data:** Uses `ALTER` and `UPDATE` to add new columns (like `Tablet_Cost`, `Age_Group`, and `Quantity`) and adjust prices.
* **Calculations:** Uses SQL aggregate functions (`MIN`, `MAX`, `AVG`, `SUM`) to analyze tablet costs.
* **Filtering:** Demonstrates how to use operators like `AND`, `OR`, `IN`, `BETWEEN`, and `LIKE` to search for specific medicines.



##Master Practice Database SQL

This repository contains a comprehensive SQL script designed to serve as an all-in-one practice environment for mastering core Database Management System (DBMS) concepts.

What This Code Does
Creates Tables (DDL): Sets up a MasterPracticeDB with tables for students (S1), employees, and departments, while demonstrating how to modify structures using ALTER, DROP, RENAME, and TRUNCATE.

Manages Data (DML & DQL): Inserts sample records and shows how to retrieve, UPDATE, and DELETE specific data points using primary keys and conditions.

Operators & Filtering: Applies arithmetic, relational, and logical operators (AND, OR, NOT) to filter records and perform on-the-fly math (like calculating revised ages or salaries).

Aggregation & Grouping: Groups data categorically using GROUP BY and HAVING, and analyzes datasets using functions like COUNT, SUM, AVG, MAX, and MIN.

Predefined Functions: Extensively demonstrates built-in SQL functions, including Numeric (ROUND, POWER, RAND), String (CONCAT, SUBSTRING), Date/Time (including granular DATE_FORMAT specifiers), and Control Flow (IF, CASE).

Advanced Queries: Executes type conversions (CAST, CONVERT) and complex nested subqueries (single-row, multi-row using IN, and correlated subqueries) to fetch data across multiple tables.
