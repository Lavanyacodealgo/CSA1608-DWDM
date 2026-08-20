# Sales data
sales <- c(5,10,11,13,15,35,50,55,72,92,204,215)

# Divide into 3 equal-frequency bins (4 values each)
bin1 <- sales[1:4]
bin2 <- sales[5:8]
bin3 <- sales[9:12]

# Display bins
cat("Bin 1:", bin1, "\n")
cat("Bin 2:", bin2, "\n")
cat("Bin 3:", bin3, "\n")
