# Calculating the variance manually
xdf <- read.csv("Unit 1/10_year_bond_rate_2010-2015.csv", header = TRUE)
x <- as.numeric(paste(xdf$Adj.Close))
x <- x[!is.na(x)]
n <- length(x) # n = 1509
nlag <- n - 1 # n-1
m <- mean(x)
v <- var(x, na.rm = TRUE)
gamma0 <- var(x) * (n - 1) / n
aut <- acf(x, lag.max = nlag) # n-1
sum <- 0
for  (k in 1:nlag) {
  sum <- sum + (1 - k / n) * aut$acf[k + 1] * gamma0
}
vxbar <- 2 * sum / n + gamma0 / n # note the mult of sum by 2
vxbar
