GettingandCleaningData_Assignment

How the script works
1. Downloads the necessary R libraries
2. The folder UCI HAR Dataset should be set as the working directory. File names should not change
3. The script works by firstly putting together the Subject ID
4. 

Data Code book:
1. "subject" - refers to the subject id
2. "activity" - refers to the 6 activities conducted by the subjects. This is taken from the file "activity_labels.txt". This inludes the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
3. The remaining variables gives the average of the mean and standard deviations of each measurment by subject and activity. Variables with "mean" in the text refers to the mean of the measurement. Variables with "std" refers to the standard deviaton of each measurement.


List of variables are as follows:
 [1] "subject"                         "activity"                       
 [3] "tBodyAcc.mean...X"               "tBodyAcc.mean...Y"              
 [5] "tBodyAcc.mean...Z"               "tBodyAcc.std...X"               
 [7] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
 [9] "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"           
[11] "tGravityAcc.mean...Z"            "tGravityAcc.std...X"            
[13] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[15] "tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"          
[17] "tBodyAccJerk.mean...Z"           "tBodyAccJerk.std...X"           
[19] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[21] "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"             
[23] "tBodyGyro.mean...Z"              "tBodyGyro.std...X"              
[25] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[27] "tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"         
[29] "tBodyGyroJerk.mean...Z"          "tBodyGyroJerk.std...X"          
[31] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[33] "tBodyAccMag.mean.."              "tBodyAccMag.std.."              
[35] "tGravityAccMag.mean.."           "tGravityAccMag.std.."           
[37] "tBodyAccJerkMag.mean.."          "tBodyAccJerkMag.std.."          
[39] "tBodyGyroMag.mean.."             "tBodyGyroMag.std.."             
[41] "tBodyGyroJerkMag.mean.."         "tBodyGyroJerkMag.std.."         
[43] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[45] "fBodyAcc.mean...Z"               "fBodyAcc.std...X"               
[47] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
[49] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[51] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"          
[53] "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
[55] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
[57] "fBodyAccJerk.std...Z"            "fBodyAccJerk.meanFreq...X"      
[59] "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
[61] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[63] "fBodyGyro.mean...Z"              "fBodyGyro.std...X"              
[65] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
[67] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[69] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."             
[71] "fBodyAccMag.std.."               "fBodyAccMag.meanFreq.."         
[73] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.std.."      
[75] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[77] "fBodyBodyGyroMag.std.."          "fBodyBodyGyroMag.meanFreq.."    
[79] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.std.."     
[81] "fBodyBodyGyroJerkMag.meanFreq.."
