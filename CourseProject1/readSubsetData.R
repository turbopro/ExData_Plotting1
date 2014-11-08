# this file -- readSubsetData.R
# function definition to read in required data from larger dataset
# uses "read.scv.sql()" to read in subset of data

readSubsetData <- function(readfile="household_power_consumption.txt") {
     # load library 'sqldf' -- needed for read.csv.sql
     require(sqldf)
     
     # firstly, check that "readfile" is in current working directory
     # if "readfile" does not exist, exit with error message
     if(!file.exists(readfile)) {
          stop("Ensure dataset '", readfile, "' is in current working directory") 
     }
     
     # "readfile" exists: use "read.csv.sql()" to read in rows needed into dataframe 'tempDF'
     tempDF <- read.csv.sql(readfile, header = TRUE, sep = ";", dbname = tempfile(),
                            sql = "select * from file where Date='1/2/2007' or Date='2/2/2007' ")
     
     # merge tempDF$Date and tempDF$Time into a single date element, DT 
     # then add DT as a new column to tempDF
     tempDF <- within(tempDF, DT <- paste(Date, Time, sep=" "))
     
     # convert tempDF$DT to POSIXlt date
     tempDF$DT <- strptime(tempDF$DT, format = "%d/%m/%Y %H:%M:%S", tz = "Europe/Paris")
     
     # return dataframe
     return(tempDF)
}
