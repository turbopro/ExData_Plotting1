Introduction
------------
This is Project 1 of the Exploratory Data Analysis course. For this project we will develop the R code to retrieve a subset of data from a larger data set.  With this subset data, and making use of the base plotting system of R, we then generate various plots of the data.

The excerpt below is taken from the README.md from the original repo --> https://github.com/rdpeng/ExData_Plotting1

>This assignment uses data from 
>the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
>Learning Repository</a>, a popular repository for machine learning
>datasets. In particular, we will be using the "Individual household
>electric power consumption Data Set" which I have made available on
>the course web site:


>* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

>* <b>Description</b>: Measurements of electric power consumption in
>one household with a one-minute sampling rate over a period of almost
>4 years. Different electrical quantities and some sub-metering values
>are available.


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

3.	Download the 'plotN.R' and 'readSubsetData.R' files to your current working directory

4.	Source the requisite 'plotN.R' 

5.	Run the function with the same name, 'plotN()', to create the related 'plotN.png' file


####NOTES:

* The following R packages are required (all available from the CRAN repos):

	sqldf	gsubfn	proto	RSQLite	RSQLite.extfuns	DBI	tcltk

* The retrieval of the subset of data from the large dataset is done in a separate function, 'readSubsetData()', from the relevant 'plotN()' functions.  This allows the functions to be designed to do only what they need to do: the 'plotN()' functions create the plots; while the 'readSubsetData()' function is designed to read in and return the subset of the data.

* When called, each 'plotN()' function will check firstly for the presence of a dataframe with the subset of the data required; if not present, a call to the 'readSubsetData()' function is made.  The 'readSubsetData()' function will retrieve the required subset of the data and return this data as a dataframe to the calling 'plotN()' function. The 'plotN()' function then stores the returned dataframe with the subset of the data as a global object, from where this global object effectively becomes a cached resource.  Further calls to 'plotN()' functions will check for this 'cached' dataframe, and if it is present, the 'plotN()' functions use the dataframe to create the respective plots.  Effectively, the dataframe with the subset of the data, stored as a global object, is cached: no call to the "readSubsetData()" function is required/made if the dataframe is present in the global environment.

#####Addendum:

* This document on the base plotting system may be of interest --> http://www.stat.berkeley.edu/~statcur/WorkshopBC/Presentations/Graphics/graphics.pdf
