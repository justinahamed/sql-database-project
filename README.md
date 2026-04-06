# Restaurant SQL Database Project

## Overview
Designed and implemented a PostgreSQL database to manage restaurant customer, order, and menu data. The system supports business analysis by organizing transactional data into a structured relational schema.

## Key Features
- Normalized raw data into 1NF, 2NF, and 3NF
- Designed relational schema with 6 tables:
  - Customer
  - Orders
  - Order_Line
  - DineIn_Order
  - Togo_Order
  - Item
- Implemented:
  - Primary & foreign keys
  - Unique and check constraints
  - Sequences and triggers for automated ID generation
- Built trigger to dynamically calculate order totals
- Created indexes for efficient lookup (customer name & phone)
- Created a view (`HIGH_SPENDERS`) to identify high-value customers

## SQL Files
- `ProjectDDL.sql` – table creation, constraints, triggers, indexes, and view
- `ProjectDML.sql` – sample data inserts
- `ProjectQueries.sql` – analytical queries

## Example Queries
- Identify most popular menu items
- Find top-spending customers by month
- Analyze customer purchasing behavior

## Sample Insight
- Veggie Burger was the most popular item
- Top customers were identified based on total monthly spend

## Tools
- PostgreSQL
- SQL

## Author
Justin Ahamed  
