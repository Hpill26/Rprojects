#before we delve into hypothesis tests and predictions on the data, lets first take a look at some of the general statistics of our data set. 
NBA_Drafts$Points<-as.numeric(NBA_Drafts$Points)
mean(NBA_Drafts$Points, na.rm = TRUE)
sd(NBA_Drafts$Points, na.rm = TRUE)
# mean of ppg: 6.996793
# standard deviation of ppg: 4.809661

NBA_Drafts$Assists<-as.numeric(NBA_Drafts$Assists)
mean(NBA_Drafts$Assists, na.rm = TRUE)
sd(NBA_Drafts$Assists, na.rm = TRUE)
#mean of apg: 1.4793
#standard deviation of apg: 1.461984

NBA_Drafts$`Total Rebounds`<-as.numeric(NBA_Drafts$`Total Rebounds`)
mean(NBA_Drafts$`Total Rebounds`, na.rm = TRUE)
sd(NBA_Drafts$`Total Rebounds`, na.rm = TRUE)
# mean of rpg: 3.137901
# standard deviation of rpd: 2.102804


#My hypothesis is that if a player scores over 11 points per game then their value over replacement will be much higher than the population mean 
#why tho? cause both bam and hasan score over 11 so their value must be great
#hypothesis test

#theoretical population mean since this is the begining of stat taking
meanPop<-mean(NBA_Drafts$`Value Over Replacement`, na.rm = TRUE)
# mean for value for whole dataset: 4.268805

#finding n 
nPop<-nrow(NBA_Drafts)
# n = 1622

#standard deviation of the population
sdPop<-sd(NBA_Drafts$`Value Over Replacement`, na.rm = TRUE)
#standard deviation of population = 11.02546

NBA_Drafts11ppg<-subset(NBA_Drafts, NBA_Drafts$Points >= 11)
View(NBA_Drafts11ppg)
meanSample<-mean(NBA_Drafts11ppg$`Value Over Replacement`, na.rm = TRUE)
#mean for value for whole dataset:17.48459

#finding z
zNba.11ppg<-(meanSample - meanPop)/(sdPop/sqrt(nPop))
#zScore = 48.27494

#calculate pvalue
pValNba.11ppg<-1-pnorm(zNba.11ppg)
pValNba.11ppg
# p value is 0 

# p is low therefore h0 must go
# we fail to reject the null so I guess we have failed to find sufficient evidence for my hypothesis.

#-----------------------------------------------------------------------------------------------------------------#

#Predictions

library(rpart)
library(rpart.plot)
library(caret)


NBA_Drafts$value <- substr(NBA_Drafts$`Value Over Replacement`,0,20)
NBA_Drafts$value<-as.numeric(NBA_Drafts$value)

NBA_Drafts$tRebounds <- substr(NBA_Drafts$`Total Rebounds`,0,20)
NBA_Drafts$trebounds<-as.numeric(NBA_Drafts$tRebounds)

NBA_Drafts$wShares <- substr(NBA_Drafts$`Win Share`,0,20)
NBA_Drafts$wShares<-as.numeric(NBA_Drafts$wShares)

#training the prediction model
control.nbaDrafts<-trainControl(method = "cv",number = 26)
modelCaret.nbaDrafts<-train(value~wShares+trebounds+Assists+Points,data = NBA_Drafts, trControl=control.nbaDrafts,method="lm",na.action = na.omit)


#importing my custom dataset 
bam_adebayo <- read_excel("E:/Spring 2020/Data101/Final Project/bam_adebayo.xlsx",  + col_types = c("text", "numeric", "numeric", + "numeric", "numeric"))

Bam_Value<-predict(modelCaret.nbaDrafts,bam_adebayo)
Bam_Value

#prediction of Bam's value: 4.2678
#prediction of Hassan's value: 11.3828








