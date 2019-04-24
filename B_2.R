head(airquality)
mean(airquality$Ozone)
mean(airquality$Ozone,na.rm=TRUE)  
max(airquality$Solar.R)
max(airquality$Solar.R,na.rm=TRUE)
summary(airquality)
air=airquality
air$Ozone=ifelse(is.na(air$Ozone),median(air$Ozone,na.rm=TRUE),air$Ozone)
summary(air)
air$Solar.Danger=air$Solar.R>100
head(air)
head(air)
brks=c(0,50,100,150,200,250,300,350)
air$Solar.R=cut(air$Solar.R,breaks = brks,include.lowest=TRUE)
head(air)
air1=air
air1$Month=gsub(5,"MAY",air1$Month)
air1$Month=gsub(6,"JUNE",air1$Month)
air1$Month=gsub(7,"JUly",air1$Month)
air1$Month=gsub(8,"AUG",air1$Month)
air1$Month=gsub(9,"SEPT",air1$Month)
head(air1)
sport=c("Hockey","Baseball","Football")
league=c("L1","L2","L3")
trophy=c("Sachin","Saurav","Yuvraj")
trophies1=cbind(sport,league,trophy)
trophies1
trophies2=data.frame(sport=c("swimming","running"),league=c("watson","LEE"),trophy=c("Gavaskar","Tendulkar"),StringsAsFactors=FALSE)
trophies2
trophies2=data.frame(sport=c("swimming","running"),league=cophy=c("Gavaskar","Tendulkar"),stringsAsFactors=FALSE)
trophies2
trophies=rbind(trophies1,trophies2)
trophies
airquality
require(datasets)
data("airquality")
str(airquality)              
head(airquality)
air=airquality
head(air)
summary(air)
for (i in 1:nrow(air)){
	if(is.na(air[i,"Ozone"])){
	   air[i,"Ozone"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Ozone"],na.rm = TRUE)
	   }
	 if(is.na(air[i,"Solar.R"])){
	   air[i,"Solar.R"]<- mean(air[which(air[,"Month"]==air[i,"Month"]),"Solar.R"],na.rm = TRUE)
	   }
    }
normalize<- function(x){
	return((x-min(x))/(max(x)-min(x)))
	}   
air<- normalize(air) 
summary(air)
Y<- air[,"Ozone"]
X<- air[,"Solar.R"]
model1<- lm(Y~X)
model1
plot(Y~X)
abline(model1, col="blue", lwd=3)
Y<- air[,"Ozone"]
X<- air[,"Wind"]
model2<- lm(Y~X)
model2
plot(Y~X)
abline(model2, col="blue", lwd=3)
p1<- predict(model1,data.frame("X"=10))
p1
p2<- predict(model2,data.frame("X"=5))
p2
