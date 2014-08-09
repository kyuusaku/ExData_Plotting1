plot4 <- function(data) {
        png(file = "plot4.png", bg = "transparent")

        ## initial draw vector
        x <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
        a <- data$Global_active_power
        v <- data$Voltage
        e1 <- data$Sub_metering_1
        e2 <- data$Sub_metering_2
        e3 <- data$Sub_metering_3
        r <- data$Global_reactive_power
                
        ## initial palette
        par(mfrow = c(2, 2))
        
        ## draw plot 1
        plot(x, a, type = "l", xlab = "", ylab = "Global Active Power")
        
        ## draw plot 2
        plot(x, v, type = "l", xlab = "datetime", ylab = "Voltage")

        ## draw plot 3
        plot(x, e1, type = "l", xlab = "", ylab = "Energy sub metering")
        points(x, e2, type = "l", col = "red")
        points(x, e3, type = "l", col = "blue")
        legend("topright", col = c("black", "red", "blue"), lty = 1, bty = "n", 
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        ## draw plot 4
        plot(x, r, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
        
        dev.off()
}