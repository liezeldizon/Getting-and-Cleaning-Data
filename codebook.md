Getting and Cleaning Data Course Project
----------------------------------------
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Dataset Information
-------------------
The data linked from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the [website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.

Creating the Tidy Dataset
--------------------------
### The dataset was prepared for analysis by performing the following steps:
*Open the run_analysis.R script to check the actual codes used per step.*
1. Download and unzip necessary files from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Load the *features, activity labels, training and test subjects, labels, and set data* text files using the *read.table* function and rename their respective columns with appropriate labels.
3. Combine the rows of the training and test datasets for subjects, labels and set data using the *rbind* function.
4. Merge the columns of the combined subjects, labels and set data using the *cbind* function to create one data set.
5. Extract the measurements on the mean and standard deviation for each measurement using the *%>%* and *select* function.
6. Rename the activities column in the data set with descriptive names by subsetting.
7. Label the dataset with appropriate descriptive variable names using the *gsub* function.
8. Create a second, independent tidy data set with the mean of each variable for each activity and each subject using the *%>%, group_by and summarise_all* function.
9. Extract the new tidy data set using the *write.table* function.

Description of the variables in the tidydata.txt file
-------------------------------------------------------
The tidydata.txt file consists of 180 observations and 88 variables that includes the average of each variable for each activity and each subject. The schema used in naming the variables and the classes of the variables are enumerated below:

* **subject** - *int*, subject id
* **activity** - *factor*, activity performed
* **Time_BodyAccelerometer.mean** - *num*, mean time acceleration of the body per direction (X, Y or Z).
* **Time_GravityAccelerometer.mean** - *num*, mean time acceleration of the gravity accelerometer per direction (X, Y or Z).
* **Time_BodyGyroscope.mean** - *num*, mean time body gyroscope measurement per direction (X,Y or Z).
* **Time_BodyGyroscopeJerk.mean** - *num*, mean time jerk signal measurement per direction (X,Y or Z).
* **Time_BodyAccelerometerMagnitude.mean** - *num*, mean time magnitude of body accelerometer measurement.
* **Time_GravityAccelerometerMagnitude.mean** - *num*, mean time magnitude of gravity accelerometer measurement.
* **Time_BodyAccelerometerJerkMagnitude.mean** - *num*, mean time magnitude of body accelerometer jerk measurement.
* **Time_BodyGyroscopeMagnitude.mean** - *num*, mean time magnitude of body gyroscope measurement.
* **Time_BodyGyroscopeJerkMagnitude.mean** - *num*, mean time magnitude of body gyroscope jerk measurement.
* **Frequency_BodyAccelerometer.mean** - *num*, mean frequency body accelerometer measurement per direction (X,Y or Z).
* **Frequency_BodyAccelerometerJerk.mean** - *num*, mean frequency body accelerometer jerk measurement per direction (X,Y or Z).
* **Frequency_BodyGyroscope.mean** - *num*, mean frequency body gyroscope measurement per direction (X,Y or Z).
* **Frequency_BodyAccelerometerMagnitude.mean** - *num*, mean frequency body accelerometer magniture measurement per direction (X,Y or Z).
* **Frequency_BodyBodyAccelerometerJerkMagnitude.mean** -  *num*, mean frequency body accelerometer jerk magnitude per direction (X,Y or Z).
* **Frequency_BodyBodyGyroscopeMagnitude.mean** - *num*, mean frequency body gyroscope magnitude measurement.
* **Frequency_BodyBodyGyroscopeJerkMagnitude.mean** - *num*, mean frequency body gyroscope jerk magnitude measurement.
* **Time_BodyAccelerometer.std** - *num*, standard deviation of time acceleration of the body per direction (X, Y or Z).
* **Time_GravityAccelerometer.std** - *num*, standard deviation of time acceleration of the gravity accelerometer per direction (X, Y or Z).
* **Time_BodyGyroscope.std** - *num*, standard deviation of time body gyroscope measurement per direction (X,Y or Z).
* **Time_BodyGyroscopeJerk.std** - *num*, standard deviation of time jerk signal measurement per direction (X,Y or Z).
* **Time_BodyAccelerometerMagnitude.std** - *num*, standard deviation of time magnitude of body accelerometer measurement.
* **Time_GravityAccelerometerMagnitude.std**  - *num*, standard deviation of time magnitude of gravity accelerometer measurement.
* **Time_BodyAccelerometerJerkMagnitude.std** - *num*, standard deviation of time magnitude of body accelerometer jerk measurement.
* **Time_BodyGyroscopeMagnitude.std**  - *num*, standard deviation of time magnitude of body gyroscope measurement.
* **Time_BodyGyroscopeJerkMagnitude.std** - *num*, standard deviation of time magnitude of body gyroscope jerk measurement.
* **Frequency_BodyAccelerometer.std**- *num*, standard deviation of frequency body accelerometer measurement per direction (X,Y or Z).
* **Frequency_BodyAccelerometerJerk.std** - *num*, standard deviation of frequency body accelerometer jerk measurement per direction (X,Y or Z).
* **Frequency_BodyGyroscope.std** - *num*, standard deviation of frequency body gyroscope measurement per direction (X,Y or Z).
* **Frequency_BodyAccelerometerMagnitude.std** - *num*, standard deviation of frequency body accelerometer magniture measurement per direction (X,Y or Z).
* **Frequency_BodyBodyAccelerometerJerkMagnitude.std** -  *num*, standard deviation of frequency body accelerometer jerk magnitude per direction (X,Y or Z).
* **Frequency_BodyBodyGyroscopeMagnitude.std** - *num*, standard deviation of frequency body gyroscope jerk magnitude measurement.
* **Frequency_BodyBodyGyroscopeJerkMagnitude.std** - *num*, standard deviation of frequency body gyroscope jerk magnitude measurement.
