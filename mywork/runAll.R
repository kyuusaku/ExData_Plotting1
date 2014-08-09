runAll <- function(file) {
        ## load required functions
        source("readData.R")
        source("plot1.R")
        source("plot2.R")
        source("plot3.R")
        source("plot4.R")
        message("loaded required functions")
        
        ## load data
        message("loading data...")
        data <- readData(file)
        message("loaded data")
        
        ## plot data
        plot1(data)
        message("drawed 'plot1.png'")
        plot2(data)
        message("drawed 'plot2.png'")
        plot3(data)
        message("drawed 'plot3.png'")
        plot4(data)
        message("drawed 'plot4.png'")
        
        message("done")
}