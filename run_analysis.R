# This is the run_analysis.R script for Getting and Cleaning Data Course Project
# The script does the following:
# Step 1: Merges the training and the test sets to create one data set.
# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
# Step 3: Uses descriptive activity names to name the activities in the data set
# Step 4: Appropriately labels the data set with descriptive variable names.
# Step 5: Creates a second, independent tidy data set with the average of each variable
#         for each activity and each subject.

# Step 0: downloading and unzipping the original data

#create a directory
if(!file.exists("./originalData")){dir.create("./originalData")}

# download the data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./originalData/Dataset.zip")

# unzip the data set
unzip(zipfile="./originalData/Dataset.zip",exdir="./originalData")

# packages required to run this script
# if needed use commands install.packages("data.table") and/or install.packages("dplyr") to get the required packages
library(data.table)
library(dplyr)

# Step 1: Merging training and test sets

# read features.txt and activity_labels.txt files

feature_names <- read.table("./originalData/UCI HAR Dataset/features.txt", header = FALSE)
activity_labels <- read.table("./originalData/UCI HAR Dataset/activity_labels.txt", header = FALSE)

# read training data

subject_train <- read.table("./originalData/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activity_train <- read.table("./originalData/UCI HAR Dataset/train/y_train.txt", header = FALSE)
features_train <- read.table("./originalData/UCI HAR Dataset/train/X_train.txt", header = FALSE)

# read test data

subject_test <- read.table("./originalData/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activity_test <- read.table("./originalData/UCI HAR Dataset/test/y_test.txt", header = FALSE)
features_test <- read.table("./originalData/UCI HAR Dataset/test/X_test.txt", header = FALSE)

# combine training and test data regarding subject, activity, and features

subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
features <- rbind(features_train, features_test)

# name the columns

names(subject)[1] <- "subject"
names(activity)[1] <- "activity"
names(features) <- t(feature_names[2]) # t() converts feature_names to a vector

# create one data set

merged_data <- cbind(subject, activity, features)

# Step 2: Extracting the measurements on the mean and standard deviation for each measurement

# Create a vector for defining columns that include mean() or std() at the end
# (This is my interpretation since there are no specific marking criteria on the number of columns.)

columns_mean_std <- grep("std\\(\\)|mean\\(\\)", names(merged_data), ignore.case = TRUE)

# add subject and activity columns to the list

selected_columns <- c(1, 2, columns_mean_std)

# create a subset that includes only selected columns

subset_data <- merged_data[,selected_columns]

# There are now 10299 rows and 68 columns in the merged and extracted data frame
# dim(subset_data)
# [1] 10299    68

# Step 3: Using descriptive activity names to name the activities

# change the activity variable from integer to a factor variable and add labels

subset_data$activity <- factor(subset_data$activity,
                               levels = c(1:6),
                               labels = (activity_labels[,2]))

# translate characters in activity column from upper to lower case so that it looks tidier

subset_data$activity <- tolower(subset_data$activity)

# Step 4: Labeling the data set with descriptive variable names.
