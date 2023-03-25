#generates random int
rint<-function(d) {
  out<-ceiling(runif(1,0,d))
  out
}

roll <- function(){
  eight_die <- rint(8)
  ten_die <- rint(10)
  twelve_die <- rint(12)
  rolls <- c(eight_die, ten_die, twelve_die)
  total <- eight_die + ten_die + twelve_die
  result <- list(rolls, total)
  return(result)
}

#Simulate rolls
sim <- function(n){
  games <- list()
  for(i in 1:n){
    games <- append(games, roll())
  }
  games
}
n <- 100
print(sim(n))

simC <- function(n){
  wins <- 0.0
  for(i in 1:n){
    t <- roll()
    if (t[2] <= 14){
      wins <- wins + 1.0
    }
  }
  result <- wins/n
  return(result)
}

print(simC(1000000))

#probability of rolling all sevens
sevens <- function(n){
  wins <- 0.0
  for(i in 1:n){
    t <- roll()
    if(t[[1]][[1]] == 7 & t[[1]][[2]] == 7 & t[[1]][[3]] == 7){
      wins <- wins + 1.0
    }
  }
  result <- wins/n
  return(result)
}

print(sevens(1000000))

game <- function(n){
  free_roles <- 0
  rolls <- n
  while(rolls>0){
    t <- roll()
    rolls <- rolls-1
    #test if the result is triple 7s
    if(t[[1]][[1]] == 7 & t[[1]][[2]] == 7 & t[[1]][[3]] == 7){
      return(TRUE)
    }
    #tests if you rolled an extra roll
    if (t[2] <= 14){
      rolls <- rolls + 1
    }
  }
  return(FALSE)
}

print(game(1))

# If you get triple sevens you win, if you get a number under 14 you get an extra roll
sim_games <- function(n){
  wins <- 0
  total <- 0
  for(i in 1:n){
    result <- game(1)
    if (isTRUE(result)){
      wins <- wins + 1
    }
    total <- total + 1
  }
  return(wins/total)
}

print(sim_games(1000000))