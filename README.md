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
