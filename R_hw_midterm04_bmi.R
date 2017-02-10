# Method 1
# Create a function: bmi.calculator()
bmi.calculator <- function(w, h){
  h <- h/ 100   
  bmi <- w / h^2
  return(w / h^2)
}

# Create input
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

# Function call
bmis <- mapply(FUN = bmi.calculator, w = weights, h = heights)
heights_and_weights$bmis <- bmis
View(heights_and_weights)

# Method 2
library(magrittr)
library(dplyr)
heights_and_weights$bmis <- NULL
heights_and_weights %>%
  mutate(bmi = weights / (heights/100)^2) %>%
  View()





  
