# Ecommerce Data Analysis - Kaggle 📊🛍️

![GitHub Repo stars](https://img.shields.io/github/stars/Soumyadipta2020/ecommerce_data_analysis_kaggle?style=social)
![GitHub forks](https://img.shields.io/github/forks/Soumyadipta2020/ecommerce_data_analysis_kaggle?style=social)
![GitHub license](https://img.shields.io/github/license/Soumyadipta2020/ecommerce_data_analysis_kaggle)
[![HitCount](https://hits.dwyl.com/Soumyadipta2020/ecommerce_data_analysis_kaggle.svg?style=flat-square)](http://hits.dwyl.com/Soumyadipta2020/ecommerce_data_analysis_kaggle)

This repository contains the project **"Ecommerce Data Analysis - Kaggle"**, where I performed a comprehensive analysis of ecommerce data and developed a forecasting model to predict the **net amount** and **discount** for the next 12 months. The project demonstrates my expertise in data analysis, visualization, and forecasting techniques, providing actionable insights for business decision-making.

## 🔎 Project Overview
Ecommerce platforms generate vast amounts of transactional data, which holds valuable insights about customer behavior, sales trends, and discount strategies. This project focuses on leveraging historical data to:

1. Analyze and visualize key metrics like sales, discounts, and net amount.
2. Develop a robust forecasting model for predicting future net amounts and discounts.
3. Provide insights to aid strategic planning and improve revenue generation.

## ✨ Key Features
- **Exploratory Data Analysis (EDA):**
  - Sales trends over time.
  - Distribution of discounts.
  - Seasonal patterns in revenue.
- **Forecasting Models:**
  - Time series models to predict net amount and discount for the next 12 months.
  - Evaluation of forecasting accuracy.
- **Visualizations:**
  - Interactive plots to illustrate key insights.
  - Line plots for actual vs. forecasted values.

## 🛠️ Methodology
1. **Data Preprocessing:**
   - Cleaning and handling missing values.
   - Aggregating data to monthly levels for trend analysis.
2. **Exploratory Data Analysis:**
   - Identifying patterns, seasonality, and outliers.
3. **Model Development:**
   - Implemented time series models such as ARIMA, SARIMA, and others.
   - Validated models using historical data.
4. **Forecasting:**
   - Predicted net amount and discounts for the next 12 months.
   - Visualized the forecasted values alongside actual data.

## 🏆 Results
- Forecasted **net amount** and **discount** with high accuracy.
- Identified key seasonal trends impacting sales and discounts.
- Provided actionable insights for optimizing discount strategies.

## 📂 Repository Structure

```bash
📁 Analysis/
    |-- 📁 data/
    |   |-- 📁 export/
    |   |   |-- 📑 net_amount_discount_monthly.csv                      # Data prepared using "Net Amount & Discount Monthly Data.R"
    |   |   |-- 📑 net_amount_discount_vs_method_monthly.csv            # Data prepared using "Net Amount & Discount Monthly by payment method Data.R"
    |   |-- 📑 ecommerce_data.csv                                       # Raw data from Kaggle
    |   |-- 📄 Ecommerce_data.md                                        # Raw data explanation
    |-- </> Net Amount & Discount Monthly Forecast.ipynb                # Forecasting net amount and discount monthly
    |-- </> Net Amount & Discount Monthly Forecast by payment method.ipynb  # Forecasting net amount and discount monthly by payment method
    |-- </> Net Amount & Discount Monthly Data.R                        # Data preparation for forecasting net amount and discount monthly
    |-- </> Net Amount & Discount Monthly by payment method Data.R      # Data preparation for forecasting net amount and discount monthly by payment method
📄 README.md                                                            # Project overview and details
📄 LICENSE                                                              # License
```

## 🚀 Usage
To replicate the analysis or use the forecasting models:
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/ecommerce_data_analysis_kaggle.git
   ```
2. Navigate to the project directory:
   ```bash
   cd ecommerce_data_analysis_kaggle
   ```
3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Run the Jupyter Notebooks in the `notebooks/` directory for analysis and forecasting.

## 📜 Requirements
- Python 3.8+
- R 3.4.2+
- Jupyter Notebook
- Python libraries - Pandas, NumPy, Matplotlib, Seaborn
- Python ML libraries - Scikit-learn, Statsmodels, Prophet (or other forecasting libraries)
- R libraries - dplyr, stringr, tidyr, plotly

## 💡 Contribution

Contributions are welcome! If you have ideas to enhance the app or fix issues, feel free to fork the repository, make changes, and submit a pull request.

Steps to Contribute:

1. Fork this repository.
2. Create a new branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m "Add feature-name"`
4. Push to your branch: `git push origin feature-name`
5. Open a Pull Request.
