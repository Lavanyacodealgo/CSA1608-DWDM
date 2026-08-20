# Probabilities
good <- 0.45
bad <- 0.55

# Expected value without expansion
no_expand <- good*4 + bad*1.5

# Expected value with expansion
expand <- good*(7-2) + bad*(3-2)

cat("Expected Value (No Expansion):", no_expand, "Million\n")
cat("Expected Value (Expansion):", expand, "Million\n")

if(expand > no_expand){
  cat("Decision: Expand the Factory")
} else {
  cat("Decision: Do Not Expand")
}