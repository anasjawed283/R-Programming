mydata=cars
mydata

sd1=sd(mydata$speed)
sd1

sd2=sd(mydata$dist)
sd2

covar=var(mydata$speed, mydata$dist)
covar

covar1=cov(mydata$speed, mydata$dist)
covar1

cor1=(covar1/sd1*sd2)
cor1

cor2=cor(mydata$speed, mydata$dist)
cor2

plot(mydata$speed, mydata$dist)

reg1=lm(mydata$speed~mydata$dist)
reg1
abline(reg1)

reg2=lm(mydata$dist~mydata$speed)
reg2
abline(reg2)
summary(reg2)