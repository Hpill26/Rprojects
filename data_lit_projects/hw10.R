library(rpart)
library(rpart.plot)
library(caret)

#external data by finding the exact day
citybike.train$Day <- substr(citybike.train$starttime,9,10)
citybike.train$Day <- as.numeric(citybike.train$Day)

citybike.test10000A$Day<-substr(citybike.test10000A$starttime,9,10)
citybike.test10000A$Day <- as.numeric(citybike.test10000A$Day)

citybike.test10000B$Day<-substr(citybike.test10000B$starttime,9,10)
citybike.test10000B$Day <- as.numeric(citybike.test10000B$Day)


#training the model with cross validation
control.citybike<-trainControl(method = "cv",number = 26)
modelCaret.citybike<-train(tripduration~Day+bikeid+I(birth.year^2),data = citybike.train, trControl=control.citybike,method="lm",na.action = na.pass)


#checking training data
modelCaret.citybike
modelCaret.citybike$finalModel
modelCaret.citybike$resample


#Predicting on the 1000 citibike B data
Locos.CityBikeCV.predictionsB<-predict(modelCaret.citybike,citybike.test10000B)
Locos.CityBikeCV.predictionsB

Locos.CityBikeCV.predictionsA<-predict(modelCaret.citybike,citybike.test10000A)
Locos.CityBikeCV.predictionsA

DMwR::regr.eval(Locos.CityBikeCV.predictionsA,citybike.test10000Awithduration$tripduration)

#rmse is 1.3295e04 Idk y it keeps being the same number no matter what I do