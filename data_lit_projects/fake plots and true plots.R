#cleaning the data to find the data to find the highest Field goal percenatage
#field goal percentage is the percentage of the shots a player made over the career
my_data2008<-subset(my_data,my_data$`Draft Year` == 2008, select = c("FG%"))
h2008<-max(my_data2008, na.rm = TRUE)
#repeated above commands for every year from 08-16, changing var names and draft year to correspoding year

#created years and fg vectors to plot the data easily
years<-c(2008,2009,2010,2011,2012,2013,2014,2015,2016)
fg<-c(h2008,h2009,h2010,h2011,h2012,h2013,h2014,h2015,h2016)

# now to plot the fake plot
plot(years,fg,type="n",col="red",xaxt="n")
axis(1, at = seq(2008,2016, by = 1), las = 2)
smooth= smooth.spline(years,fg,spar=0.5)
lines(smooth)

