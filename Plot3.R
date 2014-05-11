mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "C:\\Users\\VIKASH\\Documents\\household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql)
date_time<-paste(myData$Date,myData$Time)
date_time<-strptime(date_time,"%d/%m/%Y %H:%M:%S")
myData<-cbind(myData,date_time)
plot(myData$date_time,myData$Sub_metering_1,xlab="",ylab="Energy sub metering",main="",type="l")
lines(myData$date_time,myData$Sub_metering_2,col="red")
lines(myData$date_time,myData$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))