library(rpart)
library(rpart.plot)


citybike.train$Day <- substr(citybike.train$starttime,9,10)
citybike.train$Day <- as.numeric(citybike.train$Day)

citybike.test10000A$Day<-substr(citybike.test10000A$starttime,9,10)
citybike.test10000A$Day <- as.numeric(citybike.test10000A$Day)

citybike.test10000B$Day<-substr(citybike.test10000B$starttime,9,10)
citybike.test10000B$Day <- as.numeric(citybike.test10000B$Day)

#training the model
Locos.CityBike<-rpart(tripduration~Day,data = citybike.train,minsplit=1,minbucket=1,cp=0.001)
Locos.CityBike

rpart.plot(Locos.CityBike)

#Predicting on the 1000 citibike B data
Locos.CityBike.predictions<-predict(Locos.CityBike,citybike.test10000B)
Locos.CityBike.predictions

Locos.CityBike.predictionsA<-predict(Locos.CityBike,citybike.test10000A)
Locos.CityBike.predictionsA

DMwR::regr.eval(Locos.CityBike.predictionsA,citybike.test10000Awithduration$tripduration)
