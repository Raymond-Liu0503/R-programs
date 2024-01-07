#Lab 6
# 1) 50^2 = 2500
# 2) whatever/50
# 3) 

for (i in 2:100){
  s_space[i-1] <- i
}
#print(s_space)

rint <- function(d){
  out<-ceiling(runif(1,0,d))
  out
}

roll <- function(n){
  result <- list()
  for(i in 1:n){
    one <- rint(50)
    two <- rint(50)
    result[i] = one + two
  }
  result
}

print(roll(10))