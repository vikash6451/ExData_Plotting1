mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "C:\\Users\\VIKASH\\Documents\\household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql)
date_time<-paste(myData$Date,myData$Time)
date_time<-strptime(date_time,"%d/%m/%Y %H:%M:%S")
myData<-cbind(myData,date_time)
plot(myData$date_time,myData$Global_active_power,ylab="Global Active Power(Kilowatts)",xlab="",main="",type="l")