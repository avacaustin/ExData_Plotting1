TwoDays <- subset(fread("household_power_consumption.txt",
                        sep=";", header=TRUE,na.strings="?"),
                  Date=="1/2/2007"|Date=="2/2/2007")
datetime<-strptime(paste(TwoDays$Date, TwoDays$Time),
                   format="%d/%m/%Y %H:%M:%S")
png(file="plot3.png",width=480,height=480)
plot(datetime,TwoDays$Sub_metering_1,type="l",xlab="",
     ylab="Energy sub metering")
lines(datetime,TwoDays$Sub_metering_2,type="l",col="red")
lines(datetime,TwoDays$Sub_metering_3,type="l",col="blue")
legend("topright",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))
dev.off()