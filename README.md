# 📊 Data Warehouse & Analytics System  
**By Palak Gupta**

This project demonstrates the design and implementation of a **modern data warehouse** that transforms raw ERP/CRM data into **business-ready insights**.  
It showcases **ETL pipelines, data modeling, and reporting** to answer real business questions around **product performance, customer behavior, and sales trends**.  

---

## 🚀 Project Overview  

### Business Problem  
Organizations often struggle with siloed ERP/CRM data that prevents holistic analysis of products, customers, and revenue.  

### Goal  
Build a scalable **SQL-based analytics system** that consolidates multiple sources into a single source of truth, empowering decision-makers with **KPIs, dashboards, and actionable insights**.  

### Key Outcomes  
- ✅ Automated ingestion of raw ERP/CRM data into a structured warehouse.  
- ✅ Designed product reports that segment performance (**High/Mid/Low**).  
- ✅ Generated KPIs: **recency, AOR, avg. monthly revenue, product lifespan**.  
- ✅ Delivered insights for **BI dashboards, SQL queries, and machine learning use cases**.  

---

## 🏗️ Data Architecture & Tech Stack  

**Architecture:** Medallion (Bronze → Silver → Gold)  
**Tools:** SQL Server (Docker), VS Code, Draw.io, Notion, GitHub  

- **Bronze Layer:** Raw data (ERP/CRM CSVs)  
- **Silver Layer:** Standardized, cleansed tables  
- **Gold Layer:** Star schema & aggregated views for BI/ML  
- **Consumption:** BI dashboards, SQL reporting, ML pipelines 

![Data Warehouse Architecture](docker_files/SQL-Data%20Warehouse%20Project-Docker.png)


---
## 📈 Insights & KPIs  

The warehouse produces **business-ready metrics**, including:  

- **Revenue Segmentation:** Classifies products into High/Mid/Low performers.  
- **Customer Metrics:** Unique customers per product, repeat sales trends.  
- **Sales KPIs:**  
  - Total orders, revenue, quantity  
  - Average Order Revenue (AOR)  
  - Average Monthly Revenue  
  - Product lifespan & recency  

### Business Value  
- 📦 Identify underperforming products to optimize inventory.  
- 👥 Track customer engagement and retention.  
- 💸 Prioritize high-revenue categories for marketing & strategy.  

---

## ✅ Results & Impact  

- **Centralized analytics** → Unified ERP + CRM into one warehouse.  
- **Time savings** → Automated KPIs eliminated manual Excel reports.  
- **Decision support** → Product segmentation guided marketing & supply chain.  
- **Scalability** → Ready for churn prediction and demand forecasting use cases.  

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
├── README.md               # Project overview 
├── requirements.txt        # Environment dependencies

```
## 📋 Project Planning  

This project was **planned and tracked in Notion**, ensuring clear task organization, timelines, and architecture decisions throughout development.  

🗂️ [View Project Timeline and Planning](https://www.notion.so/Data-Warehouse-Project-24656170e5f2804f8143d26e9aa148ed?source=copy_link)

---

## 🛡️ License

This project is licensed under the **MIT License**.  

## ☕ About Me

Hi! I’m **Palak Gupta**, a Mathematics–Computer Science student with a deep interest in data analytics, business intelligence, and data engineering. I enjoy building real-world projects that combine technical skill with business insight, using tools like SQL, Docker, Notion, and automation platforms like n8n.

📫 **Let’s connect**:  
- 🔗 [LinkedIn](https://www.linkedin.com/in/palakgupta28/)  
- 📧 [palakgupta0428@gmail.com](mailto:palakgupta0428@gmail.com)  

---

