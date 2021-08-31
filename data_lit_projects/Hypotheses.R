# Two hypotheses tested
#1)tripduration is higher if you are a subscriber
#2)More Females are likely to be subscribers than customers
Subscribers<-subset(citiBike,citiBike$usertype == "Subscriber", select = c("tripduration","gender"))
Customers<-subset(citiBike,citiBike$usertype == "Customer", select = c("tripduration"))

Subscribers

Customers

#data has been extracted for test 1

meanS<-mean(Subscribers$tripduration)
meanC<-mean(Customers$tripduration)
meanS
meanC

sd.S<-sd(Subscribers$tripduration)
sd.C<-sd(Customers$tripduration)
sd.S
sd.C

n.S<-length(Subscribers$tripduration)
n.C<-length(Customers$tripduration)
n.S
n.C

zscore<-(meanS-meanC)/sqrt((sd.S^2/n.S)+(sd.C^2/n.C))
zscore

p.val<-1-pnorm(zscore)
p.val

SubscriberM<-subset(citiBike,Subscribers$gender == 1,select = c("tripduration"))
SubscriberF<-subset(citiBike,Subscribers$gender == 2,select = c("tripduration"))

SubscriberM
SubscriberF


meanM<-mean(SubscriberM$tripduration)
meanF<-mean(SubscriberF$tripduration)
meanM
meanF

sd.M<-sd(SubscriberM$tripduration)
sd.F<-sd(SubscriberF$tripduration)
sd.M
sd.F

n.M<-length(SubscriberM$tripduration)
n.F<-length(SubscriberF$tripduration)
n.M
n.F

zscoreMvF<-(meanM-meanF)/sqrt((sd.M^2/n.M)+(sd.F^2/n.F))
zscoreMvF

p.val<-1-pnorm(zscoreMvF)
p.val



