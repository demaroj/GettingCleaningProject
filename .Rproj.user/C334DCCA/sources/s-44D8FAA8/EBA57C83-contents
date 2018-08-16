install.packages("plyr")
library(plyr)

temp <- tempfile()
zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(zipfile,temp)
temp

# con1=url(URL1)
# con2=url(URL2)
# options(max.print = 9999999)
# df100<-read.csv(con1,header=TRUE)
# df100<-df100[-c(1,2,3,4), ]
# df100<-df100[,-c(6,7,8,9) ]
# names(df100)<-c("CountryCode", "Ranking", "Blank", "Economy", "Dollars")
# 
# df200<-read.csv(con2,header=TRUE)
# combo <- merge(df100,df200, by.x="CountryCode", by.y = "CountryCode")
# 
# combo <- combo[order(-as.numeric(gsub(",","",combo$Dollars))), ]
# combo <- combo[which (is.na(combo[,3])), ]
# (combo[1:6])