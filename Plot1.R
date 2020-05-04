data1 <- "C:/Users/Trentino Sinz/Downloads/R/Data/household_power_consumption.txt"
data <- read.table(data1, header = T, sep = ";", stringsAsFactors = F, dec = ".")
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]



GlobalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab = "Global Active Power(Kilowatts)")
dev.off()
