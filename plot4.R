  par(mfrow=c(2,2))
  
  ##PLOT 1
  plot(pruebas$timehour,pruebas$Global_active_power, 
       type="l", xlab="", ylab="Global Active Power")
  ##PLOT 2
  plot(pruebas$timehour,pruebas$Voltage, 
       type="l", xlab="datetime", ylab="Voltage")
    ##PLOT 3
  plot(pruebas$timehour,pruebas$Sub_metering_1, 
       type="l", xlab="", ylab="Energy sub metering")
lines(pruebas$timehour,pruebas$Sub_metering_2,col="red")
lines(pruebas$timehour,pruebas$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lwd=c(1,1), col=c("black", "red", "blue"), 
         bty="n", cex=0.2)
         
#PLOT 4
plot(pruebas$timehour,pruebas$Global_reactive_power,
       type="l", xlab="datetime", ylab="Global_reactive_power")
  
#FINAL PNG
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()



