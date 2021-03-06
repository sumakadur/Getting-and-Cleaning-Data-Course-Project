library(plyr)

# 0. Downloading dataset
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")


# 1.0 Merging the training and the test sets to create one data set:

#  Read trainings tables:
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#  Read testing tables:
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read  feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Read activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

#  Assign column names:
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

#  Merging all data in one set:
mrg_train <- cbind(y_train, subject_train, x_train)
mrg_test <- cbind(y_test, subject_test, x_test)
setAllInOne <- rbind(mrg_train, mrg_test)

# 2.0  Extract only the measurements on the mean and standard deviation for each measurement:

# Reading column names:
colNames <- colnames(setAllInOne)

# Create vector for defining ID, mean and standard deviation:
mean_and_std <- (grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames) 
)

#  Make subset from setAllInOne:
setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]

# 3.0  Use descriptive activity names to name the activities in the data set:
setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId',
                              all.x=TRUE)

# 4.0 Appropriately label  the data set with descriptive variable names.
# Previos steps create these variable names; mean_and_std, setForMeanAndStd, setWithActivityNames are the labels

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject:

# Create second tidy data set 
TidySet2 <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
TidySet2 <- TidySet2[order(TidySet2$subjectId, TidySet2$activityId),]

# Create  second tidy data set in txt file
write.table(TidySet2, "TidySet2.txt", row.name=FALSE)

