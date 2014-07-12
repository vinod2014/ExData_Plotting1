library(datasets)
full_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- full_data[(full_data$Date == "1/2/2007") | (full_data$Date == "2/2/2007") , ]
# free up original full set
full_data <- 1
png(filename="plot2.png", width=480, height=480)
dateTime <- strptime( paste(subset_data$Date,subset_data$Time), format="%d/%m/%Y %H:%M:%S")
Global_active_power <- subset_data$Global_active_power
plot(dateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.off()
