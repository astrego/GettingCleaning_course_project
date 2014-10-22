GettingCleaning_course_project
==============================

The repo for the Getting and Cleaning Data course project 

The run_analysis.R script has two functions: "merge" and "tidy". 

For this script to work, you need to put the unzipped original folder from 
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
in your working directory. 

The script uses the reshape2 library, you need to install this package if you don't 
have it already 

library(reshape2) 

The function "merge" reads in the data from the "UCI HAR Dataset" folder. Merges the 
data. Subset the variables with the mean and the standard deviation. 
Makes the variables more readable for humans.  

merge <- function() {
        
        # Reads the data from the "UCI HAR Dataset" folder #
        
        DTtestX <- read.table("UCI HAR Dataset/test/X_test.txt")
        DTtrainX <- read.table("UCI HAR Dataset/train/X_train.txt")
        DTfeatures <- read.table("UCI HAR Dataset/features.txt")
        DTtestSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
        DTtestY <- read.table("UCI HAR Dataset/test/y_test.txt")
        DTtrainY <- read.table("UCI HAR Dataset/train/y_train.txt")
        DTtrainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
        
        #Binds/merges the test en train text files together. #
        
        DTmergeX <-rbind(DTtestX, DTtrainX)
        DTmergeY <- rbind(DTtestY, DTtrainY)
        DTmergeSub <- rbind(DTtestSub, DTtrainSub)
        
        # takes the features.txt file and merges this with the DTmergeX data table#
        # so that you get the right names in the columns. Then it subsets the mean and #
        # std variables #
        
        names(DTmergeX) <- DTfeatures[,2]
        DTnames <- grep("mean()([^F])|std()", names(DTmergeX), value=TRUE)
        DTselect <- subset(DTmergeX,select=DTnames)
        
        # Binds/merges the other data tables to one big data table. Changes the column-
        # names of the subject and activity variables #
        
        DTmergeXY <- cbind(DTmergeY, DTselect)
        DTmergeXYSub <- cbind(DTmergeSub, DTmergeXY)
        
        colnames(DTmergeXYSub)[1] <- "Subject"
        colnames(DTmergeXYSub)[2] <- "Activity"
        
        # Changes the numerical values in the descriptive values of the Activity column #
        
        DTmergeXYSub$Activity <- gsub("1", "WALKING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("2", "WALKING_UPSTAIRS",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("3", "WALKING_DOWNSTAIRS",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("4", "SITTING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("5", "STANDING",DTmergeXYSub$Activity)
        DTmergeXYSub$Activity <- gsub("6", "LAYING",DTmergeXYSub$Activity)
        
        # Makes the variables more human readable #
        
        names(DTmergeXYSub) <- gsub("-","", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("std","StandardDeviation", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("fBody","FrequencyBody", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("tBody","TriaxialBody", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Mag","Magnitude", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Gyro","Gyroscope", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("Acc","Acceleration", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("mean","MeanValue", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("[()]","", names(DTmergeXYSub))
        names(DTmergeXYSub) <- gsub("tGravity","TriaxialGravity", names(DTmergeXYSub))
            
        return(DTmergeXYSub)
        
       
}

The function "tidy" creates a second, independent tidy data set with the average 
of each variable for each activity and each subject. It uses the output from the 
"merge" function as its input. The output is a text (.txt) file with the tidy 
dataset. It also return the first 20 rows of the tidy dataset.

	

tidy <- function() {
		
        # uses the output from the "merge" function as its input #
        
        data <- merge()
        
        # calculates the mean of each variable for each subject and activity #
        
        DTmelt <- melt(data, id.vars=c("Subject","Activity"))
        DTcast <- dcast(DTmelt, Subject + Activity ~ variable, mean)
        
        # writes the tidy data table to a .txt file #
        
        write.table(DTcast, "DTtidy.txt", sep="\t", row.name=FALSE)
        
        return(head(DTcast,20))
}
