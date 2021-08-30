logistic <- glm(test ~ age + bmi + diastolic + diabetes + glucose + insulin + pregnant + triceps,family=binomial(logit),data=pima)
predicted_values<-ifelse(predict(logistic,type="response")>0.5,1,0)
actual_values<-logistic$y
conf_matrix<table(predicted_values,actual_values)

#accuracy of logistic
summary(logistic)
 
 Call:
   glm(formula = test ~ age + bmi + diastolic + diabetes + glucose + 
         insulin + pregnant + triceps, family = binomial(logit), data = pima)
 
 Deviance Residuals: 
   Min       1Q   Median       3Q      Max  
 -2.5566  -0.7274  -0.4159   0.7267   2.9297  
 
 Coefficients:
   Estimate Std. Error z value Pr(>|z|)    
 (Intercept) -8.4046964  0.7166359 -11.728  < 2e-16 ***
   age          0.0148690  0.0093348   1.593 0.111192    
 bmi          0.0897010  0.0150876   5.945 2.76e-09 ***
   diastolic   -0.0132955  0.0052336  -2.540 0.011072 *  
   diabetes     0.9451797  0.2991475   3.160 0.001580 ** 
   glucose      0.0351637  0.0037087   9.481  < 2e-16 ***
   insulin     -0.0011917  0.0009012  -1.322 0.186065    
 pregnant     0.1231823  0.0320776   3.840 0.000123 ***
   triceps      0.0006190  0.0068994   0.090 0.928515    
 ---
   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
 
 (Dispersion parameter for binomial family taken to be 1)
 
 Null deviance: 993.48  on 767  degrees of freedom
 Residual deviance: 723.45  on 759  degrees of freedom
 AIC: 741.45
 
 Number of Fisher Scoring iterations: 5


library(ModelGood)
#finding sensitivity and specifit
with(logistic,Sensitivity(predicted_values,actual_values))
Sensitivity: 58.2 (CI_95:[52.1,64.2])
with(logistic,Specificity(predicted_values,actual_values))
Specificity: 89 (CI_95:[85.9,91.6])

#postive predictive values (postive and negative)
with(logistic,PPV(predicted_values,actual_values))
Positive predictive value: 73.9 (CI_95:[67.5,79.7])
with(logistic,NPV(predicted_values,actual_values))
Negative predictive value: 79.9 (CI_95:[76.3,83.1])
 

