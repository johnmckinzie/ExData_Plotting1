source("load_data.R")

plot1 <- function() {
  df <- load_data()
  png(filename = "plot1.png")
  hist(df$Global_active_power,
          12,
          main = "Global Active Power",
          xlab = "Global Active Power (kilowatts)",
          col = "red")
  dev.off()
}
