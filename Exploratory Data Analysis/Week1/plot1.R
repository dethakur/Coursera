#read the data
data <- read.csv("household_power_consumption.txt",sep = ";",header=TRUE)
#create the subset
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))
#read the global active power from the dataset
gap <- (as.numeric(sub$Global_active_power)/100)*0.2
#open plot1.png
png("plot1.png",width=480,height=480)
#create historgram
hist(gap,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
#Save the plot into the file.
dev.off()
