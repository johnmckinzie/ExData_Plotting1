source("load_data.R")

plot3 <- function() {
  df <- load_data()
  png(filename = "plot3.png")
  plot(df$datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(df$datetime, df$Sub_metering_2, type = "l", col = "red")
  lines(df$datetime, df$Sub_metering_3, type = "l", col = "blue")
  colors <- c("black", "red", "blue")
  legend("topright", tail(colnames(df), 3), lty = c(1, 1), col = colors)
  dev.off()
}
