#read the data
data <- read.csv("household_power_consumption.txt",sep = ";",header=TRUE)
#read the subset
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))
#save the date
date_val <- sub$Date
gap <- as.numeric(sub$Global_active_power)
datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")

#create a png
png("plot2.png",width=480,height=480)
#plot the graph
plot(datetime,(gap/1000)*2,type="l",xlab="",ylab="Global Active Power (kilowatts)")
#save it in png
dev.off()