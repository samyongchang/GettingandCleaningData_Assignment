
##Getting and Cleaning Data Course Project

##You should create one R script called run_analysis.R that does the following. 
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Install the require packages if not already installed
if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("reshape2")) {
  install.packages("reshape2")
}

require("data.table")
require("reshape2")

##Reading the Activity labels and features of the data

features <-read.table("features.txt", header=FALSE)[,2]
label <- read.table("activity_labels.txt", header=FALSE)[,2]


##Returns a list of features to be selected. In this case features with the work "mean" or "std"
selected_features <- grepl("mean|std", features)

##Create the table for the Test set

subject_id <- read.table("test/subject_test.txt", header=FALSE)
activity_label <- read.table("test/y_test.txt", header=FALSE)
test <-data.frame(subject_id, activity_label)
names(test) <- c("subject","activity")

dataset <- read.table("test/X_test.txt", header=FALSE)
names(dataset) <- features
dataset <-dataset[, selected_features]
test <- data.frame(test, dataset)


##Create the table for the Train set
subject_id <- read.table("train/subject_train.txt", header=FALSE)
activity_label <- read.table("train/y_train.txt", header=FALSE)
train <-data.frame(subject_id, activity_label)
names(train) <- c("subject","activity")

dataset <- read.table("train/X_train.txt", header=FALSE)
names(dataset) <- features
dataset <-dataset[, selected_features]
train <- data.frame(train, dataset)

##Merge both Training and Test datasets together 
data <-rbind(train, test)

##Relabel the Activity values with the actual activity labels from activity_labels.txt 
data$activity <- factor(data$activity, 
                        levels = c(1,2,3,4,5,6), 
                        labels = label)

##Using Melt function to reshape data by 4 columns Subject, Activity, Variable and values. 
##For variable the features and value is numeric value of the feature.

melt_data= melt(data, id = c("subject","activity"), 
                measure.vars = names(data[,-(1:2)]))

## Apply mean function to dataset using dcast function to provide mean of the features
## for each subject and activity
tidy_data   = dcast(melt_data, subject + activity ~ variable, mean)

##Export table into txt file
write.table(tidy_data, file = "./tidy_data.txt", row.name=FALSE)

