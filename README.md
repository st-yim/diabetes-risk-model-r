# Predicting Diabetes Risk Using Simulated EHR Data

This project uses a synthetic electronic health records (EHR) dataset to identify predictors of diabetes through logistic regression modeling in R. The project demonstrates data cleaning, exploratory data analysis, and statistical modeling in a reproducible workflow using RMarkdown.

---

## 🧪 Project Overview

- **Goal**: Predict the likelihood of diabetes diagnosis (`has_diabetes`) based on clinical and demographic variables.
- **Dataset**: Simulated EHR-style data (500 patients) including:
  - Age, Sex
  - Smoking status
  - BMI, Systolic Blood Pressure
  - Cholesterol levels
  - Follow-up time and event status

---

## 📈 Methods

- Data wrangling: `dplyr`, `tidyr`
- Visualization: `ggplot2`
- Statistical modeling: `glm` (logistic regression)
- Model output tidying: `broom`
- Report generation: `Quarto`

---

## 🔍 Key Questions

- What factors are most associated with having diabetes?
- How do clinical features like BMI and blood pressure relate to risk?
- Can a simple logistic regression model provide useful prediction?

---

## 📁 Project Structure

```
ehr-diabetes-prediction/
├── data/
│ └── mock_ehr.csv
├── analysis.Rmd
├── figures/
├── README.md
```
