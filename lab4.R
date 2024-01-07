fun1<-function(x){
  ans <- (3/4)*((x/4)^2)*exp(-(x/4)^3)
  return(ans)
}

print(fun1(1))

q <- function(x){
  ans <- 4*(-log(1-x))^(1/3)
}

print(q(0.1))

val <- runif(100000)

set.seed(100)
val <- runif(100000)
print(val)

