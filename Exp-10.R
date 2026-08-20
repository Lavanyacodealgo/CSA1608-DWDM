water <- data.frame(
  hardness = c(40, 55, 60, 75, 80, 90, 100, 110, 120, 130),
  mortality = c(1800, 1700, 1680, 1600, 1550, 1500, 1450, 1400, 1350, 1300)
)

print(water)

plot(water$hardness,
     water$mortality,
     main = "Mortality vs Hardness",
     xlab = "Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

model <- lm(mortality ~ hardness, data = water)

abline(model, col = "red", lwd = 2)

summary(model)

predict(model, newdata = data.frame(hardness = 88))