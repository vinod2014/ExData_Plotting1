library(datasets)
#load data
full_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
# subset
subset_data <- full_data[(full_data$Date == "1/2/2007") | (full_data$Date == "2/2/2007") , ]
# free-up original full data
full_data <- 1
png(filename="plot1.png", width=480, height=480)
hist(subset_data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
