library(faraway)
require(olsrr)
HW04_data <- read.csv("E:/Spring 2020/Regression methods/HW04_data.csv", header=TRUE)

#a
lmod <-lm(y~x1+x2+x3+x4+x5+x6+x7+x8+x9,data = HW04_data)
vif(lmod)

#b
res<-residuals(lmod)
res
qqnorm(res)

#c
x<-HW04_data$x1+HW04_data$x2+HW04_data$x3+HW04_data$x4+HW04_data$x5+HW04_data$x6+HW04_data$x7+HW04_data$x8+HW04_data$x9
plot(x,res)
