expectancy <- read.csv("Life_Expectancy_Data.csv")

for (i in 1:ncol(expectancy)) {
    expectancy[, i][is.na(expectancy[, i])] <- median(expectancy[, i], na.rm = TRUE)
}

# write the fixed data to a new CSV file
write.csv(expectancy, "Life_Expectancy_Data_Fixed.csv", row.names = FALSE)
