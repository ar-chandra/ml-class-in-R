# Linear Regression - One Variable

# Implement linear regression with one variable to predict profits for a food truck. 
# Suppose you are the CEO of a restaurant franchise and are considering different cities for 
# opening a new outlet. The chain already has trucks in various cities and you have data for 
# profits and populations from the cities.

# You would like to use this data to help you select which city to expand to next.

# x refers to the population size in 10,000s
# y refers to the profit in $10,000s

data <- read.csv("ex1data1.txt", header = F, col.names = c("population", "profit"))

X <- data$population
y <- data$profit

source("plotData.R")
plotData(X, y)

X <- matrix(X, length(X))
y <- matrix(y, length(y))

# running gradient descent
ones <- array(1, nrow(X))
X <- matrix(c(ones, X), nrow = nrow(X))
theta <- matrix(0,2)
num_iters <- 1500
alpha <- 0.01

source("computeCost.R")
cost <- computeCost(X, y, theta)

source("gradientDescent.R")
theta <- gradientDescent(X, y, theta, alpha, num_iters)

print("theta found by gradient descent")
print(theta)


matplot(X[,2],(X %*% theta), add = T, type = "l")













