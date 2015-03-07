png(file = "plot4.png", width = 480, height = 480, units = "px")

dat <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
dat1 <- dat[dat$Date %in% c("1/2/2007", "2/2/2007"),]

par(mfcol = c(2, 2))
with(dat1, {
        plot(Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", xaxt = "n")
        axis(1, at = c(1, 1440.5, 2880), labels = c("Thu", "Fri", "Sat"))
        
        plot(Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
        lines(Sub_metering_2, col = "red")
        lines(Sub_metering_3, col = "blue")
        axis(1, at = c(1, 1440.5, 2880), labels = c("Thu", "Fri", "Sat"))
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = "solid", bty = "n")
        
        plot(Voltage, type = "l", xlab = "datetime", xaxt = "n")
        axis(1, at = c(1, 1440.5, 2880), labels = c("Thu", "Fri", "Sat"))
        
        plot(Global_reactive_power, type = "l", xlab = "datetime", xaxt = "n")
        axis(1, at = c(1, 1440.5, 2880), labels = c("Thu", "Fri", "Sat"))
})

dev.off()