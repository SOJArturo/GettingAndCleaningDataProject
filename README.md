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
