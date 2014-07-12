full_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subset_data <- full_data[(full_data$Date == "1/2/2007") | (full_data$Date == "2/2/2007") , ]

dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
> times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
> x <- paste(dates, times)