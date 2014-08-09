## Plot household global minute-averaged active power (in kilowatt) curve
## according to the date and time into "plot2.png" file.
## 
## Note: `paste` and `strptime` convert `Date` and `Times` into  
## "2007-02-01 00:00:00 CST" format. Thus x-axis labelled by 
## "THU" "FRI" and "SAT"

plot2 <- function(data) {
        png(file = "plot2.png", bg = "transparent")
        plot(strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S"), 
             data$Global_active_power,
             type = "l",
             xlab = "",
             ylab = "Global Active Power (kilowatts)")
        dev.off()
}