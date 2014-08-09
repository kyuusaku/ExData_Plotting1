## Plot the histogram of the household global minute-averaged
## active power (in kilowatt) into "plot1.png" file.

plot1 <- function(data) {
        png(file = "plot1.png", bg = "transparent")
        hist(data$Global_active_power,
             col = "red",
             main = "Global Active Power",
             xlab = "Global Active Power(kilowatts)")               
        dev.off()
}