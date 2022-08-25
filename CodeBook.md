# Code book

This file explains all the variables in the tidy data set. The code book also indicate all summaries calculated, along with units, and other relevant information.

## Overview

tidy_data.txt has 180 rows and 68 columns. There were 30 subjects each performing 6 different types of activities while wearing a smartphone on the waist. Column 1 is the subject, column 2 is the activity performed and columns 3 to 68 are means of the measurements on the mean and standard deviation.

## Variable 1: subject

Integer variable, values from 1 to 30 representing volunteers who participated in the study

## Variable 2: activity

Character variable, values "laying", "sitting", "standing", "walking", walking_upstairs", "walking_downstairs" representing activities that the subjects performed

## Variables 3 to 68: features

> names(tidy_data)
 [1] "subject"                      "activity"                     "TimeBodyAccMeanX_mean"        "TimeBodyAccMeanY_mean"       
 [5] "TimeBodyAccMeanZ_mean"        "TimeBodyAccStdX_mean"         "TimeBodyAccStdY_mean"         "TimeBodyAccStdZ_mean"        
 [9] "TimeGravityAccMeanX_mean"     "TimeGravityAccMeanY_mean"     "TimeGravityAccMeanZ_mean"     "TimeGravityAccStdX_mean"     
[13] "TimeGravityAccStdY_mean"      "TimeGravityAccStdZ_mean"      "TimeBodyAccJerkMeanX_mean"    "TimeBodyAccJerkMeanY_mean"   
[17] "TimeBodyAccJerkMeanZ_mean"    "TimeBodyAccJerkStdX_mean"     "TimeBodyAccJerkStdY_mean"     "TimeBodyAccJerkStdZ_mean"    
[21] "TimeBodyGyroMeanX_mean"       "TimeBodyGyroMeanY_mean"       "TimeBodyGyroMeanZ_mean"       "TimeBodyGyroStdX_mean"       
[25] "TimeBodyGyroStdY_mean"        "TimeBodyGyroStdZ_mean"        "TimeBodyGyroJerkMeanX_mean"   "TimeBodyGyroJerkMeanY_mean"  
[29] "TimeBodyGyroJerkMeanZ_mean"   "TimeBodyGyroJerkStdX_mean"    "TimeBodyGyroJerkStdY_mean"    "TimeBodyGyroJerkStdZ_mean"   
[33] "TimeBodyAccMagMean_mean"      "TimeBodyAccMagStd_mean"       "TimeGravityAccMagMean_mean"   "TimeGravityAccMagStd_mean"   
[37] "TimeBodyAccJerkMagMean_mean"  "TimeBodyAccJerkMagStd_mean"   "TimeBodyGyroMagMean_mean"     "TimeBodyGyroMagStd_mean"     
[41] "TimeBodyGyroJerkMagMean_mean" "TimeBodyGyroJerkMagStd_mean"  "FreqBodyAccMeanX_mean"        "FreqBodyAccMeanY_mean"       
[45] "FreqBodyAccMeanZ_mean"        "FreqBodyAccStdX_mean"         "FreqBodyAccStdY_mean"         "FreqBodyAccStdZ_mean"        
[49] "FreqBodyAccJerkMeanX_mean"    "FreqBodyAccJerkMeanY_mean"    "FreqBodyAccJerkMeanZ_mean"    "FreqBodyAccJerkStdX_mean"    
[53] "FreqBodyAccJerkStdY_mean"     "FreqBodyAccJerkStdZ_mean"     "FreqBodyGyroMeanX_mean"       "FreqBodyGyroMeanY_mean"      
[57] "FreqBodyGyroMeanZ_mean"       "FreqBodyGyroStdX_mean"        "FreqBodyGyroStdY_mean"        "FreqBodyGyroStdZ_mean"       
[61] "FreqBodyAccMagMean_mean"      "FreqBodyAccMagStd_mean"       "FreqBodyAccJerkMagMean_mean"  "FreqBodyAccJerkMagStd_mean"  
[65] "FreqBodyGyroMagMean_mean"     "FreqBodyGyroMagStd_mean"      "FreqBodyGyroJerkMagMean_mean" "FreqBodyGyroJerkMagStd_mean"

66 numerical variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are mean and standard deviation (std). The original data set had also other measurements that are not considered here.

Finally, the average of each variable for each activity and each subject was calculated. This reduced the number of rows from 10299 to 180 (30 subjects * 6 activities each = 180 rows).

