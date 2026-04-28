# 🚀 Data Engineering Pipeline Project

## 📌 Project Overview

This project demonstrates an end-to-end **Data Engineering Pipeline** using **AWS, Snowflake, dbt, and Data Warehousing** concepts.

The pipeline follows the **Bronze → Silver → Gold** architecture to process raw data into clean and analytics-ready datasets.

---

# 🏗️ Architecture

```text
Source Data
   ↓
AWS S3
   ↓
Bronze Layer (Raw Data)
   ↓
Silver Layer (Clean Data)
   ↓
Gold Layer (Business Data)
   ↓
Snowflake Data Warehouse
   ↓
Analytics / Dashboard
```

---

# 🛠️ Technologies Used

* AWS S3
* Snowflake
* dbt
* SQL
* Python
* Data Warehousing
* ELT Pipeline

---

# 🥉 Bronze Layer

* Stores raw data
* No transformation
* Keeps historical records

# 🥈 Silver Layer

* Cleans data
* Removes duplicates
* Standardizes formats

# 🥇 Gold Layer

* Business-ready data
* Aggregations & KPIs
* Used for reporting

---

# ⚙️ Pipeline Flow

1. Upload raw data to AWS S3
2. Load data into Snowflake Bronze layer
3. Transform data using dbt
4. Create Silver cleaned data
5. Build Gold analytics tables
6. Use for dashboards & reporting

---

# ❄️ Snowflake Setup

```sql
CREATE DATABASE datawarehouse_db;

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
```

---

# ☁️ AWS Services Used

* AWS S3 → Storage
* AWS IAM → Security

---

# 📊 Data Engineering Concepts

* Data Warehousing
*  ELT
* Data Modeling
* Data Lake
* Incremental Loading
* Data Quality Checks
* Orchestration

---

# 🚀 Run Commands

```bash
dbt run
dbt test
```

---

# 🎯 Learning Outcomes

* Snowflake Data Warehouse
* dbt Transformations
* AWS Integration
* Bronze, Silver, Gold Layers
* Data Engineering Workflow

---

# 👨‍💻 Author

**Your Name**
