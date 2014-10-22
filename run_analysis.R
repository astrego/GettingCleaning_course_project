
# function merge, reads in the data from the UCI HAR Dataset folder. For this function to work, 
# you need to put the unzipped original folder from 
# "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# in your working directory.



merge <- function() {
        DTtestX <- read.table("UCI HAR Dataset/test/X_test.txt")
        DTtrainX <- read.table("UCI HAR Dataset/train/X_train.txt")
        DTfeatures <- read.table("UCI HAR Dataset/features.txt")
        DTtestSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
        DTtestY <- read.table("UCI HAR Dataset/test/y_test.txt")
        DTtrainY <- read.table("UCI HAR Dataset/train/y_train.txt")
        DTtrainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
        
        DTmergeX <-rbind(DTtestX, DTtrainX)
        DTmergeY <- rbind(DTtestY, DTtrainY)
        DTmergeSub <- rbind(DTtestSub, DTtrainSub)
        
        names(DTmergeX) <- DTfeatures[,2]
        DTnames <- grep("mean()([^F])|std()", names(DTmergeX), value=TRUE)
        DTselect <- subset(DTmergeX,select=DTnames)
        
        DTmergeXY <- cbind(DTmergeY, DTselect)
        DTmergeXYSub <- cbind(DTmergeSub, DTmergeXY)
        
        colnames(DTmergeXYSub)[1] <- "Subject"
        colnames(DTmergeXYSub)[2] <- "Activity"
        
        DTmergeXYSub$Activity <- gsub("1", "WALKING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("2", "WALKING_UPSTAIRS",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("3", "WALKING_DOWNSTAIRS",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("4", "SITTING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("5", "STANDING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("6", "LAYING",DTmergeXYSub$Activity)
        
        names(DTmergeXYSub) <- gsub("-","", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("std","StandardDeviation", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("fBody","FrequencyBody", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("tBody","TriaxialBody", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Mag","Magnitude", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Gyro","Gyroscope", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Acc","Acceleration", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("mean","MeanValue", names(DTmergeXYSub))
        
        
        return(names(DTmergeXYSub))
        
}