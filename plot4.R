par(mfcol = c(2,2))

# Plot 2
plot(x = energydf3$Time, 
     y = as.numeric(energydf3$Global_Active_Power), 
     type = "l", 
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
# Plot 3
plot(x = energydf3$Time,
     y = as.numeric(energydf3$Sub_Metering_1),
     type = "l",
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")

lines(x = energydf3$Time,
      y = as.numeric(energydf3$Sub_Metering_2),
      type = 'l',
      col = "red")
lines(x = energydf3$Time,
      y = as.numeric(energydf3$Sub_Metering_3),
      type = 'l',
      col = "blue")
## Add legend 
legend("topright", legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),
       col = c("black", "red","blue"),
       lty = 1,
       cex = 0.6)
# Plot voltage vs datetime 
plot(x = energydf3$Time, 
     y = as.numeric(energydf3$Voltage),
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot global reactive power vs datetime 
plot(x = energydf3$Time,
     y = energydf3$Global_Reactive_Power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_Reactive_Power")
