png(file = "plot2.png", width = 480, height = 480, units = "px")

dat <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
dat1 <- dat[dat$Date %in% c("1/2/2007", "2/2/2007"),]

plot(dat1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = "n")
axis(1, at = c(1, 1440.5, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()