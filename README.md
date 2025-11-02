# Customer Churn Analysis — Tableau + R

This project explores telecom customer churn using a public Kaggle dataset.  
It identifies key factors that influence customer churn and provides business insights for retention.

## Tools Used
- R (RStudio) → Data cleaning and visualization (EDA)
- Tableau Public → Dashboard and insights
- Excel / Google Sheets → Data inspection

## Project Workflow
1. Loaded raw data from Kaggle  
2. Cleaned and prepared the dataset using R  
3. Performed exploratory data analysis (EDA)  
4. Created interactive visualizations in Tableau  

## R Script Overview
The R script performs:
- Data cleaning (handling missing values, converting data types)
- Saving cleaned dataset (`data/clean/telco_churn_clean.csv`)
- Generating churn visuals:
  - Churn distribution
  - Churn rate by contract type and internet service
  - Monthly charges vs churn
  - Tenure distribution  

These plots are saved automatically as PNGs in the `dashboard_screenshots/` folder.


## Key Insights
- Customers with higher monthly charges and shorter tenure churn more.  
- Month-to-month contracts and electronic check payments show highest churn.  
- Automatic payments and long-term contracts reduce churn significantly.  
- Customers with tenure above 2 years rarely churn.  

View the interactive dashboard here:  
[Customer Churn Tableau Dashboard](https://public.tableau.com/app/profile/arisha.naseem/viz/CustomerChurnAnalysisDashboard_17617368020950/CustomerChurnAnalysisDashboard)

## Dataset
[Kaggle — Telco Customer Churn Dataset](https://www.kaggle.com/blastchar/telco-customer-churn)

## Business Recommendations
- Offer discounts for long-term contracts.  
- Encourage auto-pay enrollment.  
- Focus retention on customers with less than 12 months tenure.  
- Provide loyalty rewards for high-bill customers.  

---

Created by **Arisha Naseem**  
*Tools: R, Tableau, Excel | October 2025*





