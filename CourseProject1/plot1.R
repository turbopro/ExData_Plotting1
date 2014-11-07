plot1 <- function(file="household_power_consumption.txt") {
     # check for dataframe
     # if not exists, read in subset of the dataset required
     # store in dataframe 'tempDF' as global object
     # else, print PLOT 1
     if(!exists("tempDF")) {
          # read in data using 'readSusbsetFile()'
          tempDF <<- readSubsetFile(file)
          
          # then plot PLOT 1
          # open file to save image
          png("plot1.png", width=480, height=480)
          
          plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
          dev.off()
     } else {          
          # plot PLOT 1
          # open file to save image
          png("plot1.png", width=480, height=480)
          
          plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
          dev.off()
     }
}
