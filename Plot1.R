library(here)

here::here("Course4week1.R")

setwd("C:\\Users\\SUN\\Documents\\R Studio Scripts\\")

NewData <- read.delim("C:\\Users\\SUN\\Documents\\R Studio Scripts\\Files Necessary\\Course4week1\\household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData <- read.delim("Assignment 4 week 1/household_power_consumption.txt", header = T,sep = ";", dec = ".")

NewData$Global_active_power <- c(as.numeric(NewData$Global_active_power))

Subdata <- NewData[NewData$Date %in% c("1/2/2007","2/2/2007") ,]

Subdata$Global_active_power <- c(as.numeric(Subdata$Global_active_power))

Subdata$Date <- c(as.Date(Subdata$Date))

Subdata <- NewData[NewData$Date %in% c("1/2/2007","2/2/2007") ,]
 


hist(Subdata$Global_active_power,freq =T,xlim = c(0,6),las = "1"  ,col = "red",breaks = 24,xlab = " Global Active Power" , main = " Global Active Power")

