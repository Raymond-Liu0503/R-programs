dat1 <- read.csv(file = 'baby_1.csv')
dat2 <- read.csv(file = 'baby_2.csv')

dat1[dat1==-99.0] <- NA
dat2[dat2==-99.0] <- NA
print(dat1)
print(dat2)

signif(dat1,2)
signif(dat2,2)

help(hist)
lapply(dat1, mean, na.rm = TRUE)
lapply(dat2, mean, na.rm = TRUE)
lapply(dat1, var, na.rm = TRUE)
lapply(dat2, var, na.rm = TRUE)

hist(dat1[,1])
hist(dat1[,2])
hist(dat2[,1])
hist(dat2[,2])

dat <- rbind(dat1, dat2)
print(dat)
lapply(dat, mean, na.rm = TRUE)
lapply(dat, var, na.rm = TRUE)
