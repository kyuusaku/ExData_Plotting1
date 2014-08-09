## Introduction of my work

This work is for the <a href="https://github.com/kyuusaku/ExData_Plotting1/blob/master/README.md">assignment project 1</a> of coursera class "Exploratory Data Analysis".
Load the dataset <b>"household_power_consumption.txt"</b>, and then make four plots. This work assume that the target dataset has been unzipped to your computer wherever before running these codes in this folder. And assume that your working directory has been set to this folder.

In this folder, there are six functions and four png files, where `readDate.R` is used to read the data for this assignment, after reading the data, `plot1.R` `plot2.R` `plot3.R` `plot4.R` are used to plot the four plots into png files `plot1.png` `plot2.png` `plot3.png` `plot4.png` respectively. `runAll.R` could be used to execute the whole process. 

### You can delete the existed png files and reproduce the work by input the fllowing code in your console.
<!-- -->
        setwd(getwd()) ## remember set working directory
        file <- "../../household_power_consumption.txt" ## your file path
        source("runAll.R") ## load the function runALL
        runAll(file)