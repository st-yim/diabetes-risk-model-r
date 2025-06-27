set.seed(42)
n <- 500

mock_ehr <- data.frame(
  patient_id = 1:n,
  age = round(rnorm(n, 65, 10)),
  sex = sample(c("Male", "Female"), n, replace = TRUE),
  smoker = sample(c("Yes", "No"), n, replace = TRUE, prob = c(0.3, 0.7)),
  has_diabetes = sample(c("Yes", "No"), n, replace = TRUE, prob = c(0.7, 0.3)),
  bmi = rnorm(n, 27, 4),
  systolic_bp = rnorm(n, 130, 15),
  cholesterol = rnorm(n, 200, 25),
  followup_days = sample(30:1500, n, replace = TRUE),
  event_occurred = sample(c(0, 1), n, replace = TRUE, prob = c(0.8, 0.2))
)

write.csv(mock_ehr, "data/mock_ehr.csv", row.names = FALSE)
