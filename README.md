# Retail_Sales_Data_Genie_Agent_Project using Databricks Genie

## Project Overview

This project demonstrates the development of an AI-powered Retail Sales Data Agent using Databricks Genie. The objective was to create an intelligent assistant capable of answering business questions by analysing retail sales transaction data stored in a Databricks table.

The project follows the complete data analytics workflow, including dataset preparation, data quality review, Data Agent configuration, business question analysis, SQL validation, and documentation.

---

## Objectives

The main objectives of this project were to:

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

## Data Review

Before creating the Data Agent, the dataset was reviewed by performing:

- Schema inspection
- Summary statistics
- Missing value checks
- Duplicate transaction checks
- Review of categorical values
- Date range analysis
- Dataset quality assessment

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

## Business Questions

The Data Agent was tested using the following business questions:

1. How many transactions are in the dataset?
2. What is the date range of the sales data?
3. Which product category generated the highest total sales?
4. What is the monthly sales trend?
5. Which month recorded the highest revenue?
6. What is the average transaction value?
7. Which gender contributes the most to total sales?
8. Which age group spends the most?
9. Which product category sold the highest quantity?
10. Summarise the three most important business insights from the dataset.

---

## SQL Validation

Selected AI-generated responses were validated using SQL queries.

Validation included:

- Product category sales
- Monthly sales trends
- Revenue by month
- Sales by gender
- Quantity sold by product category

The SQL results matched the Data Agent responses, confirming the accuracy of the generated insights.

---

## Technologies Used

- Databricks Free Edition
- Databricks Genie
- SQL
- GitHub
- Markdown

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
├── Screenshots/
│   ├── Dataset_Registration.png
│   ├── Data_Review.png
│   ├── Genie_Agent.png
│   ├── Instructions.png
│   ├── Business_Questions.png
│   └── SQL_Validation.png
│
└── Report.pdf
```

---

## Key Learning Outcomes

Through this project I gained practical experience in:

- Preparing datasets for AI-driven analytics
- Configuring Databricks Genie Agents
- Writing effective AI instructions
- Using SQL to validate AI-generated insights
- Applying data analytics techniques to answer business questions
- Documenting an end-to-end analytics project using GitHub

---

## Author

**Busisiwe Khoza**

Aspiring Data Analyst | SQL | Databricks | AI Data Agents | Data Analytics


LinkedIn: *(www.linkedin.com/in/busisiwe-khoza-387255224)*

---

## Acknowledgements

This project was completed as part of the **BrightLearn Data Agents** programme using Databricks Genie and SQL to demonstrate practical AI-powered data analytics.
