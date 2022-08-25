# Getting and Cleaning Data Course Project

This repository includes requested files for the final project in the Coursera's course Getting and Cleaning Data.

## Content
- README.md: a document that explains the analysis files
- CodeBook.md: a code book that indicates all the variables and summaries calculated, along with other relevant information
- run_analysis.R: a script that performs the actual analysis

## The original data set: Human Activity Recognition Using Smartphones Data Set

Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Original data for the project can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

## Transformations that were performed to clean up the data

The task was to create one R script called run_analysis.R that does the following: 

Step 1: Merges the training and the test sets to create one data set.
Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
Step 3: Uses descriptive activity names to name the activities in the data set
Step 4: Appropriately labels the data set with descriptive variable names.
Step 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

See the run_analysis.R file for the details.

## Tidy data set: tidy_data.txt

The step 5 of run_analysis.R script creates a second, independent tidy data set called tidy_data.txt. This file was uploaded to Coursera's course website.

Here is a code reading the file back into R:

data <- read.table(file_path, header = TRUE)
    View(data)

## Code book

The CodeBook.md file explains all the variables in the tidy data set. The code book also indicate all summaries calculated, along with units, and other relevant information.
