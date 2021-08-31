ExpandedData101Survey <- read.csv("C:/Users/Harry/Downloads/ExpandedData101Survey.csv", header=TRUE)
Data101Survey <- read.csv("C:/Users/Harry/Downloads/Data101Survey.csv", header=TRUE)

#code to see my Id
harish<-subset(ExpandedData101Survey, ExpandedData101Survey$NumberFrom1to100 == 26)
harish<-subset(harish,harish$Activity_Basketball == 1)
#My ID = 6335

#code to find prof
prof<-subset(ExpandedData101Survey,ExpandedData101Survey$Tried_Snails == 1)
prof<-subset(prof,prof$RotaryPhone == "Yes, and I have")
prof<-subset(prof,prof$Dislike_Cilantro == 1)
#ID prof = 3260 

#code to find Lemin
lemin<-subset(ExpandedData101Survey,ExpandedData101Survey$NumberFrom1to100 == 77)
lemin<-subset(lemin,lemin$Animal == "cat")
#ID Lemin = 8510

#code to find Shanmukha
shanmukha<-subset(ExpandedData101Survey,ExpandedData101Survey$Animal == "Panda")
shanmukha<-subset(shanmukha,shanmukha$FavoriteTeam == "Houston Rockets")
#ID Shanmukha = 5989

#code to find Siddharth
siddharth<-subset(ExpandedData101Survey,ExpandedData101Survey$MovieStar == "Rajinikanth")
#ID Siddharth = 8224

#code to find Pranjal,Naveen,Dhruvin
pranjal<-subset(ExpandedData101Survey,ExpandedData101Survey$Activity_StickShift == 1)
pranjal<-subset(pranjal,pranjal$ChocolateOrVanilla == "Chocolate")
pranjal<-subset(pranjal,pranjal$CellPhoneType == "Android")
pranjal<-subset(pranjal,pranjal$Follow_Cricket == 1)
#Pranjal ID = 9032
#Naveen ID = 1747
#Dhruvin ID = 1632

#code to find Yuexing
hao<-subset(ExpandedData101Survey,ExpandedData101Survey$Tried_FrogLegs == 1)
hao<-subset(hao,hao$PopularFoodDislike == "cinnamon cake")
#Id Yuexing = 8023
#was hard to find becasue she said fav number is 5 but none of the people who had 5 as fav number between 1-5 and 1-100 had cinnamon cake as dislike food

#waldo yay
#used filter excel looks
# one person answered na for pretty much every possible choice
#id = 1807


