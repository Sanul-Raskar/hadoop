mydata<-mtcars

myvars <- c("mpg", "cyl", "disp")
newdata <- mydata[myvars]
newdata

# another method
myvars <- paste("X.", 1:3, sep="")
newdata <- mydata[myvars]

# select 1st and 5th thru 10th variables
newdata <- mydata[c(1,5:10)] 
newdata

# using subset function (part 2)
newdata <- subset(mydata, am==1 & mpg > 21,
                  select=hp:carb) 
newdata


# sort by mpg
newdata <- mtcars[order(mpg),]
newdata
# sort by mpg and cyl
newdata <- mtcars[order(mpg, cyl),]
newdata
#sort by mpg (ascending) and cyl (descending)
newdata <- mtcars[order(mpg, -cyl),] 
newdata

mydata1<-mtcars
total<-merge(mydata,mydata1,by=c("mpg"))
total

#melt and cast 

install.packages("reshape")
mydata<-t(mtcars) 

install.packages(reshape)
library(reshape)
mdata <- melt(mydata, id=c("id","time"))
mdata

subjmeans <- cast(mdata, id~variable, mean)
timemeans <- cast(mdata, time~variable, mean) 


