#The following R code performs LASSO selection using all 100 variables in the meatspec dataset in the faraway library

library(faraway)
library(glmnet) # include glmnet library including functions for LASSO
#------------------------------------------------#

# glmnet requires the x matrix and the response vector

hw14x <- as.matrix(meatspec[,-101]) #creates the x matrix for all 100 predictors V1-V100
hw14y <- meatspec[, 101] #creates the y vector

lassomod <- glmnet(hw14x,hw14y)
plot(lassomod)
print(lassomod)

cvfit <- cv.glmnet(hw14x,hw14y)
plot(cvfit)
cvfit$lambda.min
coef(cvfit,s="lambda.min") #variables with non-zero coefficients should be included in the LASSO model

##-------------End of Program with all vars-----------------##

hw14x <- as.matrix(meatspec[,1:30]) #includes the the first 30 variables V1 - V30
hw14y <- meatspec[, 101] #creates the y vector

lassomod <- glmnet(hw14x,hw14y)
plot(lassomod)
print(lassomod)

cvfit <- cv.glmnet(hw14x,hw14y)
plot(cvfit)
cvfit$lambda.min
coef(cvfit,s="lambda.min") 

# Variables included in the model: v1-v8,v12-v22,v25-v30