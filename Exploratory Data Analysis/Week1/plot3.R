#Read the data and subset it
data <- read.csv("household_power_consumption.txt",sep = ";",header=TRUE)
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))

#get correct datetime
datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")
png("plot3.png",width=480,height=480)

#plot and use points to add data points
plot(datetime,as.numeric(sub$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering",col="black")
points(datetime,as.numeric(sub$Sub_metering_2),type="l",col="red")
points(datetime,as.numeric(sub$Sub_metering_3),type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd="2.5",col=c("black","red","blue"))
dev.off()