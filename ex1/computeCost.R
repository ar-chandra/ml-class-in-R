

computeCost <- function(X, y, theta){
  
  # computes cost of using theta as parameter
  # for linear regression to fit data points in X and y
  
  # we minimize this cost using gradient descent and arrive at
  # a new theta
  m <- nrow(X)
  #print("Computing cost")
  predictions <- X %*% theta
  
  sqrErrors <- (predictions - y)^2
  
  J <- 1/(2*m)*(sum(sqrErrors))
  
  
  return(J)
  
}