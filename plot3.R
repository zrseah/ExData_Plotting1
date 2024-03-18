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
# Add legend 
legend("topright", legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),
       col = c("black", "red","blue"),
       lty = 1)