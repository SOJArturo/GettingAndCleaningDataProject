# GettingAndCleaningDataProject
Getting and Cleaning Data Course Project

## Description of the script

This program joins two datasets (test and train), each of which is composed of three separate parts:
1. Measurements of 561 variables
2. Subjects identified by a number from 1 to 30
3. Activities identified by a number from 1 to 6

Before composing each dataset, the activities are renamed.  Instead of the original 1-6 numerical values, the activities are relabeled with words according to the following rule:
* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING

With the activities properly named, each dataset is composed by adding to the original measurments the *subject* and *activity* column.

Once the two datasets have been combined into one (called total), the program then names the variables according to the code in the *features.txt* file.  Then it eliminates 541 of the original variables, and keeps the 20 variables that are direct original measurements as well as the *subject* and *activity* identifiers.

Finally, the program groups the entire dataset by *subject* and by *activity* to calculate the mean of the remaining variables.  Once the calculation of the means is accomplished, the program exports the results to the file "result.txt" located in the root of the working directory.

## Code Book

  To get a complete account of the experiment and all the variables contained in it, go to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
  The explanation of the variables concerning this project is as follows:

* tBodyAccelMeanX - Mean of the time domain signal of the subject's body acceleration in the X-direction
* tBodyAccelMeanY - Mean of the time domain signal of the subject's body acceleration in the Y-direction
* tBodyAccelMeanZ - Mean of the time domain signal of the subject's body acceleration in the Z-direction
* tBodyAccStdX - Standard deviation of the time domain signal of the subject's body acceleration in the X-Direction
* tBodyAccStdY - Standard deviation of the time domain signal of the subject's body acceleration in the Y-Direction
* tBodyAccStdZ - Standard deviation of the time domain signal of the subject's body acceleration in the Z-Direction
* tGravityAccMeanX - Mean of the time domain signal of the subject's gravity acceleration in the X-Direction
* tGravityAccMeanY - Mean of the time domain signal of the subject's gravity acceleration in the Y-Direction
* tGravityAccMeanZ - Mean of the time domain signal of the subject's gravity acceleration in the Z-Direction
* tGravityAccStdX - Standard deviation of the time domain signal of the subject's gravity acceleration in the X-Direction
* tGravityAccStdY - Standard deviation of the time domain signal of the subject's gravity acceleration in the Y-Direction
* tGravityAccStdZ - Standard deviation of the time domain signal of the subject's gravity acceleration in the Z-Direction
* tBodyGyroMeanX - Mean of the time domain signal of the subject's gyroscope measurement in the X-Direction
* tBodyGyroMeanY - Mean of the time domain signal of the subject's gyroscope measurement in the Y-Direction
* tBodyGyroMeanZ - Mean of the time domain signal of the subject's gyroscope measurement in the Z-Direction
* tBodyGyroStdX - Standard deviation of the time domain signal of the subject's gyroscope measurement in the X-Direction
* tBodyGyroStdY - Standard deviation of the time domain signal of the subject's gyroscope measurement in the Y-Direction
* tBodyGyroStdZ - Standard deviation of the time domain signal of the subject's gyroscope measurement in the Z-Direction
