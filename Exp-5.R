# Create Diabetes Dataset
diabetes <- data.frame(
  Age = c(21,25,28,32,35,38,42,45,48,52,55,58,62,65,68),
  BloodPressure = c(65,70,72,75,78,80,82,85,88,90,92,95,98,100,102)
)

# Display Dataset
print(diabetes)

# Scatter Plot
plot(diabetes$Age, diabetes$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19,
     col = "blue")

# Create Age Groups
diabetes$AgeGroup <- cut(diabetes$Age,
                         breaks = c(20,30,40,50,60,70),
                         labels = c("20-30","31-40","41-50","51-60","61-70"))

# Calculate Average Blood Pressure
bp <- aggregate(BloodPressure ~ AgeGroup,
                data = diabetes,
                FUN = mean)

# Display Average BP
print(bp)

# Bar Chart
barplot(bp$BloodPressure,
        names.arg = bp$AgeGroup,
        col = "lightgreen",
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure")