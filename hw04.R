install.packages("olsrr")
require(olsrr)
HW04_data <- read.csv("E:/Spring 2020/Regression methods/HW04_data.csv", header=TRUE)

#a
lmod <-lm(y~x1+x2+x3+x4+x5+x6+x7+x8+x9,data = HW04_data)
kForA<-ols_step_best_subset(lmod,print_plot = TRUE)
kForA

#b
kForB<-ols_step_forward_p(lmod,details = TRUE)
kForB

#c
kForC<-ols_step_backward_p(lmod,details = TRUE)
kForC

#d
kForD<-ols_step_both_p(lmod,details=TRUE)
kForD


