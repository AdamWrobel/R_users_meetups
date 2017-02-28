data_list <- list()
for(i in 1:3){
  x1 <- rnorm(10, mean = 3, sd = 1)
  x2 <- rpois(10, lambda = 2)
  y <- 2*x1 - x2 + rnorm(10, mean = 0, sd = 1)
  
  data_list[[i]] <- data.frame(y = y, x1 = x1, x2 = x2)
}

simulation <- function(obs){
  x1 <- rnorm(obs, mean = 3, sd = 1)
  x2 <- rnorm(obs, mean = 10, sd = 5)
  y <- 2*x1 - x2 + rnorm(obs, mean = 0, sd = 1)
  
  output <- data.frame(y = y, x1 = x1, x2 = x2)
  return(output)
}