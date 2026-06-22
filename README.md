<div align="center">
      <h1> 
            Olist Brazilian E-Commerce Sales Data Analysis
            <br/> 
            Nabil Elkihel - 220201983
            <br/> 
            <br/> 
      </h1>
</div>

<br/> 

## 📌 Project Overview
This project analyzes the **Brazilian E-Commerce Public Dataset by Olist** using **Microsoft SQL Server** and **Python**.

The objective is to explore customer behavior, sales performance, seller performance, payment preferences, delivery efficiency, and customer satisfaction through SQL queries and data visualizations.

The dataset contains approximately **100,000 orders** made between **2016 and 2018** across multiple Brazilian marketplaces.

<br/> 

## 🎯 Project Objectives
- Analyze customer purchasing behavior
- Identify top-performing states and sellers
- Discover the most popular product categories
- Analyze payment methods used by customers
- Measure customer satisfaction through review scores
- Evaluate delivery performance
- Visualize business insights using Python

<br/> 

## 🗂 Dataset Information
### Dataset Source
**Brazilian E-Commerce Public Dataset by Olist**
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

### Dataset Files
- olist_customers_dataset.csv
- olist_geolocation_dataset.csv
- olist_order_items_dataset.csv
- olist_order_payments_dataset.csv
- olist_order_reviews_dataset.csv
- olist_orders_dataset.csv
- olist_products_dataset.csv
- olist_sellers_dataset.csv
- product_category_name_translation.csv

<br/> 

## 🛠 Technologies Used

### Database
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

### Programming Language
- Python

### Python Libraries
- Pandas
- Matplotlib
- Seaborn
- PyODBC

### Version Control
- Git
- GitHub

<br/> 

## 📊 SQL Analysis
The following analyses were performed using SQL JOIN and GROUP BY operations:

1. Total Revenue Analysis
2. Revenue by State
3. Top Product Categories
4. Top Sellers by Revenue
5. Payment Method Analysis
6. Review Score Distribution
7. Average Delivery Time
8. Orders by State
9. Most Expensive Product Categories
10. Monthly Revenue Trend

<br/> 

## 📈 Visualizations
The following visualizations were created using Python:

- Revenue by State
- Top Product Categories
- Payment Method Distribution
- Review Score Distribution
- Monthly Revenue Trend
- Customer Satisfaction by State

<br/> 

## 🔍 Key Findings
- Revenue is concentrated in a small number of Brazilian states.
- Certain product categories account for a large portion of total sales.
- Credit cards are the most commonly used payment method.
- Most customers provide positive reviews, indicating high satisfaction levels.
- Delivery performance has a significant impact on customer ratings.
- Monthly revenue trends reveal seasonal purchasing patterns.

<br/> 

## 📂 Package Structure
```plaintext
Olist-Ecommerce-Analysis
├── Data
│   └── All CSV Files
├── SQL
│   ├── AnalysisQueries 
│       ├── AnalysisQueries.sql     
│       └── Outputs 
│   └── CreateTables
│       ├── CreateTables.sql     
│       └── Outputs 
├── Python
│   └── Olist_Visualization.ipynb
├── Report
│   └── Olist_Report.pdf
└── Charts
```

The report includes:
- Introduction
- Dataset Description
- Database Design
- Visualizations
- Findings
- Conclusion
- References

<br/> 

## 📜 License
This project is intended for educational and academic purposes.
