# this file -- plot1.R
# function definition to save Plot 1, "Global Active Power," to image file
# calls "readSubsetData()" to read in subset of data required

plot1 <- function() {
     # check for dataframe
     # if not exists, call "readSubsetData()"
     if(!exists("tempDF")) {
          # read in data and store in 'tempDF' global object (no need to recompute)
          tempDF <<- readSubsetData()
     }
     
     # open file to save image
     png("plot1.png", width=480, height=480)
     
     # plot Plot 1
     hist(tempDF$Global_active_power, freq=TRUE, col="red", 
          main="Global Active Power", xlab="Global Active Power (kilowatts)")
     
     # close png device
     dev.off()
}