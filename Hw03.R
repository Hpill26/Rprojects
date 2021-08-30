my_data <- read.csv("E:/Spring 2020/Regression methods/HW03_data.csv", header=TRUE)


#a
lmodSecondOrder<- lm(y~x1+x2+I(x1*x2)+I(x1^2)+I(x2^2),data = my_data)
summary(lmodSecondOrder)

#b

#Ho: x1x2 = 0
lmodreducedx1x2<- lm(y~x1+x2+I(x1^2)+I(x2^2),data = my_data) 
anova(lmodreducedx1x2)

#Ho: x1^2 = 0
lmodreducedx1<- lm(y~x1+x2+I(x1*x2)+I(x2^2),data = my_data)
anova(lmodreducedx1)

#Ho: x2^2 = 0
lmodreducedx2<- lm(y~x1+x2+I(x1*x2)+I(x1^2),data = my_data)
anova(lmodreducedx2)