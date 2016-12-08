##Set working directory
setwd("C:/Users/HS185031/Documents/Coursera/Exploratory Data Analysis/Week 1")

##Get required data set
full_data <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')

## set date format
full_data$Date <- as.Date(full_data$Date, format = "%d/%m/%Y")

## Get Required Data
w1_data_2 <- subset(full_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(full_data)

## Convert date 
datetime <- paste(as.Date(w1_data_2$Date), w1_data_2$Time)
w1_data_2$Datetime <- as.POSIXct(datetime)

