setwd("C:/Users/Mohit Singh-Chhabra/Google Drive/Mohit/Data Science/DataCleaning/UCI HAR Dataset")

library("dplyr")
library("tidyr")

# import main training dataset
trainData <- tbl_df(read.table("./train/x_train.txt", header = FALSE))

#import features dataset; this dataset contains names for training dataset
features <- read.table("features.txt")
names(trainData) <- features$V2

#import subject labels and append them to train dataset to identify data for the 30 subjects in the study
subjectTrain <- tbl_df(read.table("./train/subject_train.txt"))
trainData$SubjectLabel <- subjectTrain$V1

# import train labels that have code for each activity type
trainLabels <- read.table("./train/y_train.txt")
names(trainLabels) <- c("ActivityLabel")

# import and rename activity labels for training data
trainTypes <- read.table("activity_labels.txt")
names(trainTypes) <- c("ActivityLabel", "Activity")

#Merge Training lablels with their names; then bind them to the trainData set
trainLabels1 <- inner_join(trainLabels, trainTypes, by = "ActivityLabel") 
trainData <- cbind.data.frame(trainData, trainLabels1)

#Repeat all above steps for the Test Dataset
testData <- tbl_df(read.table("./test/x_test.txt", header = FALSE))
names(testData) <- features$V2
subjectTest <- tbl_df(read.table("./test/subject_test.txt"))

testData$SubjectLabel <- subjectTest$V1
testLabels <- read.table("./test/y_test.txt")
names(testLabels) <- c("ActivityLabel")
testLabels1 <- inner_join(testLabels, trainTypes, by = "ActivityLabel") 
testData <- cbind.data.frame(testData, testLabels1)

# Merge test and train data sets
trainAndtest <- rbind.data.frame(trainData, testData)

# Extract measurements on mean and Std dev only
Vars <- sort(c(grep("mean()", names(trainAndtest)), grep("std()", names(trainAndtest)), grep("SubjectLabel", names(trainAndtest)),grep("Activity", names(trainAndtest))))
trainAndtest2 <- trainAndtest[,Vars]

#Clean all column names
names(trainAndtest2) <- gsub("()", "", names(trainAndtest2), fixed = TRUE)
names(trainAndtest2) <- sub("-", "", names(trainAndtest2), fixed =TRUE)


#group and summarize to get mean/average values for each column
trainAndtestMean <- trainAndtest2 %>% select(-Activity) %>% group_by(SubjectLabel, ActivityLabel) %>% summarise_each(funs(mean))

#need to clean up the data table to make it tidy --- make a wide data table long and think about splitting it up

library(tidyr)
molten <- trainAndtestMean %>% gather(key, value, -SubjectLabel, -ActivityLabel) %>% separate(key,into = c("key", "Axis"), sep= "-")

write.table(molten, "TidyDataSet.txt", sep= "\t", row.names = FALSE)

# EXTRA STEP: there are two types of variables, axial and non-axial. Axial variables have an x,y,z component, non- axial do not
NonAxial <- molten[is.na(molten$Axis),] %>% select(-Axis) %>% spread(key, value)
Axial <- molten[!is.na(molten$Axis),] %>% spread(key, value)


write.table(names(trainAndtestMean), "Codebook.txt", sep = "\t")



