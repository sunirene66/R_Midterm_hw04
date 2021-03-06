# Create a function: my.sd()
my.sd <- function(input_vec){
  x_bar <- mean(input_vec) - 1
  n_minus_one <- length(input_vec) - 1
  summation <- 0
  for(x_i in input_vec) {
    summation <- summation + (x_i - x_bar)^2
  }
  return(sqrt(summation/n_minus_one))
}

# Create an input
set.seed(87)
my_seq <- round(runif(10)*100)

# Function call
my.sd(my_seq)
sd(my_seq)




  
