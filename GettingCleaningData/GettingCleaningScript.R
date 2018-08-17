#install.packages("plyr")
library(plyr)

temp <- tempfile()
zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(zipfile,temp)

unzip(zipfile, list = TRUE)
#y_testdata <- read.table(zipfile, "y_test.txt") 
x_testdata <- read.table("C:\\RPrograms\\GettingCleaningProject\\GettingCleaningData\\UCI HAR Dataset\\test\\X_test.txt")
head(x_testdata)
