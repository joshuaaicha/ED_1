file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = T, sep = ";", na.strings = "?")

sub_data <- subset(data,data$Date=="1/2/2007" | data$Date == "2/2/2007")

hist(as.numeric(as.character(sub_data$Global_active_power)), col = "red", main = "Global Active Power" , xlab = "Global Active Power (kilowatts)")
dev.copy(png, file= "plot1.png")
dev.off()