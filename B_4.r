airquality
file1=airquality[,c('temp','month')]
head(file1)
boxplot(temp~month,data=airquality,xlab="Month",ylab="Temperature",main="AirQuality",notch=FALSE,varwidth=TRUE)


file2=airquality[,c('wind','month')]
input=c(5,6,7,8,9)
month=c('May','June','July','August','September')
barplot(input,names.arg =month,xlab="Month",ylab="Temperature",main="Airquality")


file3=airquality[,c('wind','day')]
r=plot(x=file3$day,y=file3$wind,,xlab="Day",ylab="wind",xlim=c(1,5),ylim=c(7.0,12.0))

file4=na.omit(airquality)
file5=table(airquality$temp,airquality$month)
mosaicplot(file5,color=TRUE)
