library(dplyr)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#Download if not already available
if(!file.exists("./Dataset.zip"))
{
    download.file(fileUrl,destfile="./Dataset.zip")
}



# Unzip if not already available
if (!dir.exists("UCI HAR Dataset")) { 
    unzip("./Dataset.zip") 
    }


# read features and activities
features<-read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# read training data
train_set <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# read test data
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# merge training data
train <- cbind(train_labels, subject_train, train_set)

# merge test data
test <- cbind(test_labels, subject_test , test_set)

# 1. merge training with test data

all_data <- rbind(train,test)

# naming variables
names(all_data)[1] <- "activity"
names(all_data)[2] <- "subject"
names(all_data)[3:563] <- as.character(features$V2)

#2. Extracts only the measurements on the mean and standard deviation for each measurement

measurements <- grep("mean|std",names(all_data), value = TRUE)

all_data <- all_data[,c("activity","subject",measurements)]

#3. Uses descriptive activity names to name the activities in the data set

all_data[,1] <- activities[all_data[, 1],2]

#4. Appropriately labels the data set with descriptive variable names.

names(all_data) <- gsub("tBodyAcc-","time body acceleration signal (accelerometer)-", names(all_data))
names(all_data) <- gsub("tBodyAccMag-","time body acceleration signal magnitude (accelerometer)-", names(all_data))
names(all_data) <- gsub("tBodyAccJerk-","time body acceleration jerk signal (accelerometer)-", names(all_data))
names(all_data) <- gsub("tBodyAccJerkMag-","time body acceleration jerk signal magnitude (accelerometer)-", names(all_data))
names(all_data) <- gsub("tBodyGyro-","time body acceleration signal (gyroscope)-", names(all_data))
names(all_data) <- gsub("tBodyGyroMag-","time body acceleration signal magnitude (gyroscope)-", names(all_data))
names(all_data) <- gsub("tBodyGyroJerk-","time body acceleration jerk signal (gyroscope)-", names(all_data))
names(all_data) <- gsub("tBodyGyroJerkMag-","time body acceleration jerk signal magnitude (gyroscope)-", names(all_data))

names(all_data) <- gsub("fBodyAcc-","frequency body acceleration signal (accelerometer)-", names(all_data))
names(all_data) <- gsub("fBodyAccMag-","frequency body acceleration signal magnitude (accelerometer)-", names(all_data))
names(all_data) <- gsub("fBodyAccJerk-","frequency body acceleration jerk signal (accelerometer)-", names(all_data))
names(all_data) <- gsub("fBodyBodyAccJerkMag-","frequency body acceleration jerk signal magnitude (accelerometer)-", names(all_data))
names(all_data) <- gsub("fBodyGyro-","frequency body acceleration signal (gyroscope)-", names(all_data))
names(all_data) <- gsub("fBodyGyroMag-","frequency body acceleration signal magnitude (gyroscope)-", names(all_data))
names(all_data) <- gsub("fBodyGyroJerk-","frequency body acceleration jerk signal (gyroscope)-", names(all_data))
names(all_data) <- gsub("fBodyGyroJerkMag-","frequency body acceleration jerk signal magnitude (gyroscope)-", names(all_data))

names(all_data) <- gsub("tGravityAcc-","time Gravity acceleration signal (accelerometer)-", names(all_data))
names(all_data) <- gsub("tGravityAccMag-","time Gravity acceleration signal Magnitude (accelerometer)-", names(all_data))

# 5. Create a second independent tidy data set with the average of each variable for each activity and each subject.

tidy_data <- all_data %>% group_by(activity,subject) %>% summarise_all(mean)

write.table(tidy_data, "tidy.txt", row.name=FALSE)
