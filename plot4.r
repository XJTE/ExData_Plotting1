##Set working directory
setwd("C:/Users/HS185031/Documents/Coursera/Exploratory Data Analysis/Week 1")

##Defined Graphic device
png("plot4.png", width=400, height=400)

## Define plot parameter
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

## Generate plot 4
with(data, {
     plot(Global_active_power ~ Datetime, type = "l", 
     ylab = "Global Active Power", xlab = "")
     plot(Voltage ~ Datetime, type = "l", ylab = "Voltage", xlab = "datetime")
     plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Energy sub metering",
          xlab = "")
     lines(Sub_metering_2 ~ Datetime, col = 'Red')
     lines(Sub_metering_3 ~ Datetime, col = 'Blue')
     legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
             bty = "n",
             legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
     plot(Global_reactive_power ~ Datetime, type = "l", 
          ylab = "Global_rective_power", xlab = "datetime")
})

	   ## Close Device
dev.off()