Sunrise Supermarket Database

Student Information

Name: Shema Vainqueur
Student ID: 20251SEN313
DBMS: Oracle Database 26ai Free

Business Scenario

Sunrise Supermarket sells different products to customers. The database stores customers, products, orders, and order items.

The purpose of this project is to analyze customer purchases and sales using SQL.

Database Tables

* Customers – stores customer information.
* Products – stores products and prices.
* Orders – stores customer orders.
* Order_Items – stores products purchased in each order.

Data

* 6 customers
* 8 products
* 15 orders
* 30 order items
* 4 product categories

SQL Concepts Used

* INNER JOIN
* LEFT JOIN
* Common Table Expression (CTE)
* RANK()
* ROW_NUMBER()
* LAG()
* Running totals
* SUM() and AVG()

How to Run

1. Connect to the Oracle database.
2. Run schema.sql to create the tables.
3. Run data.sql to insert the sample data.
4. Run queries.sql to execute the analysis queries.

Example:

```sql id="37t7vh"
@schema.sql
@data.sql
@queries.sql
```

Files

```text id="fbtomn"
README.md
schema.sql
data.sql
queries.sql
```

Conclusion

This project demonstrates how SQL can be used to manage and analyze supermarket customer and sales data using Oracle Database.
