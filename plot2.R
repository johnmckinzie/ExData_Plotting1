source("load_data.R")

plot2 <- function() {
  df <- load_data()
  png(filename = "plot2.png")
  plot(df$datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
}
