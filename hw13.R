#The following R code generates a ridge regression using all 100 variables in the meatspec dataset in the faraway library.

library(faraway)
library(psych)
library(QuantPsyc)
library(MASS)

hw13 <- meatspec
hw13 <- data.frame(hw13)
describe(hw13)

lmod <- lm(fat ~ .,data=hw13)
summary(lmod)

rgmod <- lm.ridge(fat ~ .,data=hw13, lambda = seq(0, 6e-08, len=21))
matplot(rgmod$lambda, coef(rgmod), type="l", xlab=expression(lambda),ylab=expression(hat(beta)),col=1)
which.min(rgmod$GCV) #use the generalized cross validation (GCV) estimate
abline(v=3.0e-08)
rgmod$coef #prints out the coefficients

##-------------All 100 Vars-----------------##


hw13 <- meatspec[,-(1:70)]
hw13 <- data.frame(hw13)
describe(hw13)

lmod <- lm(fat ~ .,data=hw13)
summary(lmod)

rgmod <- lm.ridge(fat ~ .,data=hw13, lambda = seq(0, 6e-08, len=21))
matplot(rgmod$lambda, coef(rgmod), type="l", xlab=expression(lambda),ylab=expression(hat(beta)),col=1)
which.min(rgmod$GCV) #use the generalized cross validation (GCV) estimate
abline(v=3.0e-08)
rgmod$coef #prints out the coefficients

#Are the ridge regression estimates for V71-V100 at the GCV chosen lambda similar to the ridge regression estimates for V71-V100 at the GCV chosen
#lambda for the ridge regression performed on all 100 variables?
#As we can see the gcv estimate for the first ridge regression with all 100 variables is 3.0e-08 11 whereas for the regression on just v71-v100 the 
#estimate is 6.0e-08 21. Which is twice the original amount which indicates that it is different. 

