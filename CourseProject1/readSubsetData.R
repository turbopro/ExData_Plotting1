# this file -- readSubsetData.R
# function definition to read in required data from larger dataset
# uses sqldf to read in subset of data

readSubsetData <- function(file="./household_power_consumption.txt") {
     # load in library 'sqldf'
     require(sqldf)
     
     # firstly, check that file with dataset is in current working directory
     # if file does not exist, exit with error message
     if(!file.exists(file)) {
          stop("Ensure dataset '", file, "' is in current working directory") 
     }
     
     # if file exists, open file for read
     tempFile <- file("./household_power_consumption.txt")
     
     # set attributes to allow for sqldf read
     attr(tempFile, "file.format") <- list(sep = ";", header = TRUE)
     
     # use sqldf to read in rows needed into dataframe 'tempDF'
     tempDF <- sqldf("select * from tempFile where Date='1/2/2007' or Date='2/2/2007' ")
     
     # merge tempDF$Date and tempDF$Time into a single date element, DT, 
     # and add DT as a new column to tempDF
     tempDF <- within(tempDF, DT <- paste(Date, Time, sep=" "))
     
     # convert tempDF$DT to POSIXlt date
     tempDF$DT <- strptime(tempDF$DT, format = "%d/%m/%Y %H:%M:%S", tz = "Europe/Paris")
     
     # close 'tempFile'
     close(tempFile)
     
     # return dataframe
     return(tempDF)
}
