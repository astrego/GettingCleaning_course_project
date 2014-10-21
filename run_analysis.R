
# function merge, reads in the data from the UCI HAR Dataset folder. For this function to work, 
# you need to put the unzipped original folder from 
# "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# in your working directory.

source("test1.R")

merge <- function() {
        DTtestX <- read.table("UCI HAR Dataset/test/X_test.txt")
        DTtestY <- read.table("UCI HAR Dataset/test/y_test.txt")
        DTtestSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
        DTtrainX <- read.table("UCI HAR Dataset/train/X_train.txt")
        DTtrainY <- read.table("UCI HAR Dataset/train/y_train.txt")
        DTtrainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
        
        DTmergeX <-rbind(DTtestX, DTtrainX)
        DTmergeY <- rbind(DTtestY, DTtrainY)
        DTmergeSub <- rbind(DTtestSub, DTtrainSub)
        DTmergeXY <- cbind(DTmergeY, DTmergeX)
        DTmergeXYSub <- cbind(DTmergeSub, DTmergeXY)
        
        colnames(DTmergeXYSub)[1] <- "subject"
        colnames(DTmergeXYSub)[2] <- "activity"
        
        DTmergeXYSub$activity <- gsub("1", "WALKING",DTmergeXYSub$activity)
        DTmergeXYSub$activity <- gsub("2", "WALKING_UPSTAIRS",DTmergeXYSub$activity)
        DTmergeXYSub$activity <- gsub("3", "WALKING_DOWNSTAIRS",DTmergeXYSub$activity)
        DTmergeXYSub$activity <- gsub("4", "SITTING",DTmergeXYSub$activity)
        DTmergeXYSub$activity <- gsub("5", "STANDING",DTmergeXYSub$activity)
        DTmergeXYSub$activity <- gsub("6", "LAYING",DTmergeXYSub$activity)
        test()
        return(dim(DTmergeXYSub))
        
}