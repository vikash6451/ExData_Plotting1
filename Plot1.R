mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'" # Create an SQL Query
myFile <- "C:\\Users\\VIKASH\\Documents\\household_power_consumption.txt" # poin to the local file
myData <- read.csv2.sql(myFile,mySql) # Read necessary line
date_time<-paste(myData$Date,myData$Time)
date_time<-strptime(date_time,"%d/%m/%Y %H:%M:%S")
myData<-cbind(myData,date_time)
hist(myData$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(Kilowatts)",ylab="Frequency")
