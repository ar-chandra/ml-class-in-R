


gradientDescent <- function(X, y, theta, alpha, num_iters){
  
  # Performs gradient descent to learn theta
  
  m <- nrow(y)
  J_history <- c(0, num_iters)
  
  temp <- c(0, nrow(theta))
  
  for (iter in 1:num_iters){
    
    
    for(i in 1:length(temp)){
      temp[i] <- theta[i] - alpha*(1/m)*sum(((X %*% theta)-y)*X[,i])
    }
    
    for(i in 1:length(temp)){
      theta[i] <- temp[i]
    }
  
    J_history[iter] <- computeCost(X, y, theta)
    
  }

  return(theta)
}