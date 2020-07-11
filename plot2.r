library(here)

here::here("Course4week1.R")

setwd("C:\\Users\\SUN\\Documents\\R Studio Scripts\\")

NewData <- read.delim("C:\\Users\\SUN\\Documents\\R Studio Scripts\\Files Necessary\\Course4week1\\household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData <- read.delim("Assignment 4 week 1/household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData$Global_active_power <- c(as.numeric(NewData$Global_active_power))

Subdata <- NewData[NewData$Date %in% c("1/2/2007","2/2/2007") ,]

Subdata$Global_active_power <- c(as.numeric(Subdata$Global_active_power))

Subdata$Date <- c(as.Date(Subdata$Date))


Subdata$datetime <- strptime(paste(Subdata$Date, Subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


plot(Subdata$datetime,Subdata$Global_active_power,type = 'l' , xlab = " " , ylab = " Global Active Power in KWH")

