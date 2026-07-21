# Retail_Sales_Data_Genie_Agent_Project using Databricks Genie

## Project Overview
This project was completed as part of the BrightLearn Data Analytics Programme.

The objective was to build a Retail Sales Data Agent using Databricks Genie, enabling users to ask business questions in natural language while the agent automatically generates SQL queries to retrieve insights from a retail sales dataset.

The project demonstrates the complete workflow of preparing a dataset, configuring a Data Agent, testing business questions, validating AI-generated responses with SQL, and documenting the entire process.

---

## Objectives

The main objectives of this project were to:

- Build a Retail Sales Data Agent using Databricks Genie.
- Upload and register a retail sales dataset in Databricks.
- Review the dataset to understand its structure and quality.
- Configure a Databricks Genie Data Agent.
- Provide custom instructions to guide the AI agent's behaviour.
- Test the agent using business-focused questions.
- Validate selected AI responses using SQL queries.
- Document the complete process using GitHub.


---

## Dataset Description

The dataset contains retail sales transaction records with customer, product, and sales information.

### Columns

| Column | Description |
|---------|-------------|
| Transaction ID | Unique identifier for each transaction |
| Date | Date of the transaction |
| Customer ID | Unique customer identifier |
| Gender | Customer gender |
| Age | Customer age |
| Product Category | Category of product purchased |
| Quantity | Number of items purchased |
| Price per Unit | Price of one item |
| Total Amount | Total value of the transaction |

---

## Tools Used
- Databricks Free Edition
- Databricks Genie Agents
- SQL
- GitHub
- Microsoft Word
  
---

## Dataset Overview

The dataset contains 1,000 retail sales transactions.

Each transaction includes:

- Transaction ID
- Date
- Customer ID
- Gender
- Age
- Product Category
- Quantity
- Price per Unit
- Total Amount

The dataset was reviewed before building the Data Agent by performing:

- Schema inspection
- Data preview
- Data type verification
- Summary statistics
- Missing value checks
- Duplicate checks
- Gender and Product Category analysis
- Age and Quantity range checks
- Date range validation
- Distinct month validation
- Transactions per month analysis

The review confirmed that the dataset was suitable for business analysis.

---

## Data Agent Configuration

A Databricks Genie Agent named **Retail Sales Analytics** was created and connected to the `retail_sales_data` table.

The agent was configured with custom instructions to:

- Analyse retail sales transactions
- Analyse customer demographics
- Analyse product performance
- Analyse sales trends over time
- Provide professional business insights
- Generate tables or charts when appropriate
- Use only the connected dataset
- Avoid assumptions when information is unavailable

---

## Steps Followed
1. Uploaded the retail sales dataset into Databricks.
2. Created the retail_sales_data table.
3. Reviewed the dataset using SQL.
4. Prepared the dataset for Genie.
5. Created the Retail Sales Analytics Data Agent.
6. Connected the dataset.
7. Wrote custom Data Agent instructions.
8. Tested the Data Agent using business questions.
9. Validated selected responses using SQL.
10. Documented the complete project.

---

## Agent Instructions

The Data Agent was configured with custom instructions based on the BrightLearn Data Agents Guide.

The instructions defined:

- Agent role
- Primary objective
- Core responsibilities
- Response style
- Data usage rules
- Error handling

The agent was instructed to:

- Use only the connected retail sales dataset.
- Generate accurate, data-driven business insights.
- Present concise responses using tables, bullet points, and charts where appropriate.
- Avoid unsupported assumptions.
- Request clarification when necessary.

---

## Business Questions

The Data Agent was tested using the following business questions:

1. How many transactions are in the dataset?
2. What is the date range of the retail sales dataset?
3. Show the monthly sales trend based on total sales amount.
4. Which product category generated the highest total sales revenue?
5. What is the distribution of customers by gender?
6. Compare the average transaction value for male and female customers.
7. Which product category sold the highest quantity?
8. Which age group contributes the highest total sales?
9. Which month recorded the highest total sales revenue?
10. Summarise the three most important business insight.

---

## SQL Validation

SQL Validation

Three Data Agent responses were validated using SQL.

Validation focused on:

- Highest revenue product category
- Highest revenue month
- Highest spending age group

The SQL results matched the Data Agent responses, confirming that the agent produced accurate answers based on the connected dataset.

---

## Key Insights

Some key findings from the analysis include:

- The dataset contains 1,000 retail sales transactions.
- Customer transactions span a full year.
- Clothing generated the highest transaction count.
- Monthly sales patterns can be analysed across all twelve months.
- Customer demographics, purchasing behaviour, and product performance can be effectively analysed using the Data Agent.

---

## Skills Demonstrated

This project demonstrates practical skills in:

- Data quality assessment
- SQL querying
- Business data analysis
- AI Data Agent configuration
- Prompt engineering
- Data validation
- GitHub documentation
- Technical documentation

---

## Project Structure

```
Retail-Sales-Data-Agent/
│
├── README.md
├── SQL_Queries.sql
├── 2805002173_Retail Sales Data Agent Report.docx
└── reatil_sales_dataset.csv 

```

---

## Conclusion

This project demonstrates practical skills in SQL, Databricks, Data Agents, data preparation, business analysis, AI-assisted analytics, and SQL validation. It also shows how natural language interfaces can be combined with structured data to support business decision-making.

---

## Author

**Busisiwe Khoza**

BrightLearn Data Analytics Programme

Aspiring Data Analyst | SQL | Databricks | AI Data Agents | Data Analytics

GitHub: (add your GitHub profile link here)

LinkedIn: *(www.linkedin.com/in/busisiwe-khoza-387255224)*

---

## Acknowledgements

This project was completed as part of the **BrightLearn Data Agents** programme using Databricks Genie and SQL to demonstrate practical AI-powered data analytics.
