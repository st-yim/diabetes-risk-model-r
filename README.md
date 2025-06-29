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

## 🧬 Data Simulation

The dataset is **synthetically generated** to resemble electronic health records for 500 patients. Each variable is sampled from a realistic distribution or probability, ensuring reproducibility (`set.seed(42)`).

### 📋 Variables Included

| Variable          | Description                                   |
|-------------------|-----------------------------------------------|
| `patient_id`      | Integer 1 – 500                               |
| `age`             | Normal(65, 10) rounded to whole years         |
| `sex`             | `"Male"` / `"Female"`                         |
| `smoker`          | `"Yes"` / `"No"` (30 % smokers)               |
| `has_diabetes`    | `"Yes"` / `"No"` (30 % prevalence)            |
| `bmi`             | Normal(27, 4)                                 |
| `systolic_bp`     | Normal(130, 15)                               |
| `cholesterol`     | Normal(200, 25)                               |
| `followup_days`   | Uniform integer 30 – 1500                     |
| `event_occurred`  | 0 / 1 (20 % events)                           |

### 🛠️ Reproducibility

Run the script **`generate_data.R`** in the project root to recreate the dataset.
It writes the CSV to `data/mock_ehr.csv`.

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
│ └── mock_ehr.csv # generated dataset
├── figures/ # plots saved by analysis
├── analysis.Rmd # Quarto/RMarkdown analysis
├── generate_data.R # data-simulation script
└── README.md
```

---


---

## 🗄️ SQL Component (Clean Cohort Prep in SQLite)

To demonstrate basic SQL fluency, a portion of the data cleaning and feature engineering process is done using **SQL inside RStudio**, via an in-memory **SQLite** database.

This optional SQL pipeline filters and prepares a clean cohort *before* modeling in R.

---

### ✅ SQL Workflow Summary

1. **Load Data into SQL Table**  
   The synthetic dataset (`mock_ehr.csv`) is loaded into a SQLite table using `dbWriteTable()`.

2. **Feature Engineering in SQL**  
   - `smoker` and `has_diabetes` are converted to binary flags (`0` / `1`) using `CASE` expressions.  
   - BMI is categorized as `'under'`, `'normal'`, `'over'`, or `'obese'`.  
   - Basic filters are applied (e.g., removing extreme BMI or blood pressure values).

3. **Summary Table (Aggregation in SQL)**  
   A summary is produced using `GROUP BY`, showing:
   - Patient counts per BMI category  
   - Average age and BMI in each group

4. **Return to R for Modeling**  
   The cleaned SQL result is converted back into an R data frame and used as input for the logistic regression model (`glm`).

---

### 🧰 SQL Tools Used

- **SQL interface libraries**: `DBI`, `RSQLite`
- **SQL concepts demonstrated**:
  - Data import/export between R and SQL
  - Filtering with `WHERE`
  - Feature derivation with `CASE`
  - Aggregation with `GROUP BY`, `AVG`, `COUNT`
  - Result integration into R modeling

---
