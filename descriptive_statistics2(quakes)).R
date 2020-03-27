library(datasets)
data("quakes")
earth_quakes <- datasets::quakes
print(earth_quakes[,c(3,4,5)])
head(earth_quakes[,c(3,4,5)])
tail(earth_quakes[,c(3,4,5)])
summary(earth_quakes$depth)
summary(earth_quakes[,c(3,4,5)])

plot(earth_quakes$depth)
plot(earth_quakes$depth,earth_quakes$mag)
plot(earth_quakes$depth , type="l")
plot(earth_quakes$depth, xlab = 'depth concentration', ylab = 'No of Insances',main= 'depth levels',col='blue')

#Horizontal bar plot
barplot(earth_quakes$depth , main='Depth concentration',xlab = 'depth', col = "orange",horiz = F)

#Histogram
hist(earth_quakes$depth)
hist(earth_quakes$depth, main='Earth Quakes',xlab='depth',col = 'red')

#Single box plot
 boxplot(earth_quakes$depth)

 #Multiple box plot
 boxplot(earth_quakes[,3:5],
         main='Multiple')
 
 #margin of grid(mar)
 #no of rows and columns(mfrow)
 #border included or not(bty)
 #las:1 = horizontal
 #las:0 = vertical
 
 par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="n")
 plot(earth_quakes$depth)
 plot(earth_quakes$depth, earth_quakes$stations)
 plot(earth_quakes$depth, type= "l")
 barplot(earth_quakes$depth, main = 'Earthquakes',
         xlab = 'depth levels', col='red',horiz = T)
 hist(earth_quakes$depth)
 boxplot(earth_quakes[,3:5], main='Multiple Box plots')
