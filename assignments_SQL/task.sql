create database task;
use task;

CREATE TABLE Sales (
    Order_ID INT,
    Customer_Name VARCHAR(50),
    City VARCHAR(30),
    Product VARCHAR(50),
    Sales_Amount INT
);

INSERT INTO Sales VALUES
(101,'Rahul','Pune','Laptop',45000),
(102,'Amit','Mumbai','Mobile',20000),
(103,'Priya','Pune','Headphone',3000),
(104,'Neha','Delhi','Laptop',50000),
(105,'Raj','Mumbai','Keyboard',2500),
(106,'Ankit','Pune','Mobile',18000),
(107,'Pooja','Delhi','Laptop',55000),
(108,'Karan','Nagpur','Mouse',1500),
(109,'Sneha','Mumbai','Laptop',48000),
(110,'Rohit','Pune','Monitor',12000);

select * from sales;

-- =====================================================
-- QUESTION 1 : CASE WHEN
-- =====================================================

-- Scenario:
-- Management wants to classify orders based on Sales Amount.
--
-- Conditions:
-- Sales < 10000        --> Low
-- Sales 10000-30000   --> Medium
-- Sales > 30000       --> High
--
-- Task:
-- Display:
-- Order_ID,
-- Customer_Name,
-- Sales_Amount,
-- Sales_Category
--
select order_id,Customer_name,sales_amount,
case
when sales_amount<10000 then "low"
when sales_amount between 10000 and 30000 then "medium"
else "high"
end as sales_category
from sales;


-- =====================================================
-- QUESTION 2 : RANK()
-- =====================================================
select * from sales;
-- Scenario:
-- The Sales Director wants to identify top-performing orders.
--
-- Task:
-- Display:
-- Order_ID,
-- Customer_Name,
-- Sales_Amount,
-- Sales_Rank
select order_id, customer_name,sales_amount,
rank() over (order by sales_amount desc) as sales_rank
from sales;


-- =====================================================
-- QUESTION 3 : GROUP BY
-- =====================================================
select * from sales;
-- Scenario:
-- Management wants to analyze city-wise performance.
--
-- Task:
-- Display:
-- City,
-- Total_Sales,
-- Number_of_Orders
--
select City,sum(sales_amount) as total_sales, count(*) as number_of_orders from sales group by City;

-- =====================================================
-- QUESTION 4 : SUBQUERY
-- =====================================================
select * from sales;
-- Scenario:
-- Find customers whose Sales_Amount is greater than the
-- average Sales_Amount of all customers.
--
-- Task:
-- Display:
-- Customer_Name,
-- Sales_Amount

select customer_name,Sales_amount from sales where Sales_amount>(
select avg(sales_amount) from sales
);

-- =====================================================
-- QUESTION 5A : UPDATE
-- =====================================================
select * from sales;
-- Scenario:
-- Increase Sales_Amount by 10%
-- for all customers from Pune.

update sales
set sales_amount=sales_amount*10/100
where City="pune";

select * from sales;
-- =====================================================
-- QUESTION 5B : DELETE
-- =====================================================

-- Scenario:
-- Remove low-value orders.
--
-- Condition:
-- Delete all records where
-- Sales_Amount < 2000

delete from sales where sales_amount<2000;

select * from sales;