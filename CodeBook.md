About R script:

File with R code "run_analysis.R" perform 5 following steps (in accordance assigned task of course work):

1.0 Merging the training and the test sets to create one data set.
- Reading files
- Reading trainings tables
- Reading testing tables
- Reading feature vector
- Reading activity labels
- Assigning column names
- Merging all data in one set


2.0  Extracting only the measurements on the mean and standard deviation for each measurement
- Reading column names
- Create vector for defining ID, mean and standard deviation
- Making nessesary subset from setAllInOne

3.0 Using descriptive activity names to name the activities in the data set.  See the measurement details below. 

4.0 Appropriately labeling the data set with descriptive variable names. See the variable names below. 

5.0 Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

File Tidyset2.txt contains the tidy data.


Measurements:

 "tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X"
 "tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X" 
"tGravityAcc-mean()-Y" 
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y" 
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y" 
"tBodyAccJerk-std()-Z" 
"tBodyGyro-mean()-X" 
"tBodyGyro-mean()-Y" 
"tBodyGyro-mean()-Z" 
"tBodyGyro-std()-X" 
"tBodyGyro-std()-Y" 
"tBodyGyro-std()-Z" 
"tBodyGyroJerk-mean()-X" 
"tBodyGyroJerk-mean()-Y" 
"tBodyGyroJerk-mean()-Z" 
"tBodyGyroJerk-std()-X" 
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-mean()" 
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()" 
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-mean()" 
"tBodyGyroMag-std()" 
"tBodyGyroJerkMag-mean()" 
"tBodyGyroJerkMag-std()" 
"fBodyAcc-mean()-X" 
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z" 
"fBodyAcc-std()-X" 
"fBodyAcc-std()-Y" 
"fBodyAcc-std()-Z" 
"fBodyAcc-meanFreq()-X" 
"fBodyAcc-meanFreq()-Y" 
"fBodyAcc-meanFreq()-Z" 
"fBodyAccJerk-mean()-X" 
"fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z" 
"fBodyAccJerk-meanFreq()-X" 
"fBodyAccJerk-meanFreq()-Y" 
"fBodyAccJerk-meanFreq()-Z" 
"fBodyGyro-mean()-X" 
"fBodyGyro-mean()-Y" 
"fBodyGyro-mean()-Z" 
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyGyro-meanFreq()-X" 
"fBodyGyro-meanFreq()-Y" 
"fBodyGyro-meanFreq()-Z" 
"fBodyAccMag-mean()" 
"fBodyAccMag-std()" 
"fBodyAccMag-meanFreq()" 
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroMag-meanFreq()" 
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()" 
"fBodyBodyGyroJerkMag-meanFreq()" 

Variables:

x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.

x_data, y_data and subject_data merge the previous datasets and under the right column to further analysis.S
