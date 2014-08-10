plot2 <- function(file="household_power_consumption.txt") {
     # check for dataframe
     # if not exists, read in subset of the dataset required
     # store in dataframe 'tempDF' as global object
     # else, create PLOT 2 file in PNG format
     if(!exists("tempDF")) {
          # read in data using 'readSusbsetFile()'
          tempDF <<- readSubsetFile(file)
          
          # then plot PLOT 2
          # open file to save image
          png("plot2.png", width=480, height=480)
          
          # set y-axis range for the three plots
          yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
          
          # plot variables
          plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
          # use 'par(new=TRUE)' to keep plot base open for additional plots
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_2, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="RED")
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_3, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="BLUE")
          legend(x="topright", legend=c("Submetering_1", "Submetering_2", "Submetering_3"), col=c("black", "red", "blue"), lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5)
          par(new=FALSE)
          dev.off()
     } else {          
          # plot PLOT 2
          # open file to save image
          png("plot2.png", width=480, height=480)
          
          # set y-axis range for the three plots
          yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
          
          # plot variables
          plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
          # use 'par(new=TRUE)' to keep plot base open for additional plots
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_2, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="RED")
          par(new=TRUE)
          plot(tempDF$DT, tempDF$Sub_metering_3, type="l", ylim=yrange, xlab="", ylab="Energy sub metering", col="BLUE")
          legend(x="topright", legend=c("Submetering_1", "Submetering_2", "Submetering_3"), col=c("black", "red", "blue"), lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5)
          par(new=FALSE)
          dev.off()
     }
}
