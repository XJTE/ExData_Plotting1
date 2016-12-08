##Step 1: Set working directory
setwd("C:/Users/HS185031/Documents/Coursera/Exploratory Data Analysis/Week 1")

##Step 2: Get required data set
fh <- file("household_power_consumption.txt")
w1_data <- read.table(text = grep("^[1,2]/2/2007", readLines(fh), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)
 
##Step 3: Defined Graphic device
png("plot1.png", width=400, height=400)

##Step 4: Plot histogram
hist(w1_data$Global_active_power,
		main="Global Active Power",
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency",
		col="red")
		
## Step 5: Close Device
dev.off()