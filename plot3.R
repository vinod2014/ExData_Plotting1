library(datasets)
full_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- full_data[(full_data$Date == "1/2/2007") | (full_data$Date == "2/2/2007") , ]
# Free up full data
full_data <- 0 
png(filename="plot3.png", width=480, height=480)
dateTime <- strptime( paste(subset_data$Date,subset_data$Time), format="%d/%m/%Y %H:%M:%S")
Sub_metering_1 <- subset_data$Sub_metering_1
Sub_metering_2 <- subset_data$Sub_metering_2
Sub_metering_3 <- subset_data$Sub_metering_3
plot(dateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTime, Sub_metering_2, type="l", col="red")
lines(dateTime, Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty="solid", lwd=2)
dev.off()
