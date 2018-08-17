#install.packages("plyr")
library(plyr)

zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipfile, tf <- tempfile(fileext = ".zip"))
unzip(tf, exdir = td <- file.path(tempdir(), "myzip"))
(list.files(td, full.names = TRUE, recursive = TRUE))
#list(tempdir())


x_testdata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/test/X_test.txt"))


head(x_testdata)
