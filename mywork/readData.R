## This function is used to read the data for this assignment by
## 'sqldf' and output the data.
##
## INPUT
## file: the name of the file which the data are to be read from.
##       If it does not contain an absolute path, the file name is
##       relative to the current working directory, getwd().

readData <- function(file) {
        ## check the require library 'sqldf'
        if (!require(sqldf)) {
                install.packages("sqldf")
                require(sqldf)
        }
        ## read data from the dates 2007-02-01 and 2007-02-02
        data <- read.csv.sql(file, sep = ";",
                             sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'")
        data
}