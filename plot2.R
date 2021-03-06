## Author: Molla Hunegnaw 
## plot2.R
mydata <- read.table('household_power_consumption.txt', sep=';', header=T, 
                     colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'), na.strings='?')
mydata$DateTime <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")
mydata <- subset(mydata, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
png("plot2.png", height=480, width=480)
plot(mydata$DateTime, mydata$Global_active_power, pch=NA, xlab="", ylab="Global Active Power (kilowatts)")
lines(mydata$DateTime, mydata$Global_active_power)
dev.off()
