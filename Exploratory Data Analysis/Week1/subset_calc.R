getwd()
setwd("/Users/devashishthakur/Documents/CourseraGit/Coursera/Exploratory Data Analysis/Week1/")
dir()
data <- read.csv("household_power_consumption.txt")
str(data)
data$Date.Time.Global_active_power.Global_reactive_power.Voltage.Global_intensity.Sub_metering_1.Sub_metering_2.Sub_metering_3
data$Date.Time
data <- read.csv("household_power_consumption.txt",sep = ";",header=TRUE)
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))
date_val <- sub$Date
gap <- as.numeric(sub$Global_active_power)
val <- as.Date(date_val, format ="%d/%m/%Y")
val <- format(val,"%b")
val
gap
date_val
str(date_val
)
str(val)
summary(date_val)
str(sub)
sum$Time
sub$Time
time_val <- sub$Time
time_val
val <- as.Date(date_val, format ="%d/%m/%Y")
val <- format(val,"%b")
val
val <- as.Date(date_val, format ="%d/%m/%Y")
val <- format(val,"%a")
val
sub%Date
sub
sub <- subset(data , data$Date %in% c("1/2/2007","2/2/2007"))
sub$Date
val <- as.Date(date_val, format ="%d/%m/%Y")
val
as.Date(sub$Date, format ="%d/%m/%Y"
)
as.Date(sub$Date, format ="%d/%m/%Y")
sub$Time
datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")
datetime
plot(datetime,gap)
plot(datetime,gap,type="l")
datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")
datetime <- strptime(paste(as.Date(sub$Date, format ="%d/%m/%Y"),sub$Time,sep=" "),"%Y-%m-%d %H:%M:%S")
savehistory("subset_calc.R")
