file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = T, sep = ";", na.strings = "?")

sub_data <- subset(data,data$Date=="1/2/2007" | data$Date == "2/2/2007")

Sys.setlocale("LC_TIME", "English")

date_converted <- as.Date(data[,1], format = "%d/%m/%Y")
time_converted <- strptime(data[,2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date_converted, data[,2]))

plot(time_axis, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.copy(png, file = "plot2.png")
dev.off()
