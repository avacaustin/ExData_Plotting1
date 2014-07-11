TwoDays <- subset(fread("household_power_consumption.txt",
                 sep=";", header=TRUE,na.strings="?"),
                 Date=="1/2/2007"|Date=="2/2/2007")
png(file="plot1.png",width=480,height=480)
hist(as.numeric(TwoDays$Global_active_power),main="Global Active Power",
     xlab="Global Active Power", col="red")
dev.off()
