# Peer Assessments / Getting and Cleaning Data Course Project

This repo contains project code for Getting and Cleaning Data course given by John Hopkins university on Coursera.

##Introduction

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Prerequisities
Perform the download and unzip of the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Set your working directory onto the directory named __UCI HAR Dataset__ by using command :
```
setwd("YOURPATH")
```
#Script
The script contains a function __run.analysis()__ that performs the following tasks :
### 1. Merges the training and the test sets to create one data set.
First, we perform the merge of each dataset using the rbind() function.
We create 3 generic dataset :
	
	1. data : merge "y_train" and "y_test"
	2. label : merge "x_train" and "x_test" 
	3. subject : merge "subject_train" and "subject_test"  
 
### 2. We extract only the measurements on the mean and standard deviation for each measurement.        
We create 'features' dataset and subset it using reg expression.
We use 'features' to get only the data that match with the index of 'features' vector and replace their names.

### 3. Descriptive activity names to name the activities in the data set
	
	1. get the different label of octivity and add column's names : "level", "label"
	2. Apply activity names to data. So we get a clear column identifying the activity.
	3. get each subject and apply to subject to data

### 4. Appropriately label the data set with descriptive activity names. 
Variables were renamed to make it more readable:
	
	1. Replace -mean() with Mean
	2. Replace -std with Std
	3. Replace t with time
	4. Replace f with freq
	5. Remove characters ()
	6. Replace BodyBody with Body
	
### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
We use lapply function and define "by" param with "activity" and "subject".
Finally, we create a file "submit.txt" containing the tidy dataset.






