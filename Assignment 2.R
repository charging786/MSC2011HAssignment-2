#Assignment 2 - Narcissistic Numbers

#Getting the prompt for user
x <- readline("Please enter a three digit number: ")

#Convert to numeric
x <- as.numeric(x)

#check if input proper
if (is.na(x) | x < 100 | x >= 1000) {
  print("Error. Quitting")
} else {
  
  #Calculating narcissistic number here
  last = x %% 10
  first = x %/% 100
  mid1 = x %/% 10
  mid2 = mid1 %% 10
  total = last^3 + first^3 + mid2^3
  
  #Displaying result
  if (x == total) {
    print(paste(x, "is a narcissistic number"))
  } else {
    print(paste(x, "is not a narcissistic number"))
  }
}
