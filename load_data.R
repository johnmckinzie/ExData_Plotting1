load_data <- function() {
  df <- read.table("household_power_consumption.txt",
           header = TRUE,
           sep = ";",
           na.strings = c("?"),
           colClasses = c("character", "character", rep("numeric", 7)))
  
  df <- cbind(as.POSIXct(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S"), df)
  colnames(df)[1] <- "datetime"
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  filtered_df <- subset(df, Date %in% as.Date(c("2007-02-01", "2007-02-02")))
  filtered_df
}