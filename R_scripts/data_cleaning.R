# Step 1: Load libraries
library(readr)
library(dplyr)
library(ggplot2)

# Step 2: Load data
data <- read_csv("data/raw/telco_churn.csv")

# View first few rows
head(data)

# Step 3: Basic info
str(data)
summary(data)

# Step 4: Clean data
data$TotalCharges <- as.numeric(data$TotalCharges)
data <- na.omit(data)
data$Churn <- as.factor(data$Churn)

# Step 5: Save cleaned data
write_csv(data, "data/clean/telco_churn_clean.csv")

# Churn distribution
table(data$Churn)
prop.table(table(data$Churn))

# Bar chart
ggplot(data, aes(x = Churn, fill = Churn)) +
  geom_bar() +
  labs(title = "Churn Distribution",
       x = "Churn",
       y = "Number of Customers") +
  theme_minimal()

ggplot(data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(title = "Churn Rate by Contract Type",
       y = "Proportion",
       x = "Contract Type") +
  theme_minimal()

ggplot(data, aes(x = InternetService, fill = Churn)) +
  geom_bar(position = "fill") +
  labs(title = "Churn Rate by Internet Service",
       y = "Proportion") +
  theme_minimal()

ggplot(data, aes(x = Churn, y = MonthlyCharges, fill = Churn)) +
  geom_boxplot() +
  labs(title = "Monthly Charges vs Churn",
       x = "Churn",
       y = "Monthly Charges") +
  theme_minimal()

ggplot(data, aes(x = tenure, fill = Churn)) +
  geom_histogram(binwidth = 5, position = "identity", alpha = 0.6) +
  labs(title = "Tenure Distribution by Churn",
       x = "Tenure (months)",
       y = "Count") +
  theme_minimal()

ggsave("images/churn_contract.png")
ggsave("images/churn_monthlycharges.png")
ggsave("images/churn_tenure.png")




