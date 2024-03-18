# Import txt. file 
energydf <-read.table("~/Online Courses/Johns Hopkins University Data Science Foundations using R Specialization/Assignment/Module 4/household_power_consumption.txt",
                      , header = TRUE, sep = ",", stringsAsFactors = FALSE,
                      na.strings = "?")

# Clean data
## Split data into columns 
energydf2 <- data.frame(do.call(rbind, strsplit(as.character(energydf$Date.Time.Global_active_power.Global_reactive_power.Voltage.Global_intensity.Sub_metering_1.Sub_metering_2.Sub_metering_3), ";")))
## Rename columns 
col_names <- c("Date", "Time", "Global_Active_Power", "Global_Reactive_Power", 
               "Voltage", "Global_Intensity", "Sub_Metering_1", "Sub_Metering_2",
               "Sub_Metering_3")
colnames(energydf2)[c(1:9)] <- col_names

## Convert date column to date object 
energydf2$Date <- as.Date(energydf2$Date, format = "%d/%m/%Y")
datetime_strings <- paste(energydf2$Date, energydf2$Time)
energydf2$Time <- as.POSIXct(datetime_strings, format = "%Y-%m-%d %H:%M:%S")

## Keep only data from 2007-02-01 to 2007-02-03
energydf3 <- energydf2[energydf2$Date >= "2007-02-01" & energydf2$Date < "2007-02-03", ]

#Plot 1
hist(as.numeric(energydf3$Global_Active_Power)[!is.na(energydf3$Global_Active_Power)],
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")





