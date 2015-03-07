png(file = "plot1.png", width = 480, height = 480, units = "px")

dat <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
dat1 <- dat[dat$Date %in% c("1/2/2007", "2/2/2007"),]

hist(dat1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()