#read the data and get the subsets
data <- read.csv("household_power_consumption.txt",sep = ";",header=TRUE)
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))

#create the png
png("plot4.png",width=480,height=480)

#2x2 plot type, plotted row wise
par(mfrow = c(2,2))

datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")

#plot each graph one after another.

plot(datetime,((as.numeric(sub$Global_active_power))/1000)*2,type="l",xlab="",ylab="Global Active Power",col="black",cex=0.2)

plot(datetime,as.numeric(sub$Voltage),type="l",ylab="Voltage",col="black")

plot(datetime,as.numeric(sub$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering",col="black")
points(datetime,as.numeric(sub$Sub_metering_2),type="l",col="red")
points(datetime,as.numeric(sub$Sub_metering_3),type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd="2.5",col=c("black","red","blue"))

plot(datetime,as.numeric(sub$Global_reactive_power)/500,type="l",ylab="Global_reactive_power",col="black")

dev.off()