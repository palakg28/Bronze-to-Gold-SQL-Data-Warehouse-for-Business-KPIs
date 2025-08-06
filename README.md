# 📦 Data Warehouse and Analytics Project  
**By Palak Gupta**

This portfolio project showcases the end-to-end development of a modern **data warehouse and analytics system** — from raw data ingestion to generating business-ready insights.  
Built using **SQL Server via Docker on macOS**, the project follows industry best practices in data architecture, data modeling, and SQL-based reporting.

---

## 📌 Table of Contents
- [Architecture Overview](#architecture-overview)
- [Project Scope](#project-scope)
- [Skills Demonstrated](#skills-demonstrated)
- [Tools & Technologies](#tools--technologies)
- [Dataset & Requirements](#dataset--requirements)
- [Repository Structure](#repository-structure)
- [About Me](#about-me)

---

## 🏗️ Architecture Overview

The project follows the **Medallion Architecture**, consisting of:

- **Bronze Layer**: Raw data ingested from ERP and CRM CSV files.
- **Silver Layer**: Cleaned, standardized tables ready for transformation and joins.
- **Gold Layer**: Business-ready data modeled in a star schema for analytics.

📌 *See full architecture in `docs/data_architecture.drawio`*

---

## 📖 Project Scope

### 🎯 Objectives
- Design a scalable data warehouse in **SQL Server (Docker)**
- Model clean, efficient tables optimized for analytical queries
- Deliver SQL-based insights into customer behavior and sales

### 🔧 Deliverables
- SQL scripts for ETL (Bronze → Silver → Gold)
- Architecture and process documentation (Draw.io + Notion)
- Data catalog and naming conventions
- Actionable SQL queries and metrics

---

## 🧠 Skills Demonstrated

- SQL development and scripting  
- Data modeling (fact & dimension tables)  
- ETL pipeline design  
- Data warehouse architecture (Medallion model)  
- Version control and project documentation  

---

## 🛠️ Tools & Technologies

| Tool       | Purpose                                 |
|------------|------------------------------------------|
| **Docker** | Running SQL Server locally on macOS      |
| **VS Code**| SQL development and script editing       |
| **Draw.io**| Architecture, data flow, and modeling    |
| **Notion** | Project planning and requirement tracking|
| **GitHub** | Version control and code repository      |

---

## 🚀 Dataset & Requirements

- **Data Sources**: ERP and CRM (CSV files)
- **Scope**: Latest snapshot only (no historization)
- **Integration**: Unified, normalized model combining both sources
- **Insights**:
  - 📊 Customer behavior patterns  
  - 📦 Product performance analysis  
  - 💸 Sales trends and summaries  

---

## 📂 Repository Structure
```text
data-warehouse-project/
│
├── datasets/               # Raw ERP and CRM data (CSV)
├── docs/                   # Architecture diagrams, data catalog, models
├── scripts/                # SQL ETL scripts (bronze → gold)
├── tests/                  # Data quality and validation scripts
├── README.md               # Project overview (this file)
├── requirements.txt        # Environment dependencies

```

## ☕ About Me

Hi! I’m **Palak Gupta**, a Mathematics–Computer Science student with a deep interest in data analytics, business intelligence, and data engineering. I enjoy building real-world projects that combine technical skill with business insight, using tools like SQL, Docker, Notion, and automation platforms like n8n.

📫 **Let’s connect**:  
- 🔗 [LinkedIn](https://www.linkedin.com/in/palakgupta28/)  
- 📧 [palakgupta0824@gmail.com](mailto:palakgupta0824@gmail.com)  

---

