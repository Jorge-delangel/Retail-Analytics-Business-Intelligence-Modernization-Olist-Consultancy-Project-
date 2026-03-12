> Portfolio project by Jorge Luis Del Angel Maldonado – MSc Data Analytics

# Retail Analytics & Business Intelligence Solution for Olist

## 📌 Project Overview
This project presents an **end‑to‑end Business Intelligence and Analytics solution** designed for **Olist**, a large Brazilian e‑commerce marketplace integrator.  
The objective was to modernise fragmented operational data into a **scalable, cloud‑native analytics platform** capable of supporting executive decision‑making, operational monitoring, and future advanced analytics.

The solution was designed as a **consultancy-style project**, covering the full analytics lifecycle: data ingestion, modeling, transformation, governance, and visualization.

---

## 🎯 Business Context
Olist operates as a “store of stores,” managing thousands of independent sellers across Brazil.  
Key challenges included:
- Fragmented OLTP data not optimized for analytics
- Complex nationwide logistics and delivery delays
- Limited visibility into seller and product performance
- Difficulty performing cross‑functional analysis without impacting production systems

---

## 🧩 Solution Architecture
The project implements a **cloud-based ELT architecture** on **Google Cloud Platform (GCP)** using a medallion approach:

- **Bronze Layer:** Raw data ingestion from MySQL (OLTP)
- **Silver Layer:** Data transformation, feature engineering, and quality checks
- **Gold Layer:** Analytics‑ready star schema optimized for BI and reporting

### Core Technologies
- **Google BigQuery** – Cloud data warehouse
- **Google Cloud Data Fusion / BigQuery Data Transfer Service** – Data ingestion
- **Dataform** – SQL transformation orchestration
- **Looker Studio** – Business Intelligence dashboards
- **Google Cloud IAM & Data Catalog** – Governance and metadata

---

## 🗃️ Data Modeling
A **star schema** was designed to enable high‑performance analytics and flexible reporting.

### Fact Tables
- **Fact_Sales** – Revenue, prices, freight values, payments
- **Fact_Delivery** – Lead time, delay time, delivery status

### Dimension Tables
- **Dim_Customers**
- **Dim_Sellers**
- **Dim_Products**
- **Dim_Geolocation**
- **Dim_Time**

This model supports analysis across sales performance, logistics efficiency, seller success, and regional trends.

---

## 🔄 ELT Pipeline & Transformations
Key transformations and engineering steps include:
- Calculation of **lead time** and **delivery delay metrics**
- Generation of **surrogate keys (UUIDs)**
- Enforcement of **data quality rules** (non‑negative prices, referential integrity)
- Partitioning strategies to optimize BigQuery performance and cost

---

## 📊 Business Intelligence Dashboard
An interactive **Looker Studio dashboard** was developed to provide real‑time insights, including:
- Gross Merchandise Value (GMV)
- Order status distribution
- Regional delivery delays (heatmap)
- Seller and product performance
- Time‑based trend analysis with interactive filters

🔗 **Live Dashboard:**  
https://lookerstudio.google.com/reporting/e29ee641-3674-4448-83a7-16e4dcb2e288

---

## 🔐 Data Governance & Compliance
- Designed with **LGPD (Brazilian data protection law)** considerations
- Personal identifiers hashed during transformation
- Master Data Management applied to product dimensions
- Metadata and lineage tracked using cloud cataloging principles

---

## 🚀 Future Enhancements
The architecture supports future advanced analytics, including:
- Demand forecasting using BigQuery ML
- Logistics delay prediction
- Customer churn analysis
- Seller performance scoring models

---

## 📁 Repository Structure
- documentation/: Architecture diagrams and consultancy report
- sql/: ELT pipeline and data warehouse SQL models
- dashboards/: Looker Studio screenshots and live dashboard link

---

## 👤 Author
**Jorge Luis Del Angel Maldonado**  
MSc Science in Data Analytics – Business Intelligence  
Analytics & BI Portfolio Project

---

## 📄 Disclaimer
This project is an academic and portfolio-based consultancy simulation.  
All architectures, models, and dashboards are designed for educational and demonstrative purposes only and do not represent a production system.
