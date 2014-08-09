## Plot energy sub-metering No.1,2,3 curves according to the 
## date and time into "plot3.png" file. 

plot3 <- function(data) {
        png(file = "plot3.png", bg = "transparent")
        x <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
        y1 <- data$Sub_metering_1
        y2 <- data$Sub_metering_2
        y3 <- data$Sub_metering_3
        plot(x, y1, type = "l", xlab = "", ylab = "Energy sub metering")
        points(x, y2, type = "l", col = "red")
        points(x, y3, type = "l", col = "blue")
        legend("topright", col = c("black", "red", "blue"), lty = 1,
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        dev.off()
}