library(tidyverse)

#load data...
learning_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTkTVJOlnhruvrKBti7-64d16vJkLC9Lcyr5HHe_HbsoBE-cq-EEVgOQnrwsahoVh4PMZmzH5yO95W0/pub?output=csv")

#Rename cols
learning_data <- learning_data %>%
  rename(total_income=2,living_out=3,living_costs=4,personal_expenses=5,personal_costs=6,expected_savings=7)

#calculate total income
total_income <- sum(learning_data$total_income, na.rm = TRUE) # had to remove na values as some people didnt put in answers before i made them all required! 

# Calculate average personal spend
avr_personal_spend <- sum(learning_data$personal_expenses, na.rm = TRUE) / sum(!is.na(learning_data$personal_expenses)) #had to google this is.na function!! 
# Calculate average living spend
avr_living_spend <- sum(learning_data$living_out, na.rm = TRUE) / sum(!is.na(learning_data$living_out))

print(paste("total income $", total_income, sep=""))
print(paste("Average personal spend $",avr_personal_spend, ", Average living spend $",avr_living_spend, sep=""))

learning_data %>%
  ggplot() +
  geom_bar(aes(x = total_income, fill=expected_savings))

utilities <- learning_data %>% 
  separate_rows(living_costs, sep = ", ")
print(utilities)

utilities %>%
  ggplot() +
  geom_bar(aes(x = living_costs))
