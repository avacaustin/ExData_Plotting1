TwoDays <- subset(fread("household_power_consumption.txt",
                        sep=";", header=TRUE,na.strings="?"),
                  Date=="1/2/2007"|Date=="2/2/2007")
datetime<-strptime(paste(TwoDays$Date, TwoDays$Time),
                   format="%d/%m/%Y %H:%M:%S")
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(datetime,TwoDays$Global_active_power,type="l",xlab="",
     ylab="Global Active Power")
plot(datetime,TwoDays$Voltage,ylab="Voltage",type="l")
plot(datetime,TwoDays$Sub_metering_1,type="l",xlab="",
     ylab="Energy sub metering")
lines(datetime,TwoDays$Sub_metering_2,type="l",col="red")
lines(datetime,TwoDays$Sub_metering_3,type="l",col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"),bty="n")
plot(datetime,TwoDays$Global_reactive_power,type="l",
       ylab="Global_reactive_power")
dev.off()