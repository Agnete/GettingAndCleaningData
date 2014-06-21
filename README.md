GettingAndCleaningData
======================
This is the repo for the Coursera course "Getting and Cleaning Data". 
The repo contain the script run_analysis.R for esxtracting data from the Human Activity Recognition Using Smartphones Data Set from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .
run_analysis.R reads y_test.tx, x_test.txt, subject_test.txt, y_train.txt, x_train.txt, subject_train.txt, features.txt from the current working directory in R.
The script joins the test and train data (x_test.txt and x_train.txt) with the activity ID's (y_test and y_train.txt) and the subject ID's (subject_test.txt and) subject_train.txt. A column with activity names is also included in the resulting data frame.
The script then extracts only columns with labels ending with mean() and std() values (NOT including columns such as for instance "fBodyGyro-meanFreq()-X"). 
The scipt then merges test and train data in a combined 10299 x 69 table and writes the data to the file "data.txt".
