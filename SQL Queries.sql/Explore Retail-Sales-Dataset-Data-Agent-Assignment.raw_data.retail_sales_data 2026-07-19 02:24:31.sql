-- Databricks notebook source
----------------------------------------------------------
-- STEP 2 Reviewing Dataset
----------------------------------------------------------

-- 1. Finding out  what is entailed in this table: Columns
SELECT *
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data;

-- 2. Data Types Check, what type of data is each column in this table?
DESCRIBE `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data;

-- 3. Summary Statistics -------------------------------------
-- 3.1 Schema inspection
DESCRIBE DETAIL `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data;

-- 3.2 Summary stats
SELECT
    COUNT(*) AS Total_Transactions,
    MIN(Age) AS Minimum_Age,
    MAX(Age) AS Maximum_Age,
    AVG(Age) AS Average_Age,
    MIN(Quantity) AS Minimum_Quantity,
    MAX(Quantity) AS Maximum_Quantity,
    AVG(Quantity) AS Average_Quantity,
    MIN(`Price per Unit`) AS Minimum_Price,
    MAX(`Price per Unit`) AS Maximum_Price,
    AVG(`Price per Unit`) AS Average_Price,
    MIN(`Total Amount`) AS Minimum_Sale,
    MAX(`Total Amount`) AS Maximum_Sale,
    AVG(`Total Amount`) AS Average_Sale
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data;

------------------------------------------------------------
-- 4. Missing value count using WHERE and SUM(CASE..)
------------------------------------------------------------
-- 4.1  Checking for missing values by rows, cleaning data (WHERE)
SELECT *
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
WHERE `Transaction ID` IS NULL 
   OR `Date` IS NULL 
   OR `Customer ID` IS NULL 
   OR `Gender` IS NULL 
   OR `Age` IS NULL 
   OR `Product Category` IS NULL 
   OR `Quantity` IS NULL 
   OR `Price per Unit` IS NULL 
   OR `Total Amount` IS NULL; -- No null records in every row 

-- 4.2 Casing Missing Value Check to find out how many missing values each column has using SUM(CASE...)
SELECT 
   SUM(CASE WHEN `Transaction ID` IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_ID,
   SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Missing_Date,
   SUM(CASE WHEN `Customer ID` IS NULL THEN 1 ELSE 0 END) AS Missing_Customer_ID,
   SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Missing_Gender,
   SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Missing_Age,
   SUM(CASE WHEN `Product Category` IS NULL THEN 1 ELSE 0 END) AS Missing_Product_Category,
   SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Missing_Quantity,
   SUM(CASE WHEN `Price Per Unit` IS NULL THEN 1 ELSE 0 END) AS Missing_Price_Per_Unit,
   SUM(CASE WHEN `Total Amount` IS NULL THEN 1 ELSE 0 END) AS Missing_Total_Amount
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data; -- The dataset contains no missing values in these columns

------------------------------------------------------------------
-- 5. Duplicate Check
------------------------------------------------------------------

-- Transaction ID Check and Duplicate check - unique value
SELECT COUNT (*) Total_Rows,
       COUNT(`Transaction ID`) AS Total_Transaction_ID,
       COUNT (DISTINCT `Transaction ID`) AS Unique_Transaction_ID -- conclusion, no duplicates on transaction id
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data;

------------------------------------------------------------------
-- 6. Unique values Check - Gender and Product Category and Counts
------------------------------------------------------------------

-- 6.1 Gender unique check 
SELECT Gender,
       COUNT (*) AS Gender_Count
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY Gender;

-- 6.2 Product Category unique check
SELECT `Product Category`,
       COUNT (*) AS Product_Category_Count
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY `Product Category`
ORDER BY Product_Category_Count;

------------------------------------------------------------------
-- 7. Numeric Range - Age and Quantity
------------------------------------------------------------------

-- 7.1 Age Check MIN, MAX, AVG 
SELECT MIN (`Age`) AS Min_Age,
       MAX (`Age`) AS Max_Age,
       AVG (`Age`) AS Ave_Age
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data; -- Range of customer age and average age

-- 7.2 Quantity Check MIN, MAX, AVG
SELECT MIN (`Quantity`) AS Min_Quantity,
       MAX (`Quantity`) AS Max_Quantity,
       AVG (`Quantity`) AS Ave_Quantity
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data; -- Range of units sold/ purchases and average

-----------------------------------------------------------------------------
-- 8. Date Check - Range, Distinct Months, Transactions per month
-----------------------------------------------------------------------------

-- 8.1 Date range 
SELECT MIN (`Date`) AS First_transaction_date,
       MAX (`Date`) AS Last_transaction_date
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data; 

-- 8.2 Distinct Months
SELECT DISTINCT MONTH(`Date`) AS Month
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
ORDER BY Month;

-- 8.3 Transactions count by Month
SELECT
   MONTH(Date) AS Month,
   COUNT(*) AS Transactions
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY MONTH(Date)
ORDER BY Month;

---------------------------------------------------------
-- Step 7 Validation, 3 selected questions from agent
---------------------------------------------------------

-- Validation 1: Question 4 Which product category generated the highest total revenue? (Product performance)
SELECT
    `Product Category`,
    SUM(`Total Amount`) AS Total_Sales
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY `Product Category`
ORDER BY Total_Sales DESC;

-- Validation 2: Question 6 Compare the average transaction value for the male and female customers. (Average spending by gender)
SELECT 
    Gender,
    AVG(`Total Amount`) AS Ave_Transaction
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY Gender;

-- Validation 3: Question 9 Which month recorded the highest total sales revenue? (Highest Revenue Month)
SELECT
    MONTH(Date) AS Month,
    SUM(`Total Amount`) AS Total_Sales
FROM `retail-sales-dataset-data-agent-assignment`.raw_data.retail_sales_data
GROUP BY MONTH(Date)
ORDER BY Total_Sales DESC;
