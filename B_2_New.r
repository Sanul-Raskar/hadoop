//data cleaning

head(airquality)

max(airquality$Ozone) 
max(airquality$Ozone,na.rm=TRUE) 
 
max(airquality$Wind) 
max(airquality$Wind,na.rm=TRUE) 
 
 
mean(airquality$Ozone) 
mean(airquality$Ozone,na.rm=TRUE) 

mean(airquality$Solar.R) 
mean(airquality$Solar.R,na.rm=TRUE)

airquality$Ozone=ifelse(is.na(airquality$Ozone),mean(airquality$Ozone,na.rm=TRUE),airquality$Ozone) 
summary(airquality) 

airquality$Solar.R=ifelse(is.na(airquality$Solar.R),mean(airquality$Solar.R,na.rm=TRUE),airquality$Solar.R) 
summary(airquality)

//adding new column

air=airquality

air$new.solar=air$Solar.R>100
head(air)

air$new.ozone=air$Ozone>30
head(air)  

air$new.wind=air$Wind>10
head(air)  


//data integration  

sports=c("cricket","football","hockey")
league=c("L!","L2","L3")
players=c("sachin","rahul","dhoni")   
trophy=cbind(sports,league,players)
trophy


data1=data.frame(sports=c("cricket","football","hockey"),league=c("L1","L2","L3"),players=c("sachin","rahul","dhoni")   )
data1
data2=data.frame(sports=c("vollyball","baseball","tennis"),league=c("L4","L5","L6"),players=c("bret","shane","virat")) 
data2   

data3=rbind(data1,data2) 
data3  

//data transformation  

head(air)   

brks=c(0,50,100,150,200,250,300) 
brks   

air$Solar.R=cut(air$Solar.R,breaks=brks,include.lowest=TRUE)  
head(air)
tail(air)    

air1=air
air1$Month=gsub(5,"MAY",air1$Month)  
air1$Month=gsub(6,"JUNE",air1$Month) 
air1$Month=gsub(7,"JULY",air1$Month) 
air1$Month=gsub(8,"AUGUST",air1$Month) 
air1$Month=gsub(5,"SEPTEMBER",air1$Month)  
head(air1) 
tail(air1)  

head(air1,n=10)
 
 


//linear modelling 

x=air[,"Ozone"]
y=air[,"Solar.R"] 
model<-lm(y~x) 
model  
plot(y~x) 



x=air[,"Wind"]
y=air[,"Solar.R"] 
model<-lm(x~y) 
model  
plot(x~y)   

