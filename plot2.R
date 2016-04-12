#set working directory
setwd("C:/use/escritorio/Sarai Pouso/R_Curso/exdata_data_household_power_consumption")

#read data set
data <- read.table("household_power_consumption.txt", 
                   header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subset
mydata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

rm(data)

#Date column as date 
pruebas<-mydata
pruebas$Date <- as.Date(pruebas$Date, format="%d/%m/%Y")

#change all columns to number
pruebas$Global_active_power <- as.numeric(as.character(pruebas$Global_active_power))
pruebas$Global_reactive_power <- as.numeric(as.character(pruebas$Global_reactive_power))
pruebas$Voltage <- as.numeric(as.character(pruebas$Voltage))
pruebas$Global_intensity<-as.numeric(as.character(pruebas$Global_intensity))
pruebas$Sub_metering_1 <- as.numeric(as.character(pruebas$Sub_metering_1))
pruebas$Sub_metering_2 <- as.numeric(as.character(pruebas$Sub_metering_2))
pruebas$Sub_metering_3 <- as.numeric(as.character(pruebas$Sub_metering_3))


#new column with date + hour
pruebas2 <- transform(pruebas, timehour=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")


### PLOT 2

plot2 <- plot(pruebas2$timehour, pruebas2$Global_active_power, 
              type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()



