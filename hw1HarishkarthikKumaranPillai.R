#WHITESPRUCE <- read_excel("E:/Spring 2020/Regression methods/WHITESPRUCE.xlsx")

#a
plot(WHITESPRUCE$DIAMETER,WHITESPRUCE$HEIGHT,xlab="Diameter",ylab="Height",main="Predicting heights of Spruce Trees")

x<-WHITESPRUCE$DIAMETER
y<-WHITESPRUCE$HEIGHT
#b
SpruceMod<-lm(x~y) 
#c
abline(SpruceMod)
#d
summary(SpruceMod) 


#e
#diameter.df<- data.frame(WHITESPRUCE$DIAMETER)
#diameter.df
#diameter.sub <- subset(diameter.df, y == 20 )
#diameter.sub
predict(SpruceMod, data.frame(x = 20), interval = "confidence", conf.level = 0.95)

anova(LinSpruce) #f
summary(LinSpruce)$r.squared #g

