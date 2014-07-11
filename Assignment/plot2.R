TwoDays <- subset(fread("household_power_consumption.txt",
                        sep=";", header=TRUE,na.strings="?"),
                  Date=="1/2/2007"|Date=="2/2/2007")
datetime<-strptime(paste(TwoDays$Date, TwoDays$Time),
                   format="%d/%m/%Y %H:%M:%S")
png(file="plot2.png",width=480,height=480)
plot(datetime,TwoDays$Global_active_power,type="l",xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()