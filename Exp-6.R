diabetes <- data.frame(
  Age = c(21,25,28,32,35,38,42,45,48,52,55,58,62,65,68),
  Glucose = c(85,90,95,100,110,120,125,130,135,140,145,150,155,160,170),
  BloodPressure = c(65,68,70,72,75,78,80,82,84,86,88,90,92,94,96),
  BMI = c(22,23,24,25,26,27,28,29,30,31,32,33,34,35,36),
  Outcome = c(0,0,0,0,0,1,1,1,1,1,1,1,1,1,1)
)

print(diabetes)

linear_model <- lm(Outcome ~ Age, data = diabetes)

summary(linear_model)

plot(diabetes$Age,
     diabetes$Outcome,
     main = "Diabetes Trend by Age",
     xlab = "Age",
     ylab = "Outcome",
     pch = 19,
     col = "blue")

abline(linear_model,
       col = "red",
       lwd = 2)

multiple_model <- lm(Outcome ~ Age + Glucose + BloodPressure + BMI,
                     data = diabetes)

summary(multiple_model)