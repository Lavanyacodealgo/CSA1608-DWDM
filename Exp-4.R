# Data
x <- c(200,300,400,600,1000)

# Min-Max Normalization
minmax <- (x - min(x)) / (max(x) - min(x))

print(minmax)