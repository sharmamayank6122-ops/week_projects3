library(tidyverse)
library(dplyr)
library(ggplot2)
library(skimr)
library(corrplot)
# Data cleaning
str(student_performance_dataset)

summary(student_performance_dataset)

colSums(is.na(student_performance_dataset))

student_performance_dataset$Gender[is.na(student_performance_dataset$Gender)] <- "Other"
student_performance_dataset$Gender <- ifelse(student_performance_dataset$Gender %in% c("M","Male","male"), "M",
                      ifelse(student_performance_dataset$Gender %in% c("F","Female","female"), "F", "Other"))

# Data analysis
# Distribution of Gender
ggplot(student_performance_dataset, aes(x=Gender)) +
  geom_bar(fill="skyblue") +
  theme_minimal() +
  labs(title="Gender Distribution of Students")

# Average score by Gender
ggplot(student_performance_dataset, aes(x=Gender, y=Overall_Average, fill=Gender)) +
  geom_boxplot() +
  labs(title="Average score Distribution by Gender")

# Correlation heatmap
numeric_data <- student_performance_dataset %>% select_if(is.numeric)
cor_matrix <- cor(numeric_data, use="complete.obs")

corrplot(cor_matrix, method="color", type="upper", tl.col="black", tl.srt=45)

# KPI
# Average overall score
mean(student_performance_dataset$Overall_Average, na.rm = TRUE)


# Top 5 performing students
student_performance_dataset %>%
  arrange(desc(Overall_Average)) %>%
  head(5)

