# CodeBook run_analysis.R
In this CodeBook contains an overview of the data, their scope and how they are organized.
Details about what does the script are provided, and also, a lits of each variable which have been changed to make it tidy.
###What are the data ?
the data are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
They represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities __(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)__ wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

####For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

####The dataset includes the following files :
- __README.txt__
- __features_info.txt__: Shows information about the variables used on the feature vector.
- __features.txt__: List of all features.
- __activity_labels.txt__: Links the class labels with their activity name.
- __train/X_train.txt__: Training set.
- __train/y_train.txt__: Training labels.
- __test/X_test.txt__: Test set.
- __test/y_test.txt__: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- __train/subject_train.txt__: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- __train/Inertial Signals/total_acc_x_train.txt__: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- __train/Inertial Signals/body_acc_x_train.txt__: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- __train/Inertial Signals/body_gyro_x_train.txt__: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#####Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

###What does the script ?
#### 1. Merges the training and the test sets to create one data set.
First, we perform the merge of each dataset using the rbind() function.
We create 3 generic dataset :
	1. __data__ : merge "y_train" and "y_test"
	2. __label__ : merge "x_train" and "x_test" 
	3. __subject__ : merge "subject_train" and "subject_test"  
 
#### 2. We extract only the measurements on the mean and standard deviation for each measurement.        
We create 'features' dataset and subset it using reg expression.
We use 'features' to get only the data that match with the index of 'features' vector and replace their names.

#### 3. Descriptive activity names to name the activities in the data set
	1. get the different label of octivity and add column's names : "level", "label"
	2. Apply activity names to data. So we get a clear column identifying the activity.
	3. get each subject and apply to subject to data

#### 4. Appropriately label the data set with descriptive activity names. 
Variables were renamed to make it more readable:
	1. Replace -mean() with Mean
	2. Replace -std with Std
	3. Replace t with time
	4. Replace f with freq
	5. Remove characters ()
	6. Replace BodyBody with Body
	
_See the correspondance list below_

#### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
We use lapply function and define "by" param with "activity" and "subject"
We create a file "submit.txt" containing the tidy dataset.

##Lits of old variable's names and new names of variable :

