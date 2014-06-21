### CodeBook 
### for Human Activity Recognition Using Smartphones Data Set calculated means by acitvity and subject.
The original data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) (.zip). Original data description [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Columns 4-69 of data.txt is a collection of **means (by acticity and subject) of the means and standard deviations of the original data.** The training and test data have been merged.


1. Activity_ID

        Activity ID
        
        values 1-6 

2. Activity_Name

        Activity Name

        "WALKING" (Activity_ID 1)

        "WALKING_UPSTAIRS" (Activity_ID 2)

        "WALKING_DOWNSTAIRS" (Activity_ID 3)

        "SITTING" (Activity_ID 4)

        "STANDING" (Activity_ID 5)

        "LAYING" (Activity_ID 6)
3. subject

        Participating subjects
        
        Values 1-30

NB! Columns 4-69 consist of means of the original data (by subject and activity).
        
4.  "tBodyAcc-mean()-X"
5.  "tBodyAcc-mean()-Y"    
6.  "tBodyAcc-mean()-Z"
7.  "tBodyAcc-std()-X"
8.  "tBodyAcc-std()-Y"
9.  "tBodyAcc-std()-Z"
10.  "tGravityAcc-mean()-X"
11.  "tGravityAcc-mean()-Y"
12.  "tGravityAcc-mean()-Z"
13.  "tGravityAcc-std()-X"
14.  "tGravityAcc-std()-Y"
15.  "tGravityAcc-std()-Z"
16.   "tBodyAccJerk-mean()-X"
17.   "tBodyAccJerk-mean()-Y"
18.   "tBodyAccJerk-mean()-Z"
19.   "tBodyAccJerk-std()-X"
20.   "tBodyAccJerk-std()-Y"
21.   "tBodyAccJerk-std()-Z"
22.   "tBodyGyro-mean()-X"
23.   "tBodyGyro-mean()-Y"
24.   "tBodyGyro-mean()-Z"
25.   "tBodyGyro-std()-X"
26.   "tBodyGyro-std()-Y"
27.   "tBodyGyro-std()-Z"
28.   "tBodyGyroJerk-mean()-X"
29.   "tBodyGyroJerk-mean()-Y"
30.   "tBodyGyroJerk-mean()-Z"
31.   "tBodyGyroJerk-std()-X"
32.   "tBodyGyroJerk-std()-Y"
33.   "tBodyGyroJerk-std()-Z"
34.   "tBodyAccMag-mean()"
35.   "tBodyAccMag-std()"
36.   "tGravityAccMag-mean()"
37.   "tGravityAccMag-std()"
38.   "tBodyAccJerkMag-mean()"
39.   "tBodyAccJerkMag-std()"
40.   "tBodyGyroMag-mean()"
41.   "tBodyGyroMag-std()"
42.   "tBodyGyroJerkMag-mean()"
43.   "tBodyGyroJerkMag-std()"
44.   "fBodyAcc-mean()-X"
45.   "fBodyAcc-mean()-Y"
46.   "fBodyAcc-mean()-Z"
47.   "fBodyAcc-std()-X"
48.   "fBodyAcc-std()-Y"
49.   "fBodyAcc-std()-Z"
50.   "fBodyAccJerk-mean()-X"
51.   "fBodyAccJerk-mean()-Y"
52.   "fBodyAccJerk-mean()-Z"
53.   "fBodyAccJerk-std()-X"
54.   "fBodyAccJerk-std()-Y"
55.   "fBodyAccJerk-std()-Z"
56.   "fBodyGyro-mean()-X"
57.   "fBodyGyro-mean()-Y"
58.   "fBodyGyro-mean()-Z"
59.   "fBodyGyro-std()-X"
60.   "fBodyGyro-std()-Y"
61.   "fBodyGyro-std()-Z"
62.   "fBodyAccMag-mean()"
63.   "fBodyAccMag-std()"
64.   "fBodyBodyAccJerkMag-mean()"
65.   "fBodyBodyAccJerkMag-std()"
66.   "fBodyBodyGyroMag-mean()"
67.   "fBodyBodyGyroMag-std()"
68.   "fBodyBodyGyroJerkMag-mean()"
69.   "fBodyBodyGyroJerkMag-std()"  



