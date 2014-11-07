plot4 <- function(file="household_power_consumption.txt") {
     # check for dataframe
     # if not exists, read in subset of the dataset required
     # store in dataframe 'tempDF' as global object
     # else, print PLOT 4
     if(!exists("tempDF")) {
          # read in data using 'readSusbsetFile()'
          tempDF <<- readSubsetFile(file)
          
          # then plot PLOT 4
          # open file to save image
          png("plot4.png", width=480, height=480)
          
          # set plot parameters
          par(mfcol=c(2, 2), mar = c(4, 4, 1, 1), cex.axis=1, cex.lab=1)
          
          # plot SUBPLOT 1
          plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
          
          # plot SUBPLOT 2
          # set y-axis range for the three variables to be plotted
          yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
          # plot variables
          plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
          par(new=TRUE)       # keep plot base open for additional plots
          plot(tempDF$DT, tempDF$Sub_metering_2, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="RED")
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_3, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="BLUE")
          legend(x="topright", legend=c("Submetering_1", "Submetering_2", "Submetering_3"), col=c("black", "red", "blue"), lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5, bty="n")
          par(new=FALSE)
          
          # plot SUBPLOT 3
          plot(tempDF$DT, tempDF$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
          
          # plot SUBPLOT 4
          plot(tempDF$DT, tempDF$Voltage, type="l", ylab="Voltage", xlab="datetime")
          
          # close 'png' device
          dev.off()
     } else {          
          # plot PLOT 4
          # open file to save image
          png("plot4.png", width=480, height=480)
          
          # set plot parameters
          par(mfcol=c(2, 2), mar = c(4, 4, 1, 1), cex.axis=1, cex.lab=1)
          
          # plot SUBPLOT 1
          plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
          
          # plot SUBPLOT 2
          # set y-axis range for the three variables to be plotted
          yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
          # plot variables
          plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
          par(new=TRUE)       # keep plot base open for additional plots
          plot(tempDF$DT, tempDF$Sub_metering_2, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="RED")
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_3, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="BLUE")
          legend(x="topright", legend=c("Submetering_1", "Submetering_2", "Submetering_3"), col=c("black", "red", "blue"), lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5, bty="n")
          par(new=FALSE)
          
          # plot SUBPLOT 3
          plot(tempDF$DT, tempDF$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
          
          # plot SUBPLOT 4
          plot(tempDF$DT, tempDF$Voltage, type="l", ylab="Voltage", xlab="datetime")
          
          # close 'png' device
          dev.off()
     }
}
