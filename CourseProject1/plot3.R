plot3 <- function(file="household_power_consumption.txt") {
     # check for dataframe
     # if not exists, read in subset of the dataset required
     # store in dataframe 'tempDF' as global object
     # else, print PLOT 3
     if(!exists("tempDF")) {
          # read in data using 'readSusbsetFile()'
          tempDF <<- readSubsetFile(file)
          
          # then plot PLOT 3
          # open file to save image
          png("plot3.png", width=480, height=480)
          
          plot(tempDF$DT, tempDF$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
          dev.off()
     } else {          
          # plot PLOT 3
          # open file to save image
          png("plot3.png", width=480, height=480)
          
          plot(tempDF$DT, tempDF$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
          dev.off()
     }
}
