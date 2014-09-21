library(base)
library(utils)
library(data.table)

merge_data<-function(){
        datatrain <- read.table("train/X_train.txt")
        datatest <- read.table("test/X_test.txt")
        rbind(datatrain, datatest)        
}

merge_label<-function(){
        labeltrain <- read.table("train/y_train.txt")
        labeltest <- read.table("test/y_test.txt")
        rbind(labeltrain, labeltest)       
}
merge_subject<-function(){
        subjecttrain <- read.table("train/subject_train.txt")
        subjecttest <- read.table("test/subject_test.txt")
        rbind(subjecttrain, subjecttest)
        
}

run_analysis<-function(){

# Merges the training and the test sets to create one data set.
data<-merge_data()
labeldata<-merge_label()
subject<-merge_subject()
       
# Extract only the measurements on the mean and standard deviation for each measurement.        
# 1. Get the features from feature.txt and add column's names 'index' and 'name'
# 2. Get only features which contains "mean" or "std"
features <- read.table('features.txt', col.names = c('index', 'name'))
features <- subset(features, grepl('-(mean|std)[(]', features$name))
# 3. select the data according the vector "index" of features  and replace by the features names
data <- data[, features$index]  
names(data) <- features$name

# Uses descriptive activity names to name the activities in the data set
# 1. get the different label of octivity and add column's names : "level", "label"
label<- read.table('activity_labels.txt', col.names = c('level', 'label'))
# 2. Apply activity names 
labeldata <- labeldata[, 1]
data$activity <- factor(labeldata, levels=label$level, labels=label$label)
# 3. get each subject and apply
subject <- subject[, 1]
data$subject <- factor(subject)

# Appropriately labels the data set with descriptive variable names and generate the tidy data set
dat<-data.table(data)

# Fix the variable names
col<-colnames(dat); 

# Appropriately label the data set with descriptive activity names. 

for (i in 1:length(col)) 
 {
        col[i] <- gsub("\\()","",col[i])
        col[i] <- gsub("(-std)","StdDev",col[i])
        col[i] <- gsub("(-mean)","Mean",col[i])
        col[i] <- gsub("^(t)","time",col[i])
        col[i] <- gsub("^(f)","freq",col[i])
        col[i] <- gsub("([Gg]ravity)","Gravity",col[i])
        col[i] <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",col[i])
        col[i] <- gsub("[Gg]yro","Gyro",col[i])
        col[i] <- gsub("AccMag","AccMagnitude",col[i])
};

# Reassigning the new descriptive column names to the finalData set
colnames(dat) <- col;

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata <- dat[, lapply(.SD, mean), by=list(activity, subject)]

# Data set as a txt file created with write.table() using row.name=FALSE
write.table(tidydata, file = 'submit.txt', row.names = FALSE, quote = FALSE)
write.table(col, file = 'oldcolnames.txt', row.names = FALSE, quote = FALSE)

#return data
tidydata

}