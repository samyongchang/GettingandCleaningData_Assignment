GettingandCleaningData_Assignment

This readme file provides a description on the 

Data source: 

A description of the data for this dataset comes from the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data can be downloaded from the link below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

How the script works:

1. Downloads the necessary R libraries
2. The folder UCI HAR Dataset should be set as the working directory. File names should not change
3. The script works by firstly putting together the Subject ID, activity and features that measure the mean and standard deviation for the train dataset. The same is then done for the test dataset. Subsequently the two datasets are merged. Using the melt and then the dcast function, the final dataset finally restructures the data by Subject, Activity and the mean of the measurements.


Data Description:

1. "subject" - refers to the subject id
2. "activity" - refers to the 6 activities conducted by the subjects. This is taken from the file "activity_labels.txt". This inludes the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
3. The remaining variables gives the average of the mean and standard deviations of each measurment by subject and activity. Variables with "mean" in the text refers to the mean of the measurement. Variables with "std" refers to the standard deviaton of each measurement. 
4. [Excerpt from the "features_info.txt" file provided in the UCI HAR Dataset which helps to describe what each of the measurement variables are.] The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


List of variables are as follows:

"subject"
"activity"
"tBodyAcc.mean...X"
"tBodyAcc.mean...Y"
"tBodyAcc.mean...Z"
"tBodyAcc.std...X"
"tBodyAcc.std...Y"
"tBodyAcc.std...Z"
"tGravityAcc.mean...X"
"tGravityAcc.mean...Y"
"tGravityAcc.mean...Z"
"tGravityAcc.std...X"
"tGravityAcc.std...Y"
"tGravityAcc.std...Z"
"tBodyAccJerk.mean...X"
"tBodyAccJerk.mean...Y"
"tBodyAccJerk.mean...Z"
"tBodyAccJerk.std...X"
"tBodyAccJerk.std...Y"
"tBodyAccJerk.std...Z"
"tBodyGyro.mean...X"
"tBodyGyro.mean...Y"
"tBodyGyro.mean...Z"
"tBodyGyro.std...X"
"tBodyGyro.std...Y"
"tBodyGyro.std...Z"
"tBodyGyroJerk.mean...X"
"tBodyGyroJerk.mean...Y"
"tBodyGyroJerk.mean...Z"
"tBodyGyroJerk.std...X"
"tBodyGyroJerk.std...Y"
"tBodyGyroJerk.std...Z"
"tBodyAccMag.mean.."
"tBodyAccMag.std.."
"tGravityAccMag.mean.."
"tGravityAccMag.std.."
"tBodyAccJerkMag.mean.."
"tBodyAccJerkMag.std.."
"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
"tBodyGyroJerkMag.mean.."
"tBodyGyroJerkMag.std.."
"fBodyAcc.mean...X"
"fBodyAcc.mean...Y"
"fBodyAcc.mean...Z"
"fBodyAcc.std...X"
"fBodyAcc.std...Y"
"fBodyAcc.std...Z"
"fBodyAcc.meanFreq...X"
"fBodyAcc.meanFreq...Y"
"fBodyAcc.meanFreq...Z"
"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y"
"fBodyAccJerk.mean...Z"
"fBodyAccJerk.std...X"
"fBodyAccJerk.std...Y"
"fBodyAccJerk.std...Z"
"fBodyAccJerk.meanFreq...X"
"fBodyAccJerk.meanFreq...Y"
"fBodyAccJerk.meanFreq...Z"
"fBodyGyro.mean...X"
"fBodyGyro.mean...Y"
"fBodyGyro.mean...Z"
"fBodyGyro.std...X"
"fBodyGyro.std...Y"
"fBodyGyro.std...Z"
"fBodyGyro.meanFreq...X"
"fBodyGyro.meanFreq...Y"
"fBodyGyro.meanFreq...Z"
"fBodyAccMag.mean.."
"fBodyAccMag.std.."
"fBodyAccMag.meanFreq.."
"fBodyBodyAccJerkMag.mean.."
"fBodyBodyAccJerkMag.std.."
"fBodyBodyAccJerkMag.meanFreq.."
"fBodyBodyGyroMag.mean.."
"fBodyBodyGyroMag.std.."
"fBodyBodyGyroMag.meanFreq.."
"fBodyBodyGyroJerkMag.mean.."
"fBodyBodyGyroJerkMag.std.."
"fBodyBodyGyroJerkMag.meanFreq.."
