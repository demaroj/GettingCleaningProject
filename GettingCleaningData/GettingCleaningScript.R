#install.packages("plyr")
library(plyr)

zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipfile, tf <- tempfile(fileext = ".zip"))
unzip(tf, exdir = td <- file.path(tempdir(), "myzip"))
#(list.files(td, full.names = TRUE, recursive = TRUE))
#list(tempdir())

colLabels <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/features.txt"))
colList <- c((colLabels[,2]))
head(colLabels[1,561])
x_testdata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/test/X_test.txt"), col.names=colList)
x_traindata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/train/X_train.txt"))
y_testdata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/test/y_test.txt"))
y_traindata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/train/y_train.txt"))
subject_testdata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/test/subject_test.txt"))
subject_traindata <- read.table(file.path(tempdir(), "/myzip/UCI HAR Dataset/train/subject_train.txt"))


# head(colLabels)
# colList <- c(colLabels[[x]])
# head(colList,600)
# colnames(x_testdata) <- c(colLabels)
x_testdata <- lapply(x_testdata, setNames, colLabels)
write.csv(x_testdata, file="c:\\temp\\xtestdata.csv")
testdata <- cbind(subject_testdata, y_testdata, x_testdata)
traindata <-cbind(subject_traindata, y_traindata, x_traindata)

dataset <- rbind(testdata, traindata)
