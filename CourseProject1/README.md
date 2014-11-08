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

3.	Download the 'plotn.R' files to your current working directory

4.	Source the requisite 'plotn.R' 

5.	Run the function with the same name, 'plotn()', to create the related 'plotn.png' file


####NOTES:

* The following R packages are required (all available from the CRAN repos):

	sqldf	gsubfn	proto	RSQLite	RSQLite.extfuns	DBI	tcltk

* The retrieval of the subset of data from the large dataset is done in a separate function, "readSubsetData()", from the relevant "plotn()" functions.  This allows both function sets to be designed to do only what they need to do: the "plotn()" functions plot, while the "readSubsetData()" function reads in the data subset. 

* The "readSubsetData()" function will retrieve the required subset of the data, store this data as a dataframe, and place it into the global environment.  All "plotn()" functions will check for this dataframe, and if it is not present, a call to the "readSubsetData()" function is made to retrieve the subset of the data.  If the dataframe is present, the "plotn()" functions proceed to plot the respective data.  Effectively, the dataframe is cached; no call to the "readSubsetData()" function is made if the dataframe is present in the global environment.
