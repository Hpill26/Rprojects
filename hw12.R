#libraries needed
library(faraway)
library(psych)
library(lmtest)

#a
mean(FACTORS$LOS)
#6.54
var(FACTORS$LOS)
#6.906531

#b
plot(FACTORS$FACTORS,FACTORS$LOS)

#c
losPos<-glm(FACTORS~LOS,family = poisson(link = log),data = FACTORS)
summary(losPos)

#d
#The pr value in this distribution with the factors^2 is much smaller which indicates a more precise model. 
losPos2<-glm(FACTORS~LOS+I(FACTORS^2),family = poisson(link = log),data = FACTORS)
summary(losPos2)

#e
#AIc first model:2037.4
#AIC second model:922.17