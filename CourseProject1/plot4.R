# this file -- plot4.R
# function definition to save Plot 4 to image file
# calls "readSubsetData()" to read in subset of data required

plot4 <- function() {
     # check for dataframe
     # if not exists, call "readSubsetData()"
     if(!exists("tempDF")) {
          # read in data and store in 'tempDF' global object (no need to recompute)
          tempDF <<- readSubsetData()
     }
     
     # open file to save image
     png("plot4.png", width=480, height=480)
     
     # set plot parameters
     par(mfrow=c(2, 2), mar = c(4, 4, 1, 1), cex.axis=1, cex.lab=1)
     
     # plot SUBPLOT 1
     plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", 
          ylab="Global Active Power")
     
     # plot SUBPLOT 2
     plot(tempDF$DT, tempDF$Voltage, type="l", xlab="datetime", 
          ylab="Voltage")
     
     # plot SUBPLOT 3
     # set y-axis range for the three variables
     yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
     
     plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
     lines(tempDF$DT, tempDF$Sub_metering_2, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="RED")
     lines(tempDF$DT, tempDF$Sub_metering_3, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="BLUE")
     legend(x="topright", legend=c("Submetering_1", "Submetering_2", "Submetering_3"), col=c("black", "red", "blue"), 
            lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5)
     
     # plot SUBPLOT 4
     plot(tempDF$DT, tempDF$Global_reactive_power, type="l", xlab="datetime",
          ylab="Global_reactive_power")
     
     # close 'png' device
     dev.off()
}
