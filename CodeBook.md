#Tidy data set

Tidy data set in "submit.txt" contains the same variables as the raw does, but the variables were renamed to make it more readable:

1. Replace -mean() with Mean
2. Replace -std with Std
3. Replace t with time
4. Replace f with freq
5. Remove characters ()
6. Replace BodyBody with Body

## Lits of old colnames and new colnames :

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

