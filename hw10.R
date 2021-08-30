library(faraway)
library(lmtest)
library(epiDisplay)

logistic <- glm(test ~ age + bmi + diastolic + diabetes + glucose + insulin + pregnant + triceps,family=binomial(logit),data=pima)
summary(logistic)

## Easier view
logistic.display(logistic)

#Multiple Logistic Regression in R
library(epiDisplay)

#Likelihood Ratio Test for H0: B(triceps)=0 #write model without triceps
logistic1 <- glm(test ~ age + bmi + diastolic + diabetes + glucose + insulin + pregnant,family=binomial(logit),data=pima)
lrtest(logistic1,logistic)

#Likelihood Ratio Test for H0: B(triceps)+B(age)+B(insulin)=0 
logistic1 <- glm(test ~ + bmi + diastolic + diabetes + glucose + pregnant,family=binomial(logit),data=pima)
lrtest(logistic1,logistic)

#Likelihood Ratio Test for H0: b(diastolic) = b(insulin) = 1
logistic2 <- glm(test ~ diastolic + insulin,family=binomial(logit),data=pima)
lrtest(logistic2,logistic)
