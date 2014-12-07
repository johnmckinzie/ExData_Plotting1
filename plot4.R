source("load_data.R")

plot4 <- function() {
  df <- load_data()
  png(filename = "plot4.png")
  par(mfrow = c(2, 2))
  
  # top-left
  with(df, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
  
  # top-right
  with(df, plot(datetime, Voltage, type = "l"))
  
  # bottom-left
  plot(df$datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(df$datetime, df$Sub_metering_2, type = "l", col = "red")
  lines(df$datetime, df$Sub_metering_3, type = "l", col = "blue")
  colors <- c("black", "red", "blue")
  print(colnames(df))
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1), col = colors, bty = "n")
    
  # bottom-right
  with(df, plot(datetime, Global_reactive_power, type = "l"))
  
  dev.off()
}
