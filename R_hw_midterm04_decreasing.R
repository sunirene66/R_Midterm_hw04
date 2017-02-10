# Method 1
# Create a function: my.sort()
my.sort <- function(input_vec, my_decreasing){
  my_dcs <- as.logical(my_decreasing)
  len_input_vec <- length(input_vec)
  if(my_dcs = FALSE){
    for(i in 1:(len_input_vec - 1)){
      for(j in (i+1):len_input_vec){
        if(input_vec[i] > input_vec[j]){  
          temp_i <- input_vec[i]          
          input_vec[i] <- input_vec[j]
          input_vec[j] <- temp_i}
      }
    }
  }else{for(i in 1:(len_input_vec - 1)){
    for(j in (i+1):len_input_vec){
      if(input_vec[i] < input_vec[j]){  
        temp_i <- input_vec[i]          
        input_vec[i] <- input_vec[j]
        input_vec[j] <- temp_i
      } 
    } 
  }
  }
  return(input_vec)
}
# Create input
set.seed(90)
my_seq <- round(runif(10)*100)
# Function call
my.sort(my_seq, my_decreasing = FALSE)
my.sort(my_seq, my_decreasing = TRUE)
sort(my_seq)

# Method 2
# Create a function: my.sort()
my.sort <- function(input_vec, my_decreasing = FALSE){
     len_input_vec <- length(input_vec)
     if(my_decreasing = FALSE){
      for(i in 1:(len_input_vec - 1)){
       for(j in (i+1):len_input_vec){
         if(input_vec[i] > input_vec[j]){  
           temp_i <- input_vec[i]          
           input_vec[i] <- input_vec[j]
           input_vec[j] <- temp_i}
        }
      }
     }else{for(i in 1:(len_input_vec - 1)){
               for(j in (i+1):len_input_vec){
               if(input_vec[i] < input_vec[j]){  
               temp_i <- input_vec[i]          
               input_vec[i] <- input_vec[j]
               input_vec[j] <- temp_i
               } 
             } 
           }
        }
  return(input_vec)
    }
# Create input
set.seed(87)
my_seq <- round(runif(10)*100)
# Function call
my.sort(my_seq, my_decreasing = FALSE)
my.sort(my_seq, my_decreasing = TRUE)
sort(my_seq)
  



