# E-Commerce Customer Analytics
## Cohort Retention & RFM Segmentation

![Python](https://img.shields.io/badge/Python-3.x-blue)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![SQL](https://img.shields.io/badge/SQL-SQLite-orange)
![Status](https://img.shields.io/badge/Status-Completed-green)

---

## 📌 Project Objective
An e-commerce company suspects they are losing customers but have no visibility into behaviour patterns. As the Data Analyst, the goal is to analyze customer purchase behaviour, identify retention trends, segment the customer base by value, and surface actionable business insights.

---

## 📂 Dataset
- **Source:** Online Retail II — UCI Machine Learning Repository
- **Period:** December 2009 to December 2011
- **Size:** 1,067,371 rows across 2 Excel sheets
- **After Cleaning:** 779,425 rows

---

## 🛠️ Tech Stack
| Tool | Purpose |
|------|---------|
| Python (Pandas, Seaborn, Matplotlib) | Data cleaning, analysis, visualization |
| Jupyter Notebook | Development environment |
| SQLite + DB Browser | SQL analysis layer |
| Power BI | Interactive dashboard |

---

## 🔄 Project Workflow
1. **Data Loading** — Combined two Excel sheets into single DataFrame
2. **Data Cleaning** — Removed nulls, cancellations, negatives, duplicates
3. **Feature Engineering** — Created Total Price, Cohort Month, Invoice Month, Cohort Index
4. **Cohort Analysis** — Built retention heatmap tracking 25 monthly cohorts
5. **RFM Segmentation** — Scored and segmented 5,878 customers into 7 segments
6. **SQL Layer** — 4 queries demonstrating aggregation, JOIN, CTE, window functions
7. **Power BI Dashboard** — 3-page interactive dashboard

---

## 📊 Key Insights
- 🔴 **50%+ customers never return** after first purchase — retention is the core problem
- 🔴 **At Risk segment (1,551 customers)** has highest avg revenue of £6,271 — nearly double Champions
- 🟡 **December cohorts show 12-month retention spikes** — seasonal buyers misclassified as churned
- 🟡 **1,122 Recent Customers** haven't returned yet — first-to-second purchase conversion is critical
- 🌍 **United Kingdom dominates at £14.3M** out of £17.37M total — geographic concentration risk

---

## 📁 Repository Structure
├── Customer_Analytics.ipynb    # Main Jupyter notebook
├── queries.sql                 # SQL analysis queries
├── cleaned_online_retail.csv   # Cleaned transaction data
├── rfm_segments.csv            # RFM segmentation output
├── dashboard.pdf               # Power BI dashboard export
└── README.md                   # Project documentation

**Dataset:** Online Retail II — [Download from UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/502/online+retail+ii)

> Note: Dataset not included due to file size. Download from the link above and run the notebook to regenerate CSV files.
---

## 📸 Dashboard Preview

### Page 1 — Sales Overview
### Page 2 — Cohort Analysis  
### Page 3 — RFM Segmentation

---

## 👤 Author
**Aryan Gupta**
