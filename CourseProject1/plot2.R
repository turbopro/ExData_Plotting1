# this file -- plot2.R
# function definition to save Plot 2, "Global Active Power," to image file
# calls "readSubsetData()" to read in subset of data required

plot2 <- function() {
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
     png("plot2.png", width=480, height=480)
     
     # plot Plot 2
     plot(tempDF$DT, tempDF$Global_active_power, type="l", xlab="", 
          ylab="Global Active Power (kilowatts)")
     
     # close png device
     dev.off()
}