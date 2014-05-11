## Author: Molla Hunegnaw 
## plot3.R
mydata <- read.table('household_power_consumption.txt', sep=';', header=T, 
                     colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'), na.strings='?')
mydata$DateTime <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")
mydata <- subset(mydata, as.Date(DateTime) >= as.Date("2007-02-01") &  as.Date(DateTime) <= as.Date("2007-02-02"))
png("plot3.png", height=480, width=480)
plot(mydata$DateTime, mydata$Sub_metering_1, pch=NA, xlab="", ylab="Energy sub metering")
lines(data$DateTime, mydata$Sub_metering_1)
lines(data$DateTime, mydata$Sub_metering_2, col='red')
lines(data$DateTime, mydata$Sub_metering_3, col='blue')
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1),  col = c('black', 'red', 'blue'))
dev.off()
