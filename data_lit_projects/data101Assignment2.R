#performed a regular scatter plot on Pick value and did an exponential fit on it
plot(NBA_Drafts$Pick,NBA_Drafts$`Value Over Replacement`,xlab="Order Picked",ylab="value",main="Player's value Vs. Draft position",cex.axis = 0.6,font.lab=2,col.main=2,col=4)
mod=lm(log(NBA_Drafts$Pick)~NBA_Drafts$`Value Over Replacement`)
mod
abline(mod)

#Bar graph depicting points per game (PPG) over carreer
t1<-table(NBA_Drafts$Pick[NBA_Drafts$Points>15.0])
barplot(t1, xlab = "Points per game", ylab = "Number of players", main = "Carreer stats by first overall pick")

#Histogram
hist(NBA_Drafts$`Win SharesS/48`, xlab="Winshares",main="Histogram of players predicted winshares", probability = F)