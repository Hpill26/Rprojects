#importing and formatting data for use
historic_temp <- read.csv("E:/Spring 2020/SoftWare Meth/Prog2/historic_temp.csv")
historic_temp<-na.omit(historic_temp)

#Hypothesis tests
#summary stats of max celsius temps
mean_Max_Temps<-mean(historic_temp$MaxCelsiusTemp)
sd_Max_Temps<-sd(historic_temp$MaxCelsiusTemp)
n_Max_Temps<-length(historic_temp$MaxCelsiusTemp)

mean_Max_Temps
sd_Max_Temps
n_Max_Temps

#find mean of averages to find the total avg of this sample 
mean_Avg<-mean(historic_temp$AverageCelsiusTemperature)
mean_Avg


z_score_MaxTemps<-(mean_Avg-mean_Max_Temps)/sqrt(sd_Max_Temps^2/n_Max_Temps)
p.val<-1-pnorm(z_score_MaxTemps)
z_score_MaxTemps
p.val

#Linear regression on min temps below 0
lmod<-lm(historic_temp$Year ~ historic_temp$MinCelsiusTemp + historic_temp$MaxCelsiusTemp)
summary(lmod)
