Data Warehouse and Analytics Project
This portfolio project showcases the end-to-end development of a modern data warehouse and analytics system — from raw data ingestion to generating business-ready insights. Built using SQL Server on Docker (Mac), this project follows best practices in data architecture, modeling, and reporting.


## 📌 Table of Contents
- [🏗️ Architecture Overview](#-architecture-overview)
- [📖 Project Scope](#-project-scope)
- [🧠 Skills Demonstrated](#-skills-demonstrated)
- [🛠️ Tools & Technologies](#-tools--technologies)
- [🚀 Dataset & Requirements](#-dataset--requirements)
- [📂 Repository Structure](#-repository-structure)
- [☕ About Me](#-about-me)
- [🛡️ License](#-license)

---

## 🏗️ Architecture Overview

The data warehouse follows **Medallion Architecture**:
- **Bronze:** Raw data ingested from CSVs (ERP + CRM).
- **Silver:** Cleaned, normalized tables ready for joins.
- **Gold:** Business-ready fact & dimension tables in star schema.

![data_architecture](docs/data_architecture.drawio) <!-- Optional image preview -->

---

## 📖 Project Scope

### 🎯 Objectives
- Design a scalable warehouse in **SQL Server via Docker**
- Model clean analytical tables for business users
- Provide SQL-based insights into customer behavior and sales

### 🔧 Deliverables
- SQL scripts for ETL (Bronze → Silver → Gold)
- Diagrams and planning docs (Draw.io + Notion)
- Clear README and documentation

---

## 🧠 Skills Demonstrated
- SQL development and scripting
- ETL pipeline architecture
- Data modeling and star schema design
- Project documentation
- Version control (Git)

---

## 🛠️ Tools & Technologies
| Tool          | Purpose                          |
|---------------|-----------------------------------|
| **Docker**    | Run SQL Server on macOS           |
| **VS Code**   | Query writing and code editing    |
| **Draw.io**   | Data flow & warehouse architecture|
| **Notion**    | Project planning + task tracking  |
| **GitHub**    | Repo hosting and version control  |

---

## 🚀 Dataset & Requirements

- ERP and CRM data in CSV format
- Latest snapshot only (no historization)
- Clear documentation of model and metrics
- SQL-based insights for:
  - 📊 Customer Behavior
  - 📦 Product Performance
  - 💸 Sales Trends

---

## 📂 Repository Structure

data-warehouse-project/
│
├── datasets/ # Raw data (CSV)
├── docs/ # Architecture, catalog, models
├── scripts/ # SQL ETL scripts (bronze → gold)
├── tests/ # Data quality scripts
├── README.md
├── LICENSE
└── requirements.txt

---

## ☕ About Me

Hi! I’m **Palak Gupta**, a Mathematics–Computer Science student with a passion for **data, analytics, and business intelligence**. I enjoy solving real-world problems using data engineering and automation tools like SQL, Docker, n8n, and more.

📫 Let’s connect:  
[LinkedIn](https://linkedin.com) • [Portfolio Website](https://yourname.github.io) • [Email](mailto:your@email.com)

---

## 🛡️ License

This project is licensed under the **MIT License** — feel free to use and adapt with att


