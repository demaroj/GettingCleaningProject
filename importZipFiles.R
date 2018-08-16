head(zipfile<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

read.txt.zip <- function(zipfile, pattern="\\.txt$", ...){
  
  # Create a name for the dir where we'll unzip
  zipdir <- tempfile()
  
  # Create the dir using that name
  dir.create(zipdir)
  
  # Unzip the file into the dir
  unzip(zipfile, exdir=zipdir)
  
  # Get a list of csv files in the dir
  files <- list.files(zipdir, rec=TRUE, pattern=pattern)
  
  # Create a list of the imported csv files
  txt.data <- sapply(files, 
                     function(f){
                       fp <- file.path(zipdir, f)
                       dat <- fread(fp, ...)
                       return(dat)
                     }
  )
  
  # Use csv names to name list elements
  names(txt.data) <- basename(files)
  
  # Return data
  return(txt.data)
}
