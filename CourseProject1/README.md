Introduction
------------

Text below is an amended/rewrite of the original README>md from
cloned repo --> https://github.com/rdpeng/ExData_Plotting1

"This assignment uses data from 
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available."


####FILES:

There are 10 files listed for this project:

   - plot1.R	_ R code to generate plot1.png

   - plot1.png _ plot generated from 'plot1.R' code

   - plot2.R	_ R code to generate plot1.png

   - plot2.png _ plot generated from 'plot1.R' code

   - plot3.R	_ R code to generate plot1.png

   - plot3.png _ plot generated from 'plot1.R' code

   - plot4.R	_ R code to generate plot1.png

   - plot4.png _ plot generated from 'plot1.R' code

   - readSubsetData.R _ R code to read in a subset of the data from the larger dataset

   - README.md _ this file

  
####EXECUTION:

1.	Download the dataset to your PC (use the above links provided)

2.	Unzip the downloaded file to your current working directory

3.	Download the 'plotn.R' files to your current working directory

4.	Source the requisite 'plotn.R' 

5.	Run the function with the same name, 'plotn()', to create the related 'plotn.png' file


####NOTES:

* 1	The following R packages are required (all available from CRAN repos):

	sqldf	gsubfn	proto	RSQLite	RSQLite.extfuns	DBI	tcltk

* 2	The retrieval of the subset from the large dataset is done in a separate function, "readSubsetData()", from the relevant "plotn()" functions.  This allows both function sets to be designed to do only what they need to do: the "plotn()" function plots; while the "readSubsetData()" function reads in the data subset. 

* 3	All plot functions will check for a "cached" dataframe in the global environment.  This dataframe will be generated whenever the "readSubsetData()" function is called.  Once called, the "readSubsetData()" function will place the subset data, stored in the dataframe, into the global environment.  If the dataframe is already in the global environment, then the plot function will not call the "readSubsetData()" function.  Effectively, in some respects, the dataframe is cached.
