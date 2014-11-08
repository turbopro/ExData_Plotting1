# this file -- plot3.R
# function definition to save Plot 3, "Energy sub metering," to image file
# calls "readSubsetData()" to read in subset of data required

plot3 <- function() {
     # source "readSubsetData.R"
     sourcefile <- "readSubsetData.R"
     if(!file.exists(sourcefile)) {
          stop("Ensure source file '", sourcefile, "' is in current working directory") 
     }
     source(sourcefile)
     
     # check for subset dataframe
     # if not exists, call "readSubsetData()"
     if(!exists("tempDF")) {
          # read in and store data in 'tempDF' global object
          # 'tempDF' serves as a cache: no need to recompute
          tempDF <<- readSubsetData()
     }
     
     # open file to save image
     png("plot3.png", width=480, height=480)
          
     # set y-axis range for the three variables
     yrange <- (range(c(tempDF$Sub_metering_1, tempDF$Sub_metering_2, tempDF$Sub_metering_3)))
          
     # plot Plot 3
     plot(tempDF$DT, tempDF$Sub_metering_1, type="l", ylim=yrange, xlab="", ylab="Energy sub metering")
     lines(tempDF$DT, tempDF$Sub_metering_2, type="l", col="RED")
     lines(tempDF$DT, tempDF$Sub_metering_3, type="l", col="BLUE")
     legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
            col=c("black", "red", "blue"), lty=1, seg.len=1, xjust=0, cex=0.85, x.intersp=0.5)
          
     # close png device
     dev.off()
}