library(here)

here::here("Course4week1.R")

setwd("C:\\Users\\SUN\\Documents\\R Studio Scripts\\")

NewData <- read.delim("C:\\Users\\SUN\\Documents\\R Studio Scripts\\Files Necessary\\Course4week1\\household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData <- read.delim("Assignment 4 week 1/household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData$Global_active_power <- c(as.numeric(NewData$Global_active_power))

Subdata <- NewData[NewData$Date %in% c("1/2/2007","2/2/2007") ,]

Subdata$Global_active_power <- c(as.numeric(Subdata$Global_active_power))


Subdata$datetime <- strptime(paste(Subdata$Date, Subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 





Subdata$datetime <- strptime(paste(Subdata$Date, Subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

par(mfrow = c(2,2))
par(mar = rep(2,4))


# 1st plot 

plot(Subdata$datetime,Subdata$Global_active_power,type = 'l' , xlab = " " , ylab = " Global Active Power in KWH")

#2nd Plot

plot(Subdata$datetime,Subdata$Voltage , type ='l' , xlab = " " , ylab = "Volatge")

#3rd Plot

plot(Subdata$datetime,Subdata$Sub_metering_1,type = 'l',ylab = "Energy Sub Meter", xlab = " ")
lines(Subdata$datetime,Subdata$Sub_metering_2,type = 'l',col = 'red')
lines(Subdata$datetime,Subdata$Sub_metering_3,type = 'l',col = 'blue')

#4th plot 

plot(Subdata$datetime,Subdata$Global_reactive_power , lwd = .75 ,type = 'l' , xlab = " " , ylab = " Global_Reactive_Power")
