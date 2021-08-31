#First rule: P(having used rotary phone | choosing vanilla)
#Prior Possibility: P(H) = 26 /179
rotary<-subset(ExpandedData101Survey,ExpandedData101Survey$RotaryPhone == "Yes, and I have")
nrow(rotary)
#P(E) = 93/179
vanilla<-subset(ExpandedData101Survey,ExpandedData101Survey$ChocolateOrVanilla == "Vanilla")
nrow(vanilla)
#P(E|H) = 11/26
vanillaGIVENrotary<-subset(rotary,rotary$ChocolateOrVanilla == "Vanilla")
nrow(vanillaGIVENrotary)

#P(H|E) from code is 11/93
rotaryGIVENvanilla<-subset(vanilla,vanilla$RotaryPhone == "Yes, and I have")
nrow(rotaryGIVENvanilla)

#So, P(H|E) = P(E|H) * P(H)/P(E)
#P(H|E) + 11/26 * (26/93) == 11/93 so, method works. 

#Posterior probability = 11/26 probabilty of having used a rotary phone given u choose vanilla over chocolate

#second rule: P(android|(Warmer temperature && Basketball))
#Prior prob: P(H) = 52/179
android<-subset(ExpandedData101Survey,ExpandedData101Survey$CellPhoneType == "Android")
nrow(android)
#Posterior prob: P(H|E) = 5/18
androidGIVENwarmANDbball<-subset(warmANDbasketball,warmANDbasketball$CellPhoneType =="Android")
nrow(androidGIVENwarmANDbball)

#Rule 3 P(favorite animal is dog|eaten snails)
#Prior P(H) = 44/179
dogs<-subset(ExpandedData101Survey,ExpandedData101Survey$Animal == "Dogs" | ExpandedData101Survey$Animal == "dog" | ExpandedData101Survey$Animal == "Dog")
#Posterior P(H|E) = 11/57
dogsGIVENsnails<-subset(snails,Animal == "Dogs" | Animal == "dog" | Animal == "Dog")
nrow(dogsGIVENsnails)












