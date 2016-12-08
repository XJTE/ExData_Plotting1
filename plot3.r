##Set working directory
setwd("C:/Users/HS185031/Documents/Coursera/Exploratory Data Analysis/Week 1")

##Defined Graphic device
png("plot3.png", width=400, height=400)

## Generate plot 3
with(w1_data_2, {
    plot(Sub_metering_1 ~ Datetime, type = "l", 
    ylab = "Global Active Power (kilowatts)", xlab = "")
    lines(Sub_metering_2 ~ Datetime, col = 'Red')
    lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

	   ## Close Device
dev.off()