`Raw Dataset`|`Tidy Dataset`
------------------------------|------------------------------
`x`|`x`
`tBodyAcc-mean()-X`|`timeBodyAccMean-X`
`tBodyAcc-mean()-Y`|`timeBodyAccMean-Y`
`tBodyAcc-mean()-Z`|`timeBodyAccMean-Z`
`tBodyAcc-std()-X`|`timeBodyAccStdDev-X`
`tBodyAcc-std()-Y`|`timeBodyAccStdDev-Y`
`tBodyAcc-std()-Z`|`timeBodyAccStdDev-Z`
`tGravityAcc-mean()-X`|`timeGravityAccMean-X`
`tGravityAcc-mean()-Y`|`timeGravityAccMean-Y`
`tGravityAcc-mean()-Z`|`timeGravityAccMean-Z`
`tGravityAcc-std()-X`|`timeGravityAccStdDev-X`
`tGravityAcc-std()-Y`|`timeGravityAccStdDev-Y`
`tGravityAcc-std()-Z`|`timeGravityAccStdDev-Z`
`tBodyAccJerk-mean()-X`|`timeBodyAccJerkMean-X`
`tBodyAccJerk-mean()-Y`|`timeBodyAccJerkMean-Y`
`tBodyAccJerk-mean()-Z`|`timeBodyAccJerkMean-Z`
`tBodyAccJerk-std()-X`|`timeBodyAccJerkStdDev-X`
`tBodyAccJerk-std()-Y`|`timeBodyAccJerkStdDev-Y`
`tBodyAccJerk-std()-Z`|`timeBodyAccJerkStdDev-Z`
`tBodyGyro-mean()-X`|`timeBodyGyroMean-X`
`tBodyGyro-mean()-Y`|`timeBodyGyroMean-Y`
`tBodyGyro-mean()-Z`|`timeBodyGyroMean-Z`
`tBodyGyro-std()-X`|`timeBodyGyroStdDev-X`
`tBodyGyro-std()-Y`|`timeBodyGyroStdDev-Y`
`tBodyGyro-std()-Z`|`timeBodyGyroStdDev-Z`
`tBodyGyroJerk-mean()-X`|`timeBodyGyroJerkMean-X`
`tBodyGyroJerk-mean()-Y`|`timeBodyGyroJerkMean-Y`
`tBodyGyroJerk-mean()-Z`|`timeBodyGyroJerkMean-Z`
`tBodyGyroJerk-std()-X`|`timeBodyGyroJerkStdDev-X`
`tBodyGyroJerk-std()-Y`|`timeBodyGyroJerkStdDev-Y`
`tBodyGyroJerk-std()-Z`|`timeBodyGyroJerkStdDev-Z`
`tBodyAccMag-mean()`|`timeBodyAccMagnitudeMean`
`tBodyAccMag-std()`|`timeBodyAccMagnitudeStdDev`
`tGravityAccMag-mean()`|`timeGravityAccMagnitudeMean`
`tGravityAccMag-std()`|`timeGravityAccMagnitudeStdDev`
`tBodyAccJerkMag-mean()`|`timeBodyAccJerkMagMean`
`tBodyAccJerkMag-std()`|`timeBodyAccJerkMagStdDev`
`tBodyGyroMag-mean()`|`timeBodyGyroMagMean`
`tBodyGyroMag-std()`|`timeBodyGyroMagStdDev`
`tBodyGyroJerkMag-mean()`|`timeBodyGyroJerkMagMean`
`tBodyGyroJerkMag-std()`|`timeBodyGyroJerkMagStdDev`
`fBodyAcc-mean()-X`|`freqBodyAccMean-X`
`fBodyAcc-mean()-Y`|`freqBodyAccMean-Y`
`fBodyAcc-mean()-Z`|`freqBodyAccMean-Z`
`fBodyAcc-std()-X`|`freqBodyAccStdDev-X`
`fBodyAcc-std()-Y`|`freqBodyAccStdDev-Y`
`fBodyAcc-std()-Z`|`freqBodyAccStdDev-Z`
`fBodyAccJerk-mean()-X`|`freqBodyAccJerkMean-X`
`fBodyAccJerk-mean()-Y`|`freqBodyAccJerkMean-Y`
`fBodyAccJerk-mean()-Z`|`freqBodyAccJerkMean-Z`
`fBodyAccJerk-std()-X`|`freqBodyAccJerkStdDev-X`
`fBodyAccJerk-std()-Y`|`freqBodyAccJerkStdDev-Y`
`fBodyAccJerk-std()-Z`|`freqBodyAccJerkStdDev-Z`
`fBodyGyro-mean()-X`|`freqBodyGyroMean-X`
`fBodyGyro-mean()-Y`|`freqBodyGyroMean-Y`
`fBodyGyro-mean()-Z`|`freqBodyGyroMean-Z`
`fBodyGyro-std()-X`|`freqBodyGyroStdDev-X`
`fBodyGyro-std()-Y`|`freqBodyGyroStdDev-Y`
`fBodyGyro-std()-Z`|`freqBodyGyroStdDev-Z`
`fBodyAccMag-mean()`|`freqBodyAccMagnitudeMean`
`fBodyAccMag-std()`|`freqBodyAccMagnitudeStdDev`
`fBodyBodyAccJerkMag-mean()`|`freqBodyAccJerkMagMean`
`fBodyBodyAccJerkMag-std()`|`freqBodyAccJerkMagStdDev`
`fBodyBodyGyroMag-mean()`|`freqBodyGyroMagMean`
`fBodyBodyGyroMag-std()`|`freqBodyGyroMagStdDev`
`fBodyBodyGyroJerkMag-mean()`|`freqBodyGyroJerkMagMean`
`fBodyBodyGyroJerkMag-std()`|`freqBodyGyroJerkMagStdDev`
`activity`|`activity`
`subject`|`subject`



