# this file -- plot2.R
# function definition to save Plot 2, "Global Active Power," to image file
# calls "readSubsetData()" to read in subset of data required

plot2 <- function() {
     # check for dataframe
     # if not exists, call "readSubsetData()"
     if(!exists("tempDF")) {
          # read in data and store in 'tempDF' global object (no need to recompute)
          tempDF <<- readSubsetData()
     }
     
     # open file to save image
     png("plot2.png", width=480, height=480)
     
     # plot Plot 2
     plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", 
          ylab="Global Active Power (kilowatts)")
     
     # close png device
     dev.off()
}