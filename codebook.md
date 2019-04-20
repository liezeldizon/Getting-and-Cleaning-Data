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
2. Load the *features, activity labels, training and test subjects, labels, and set data* text files using the read.table function and rename their respective columns with appropriate labels.
3. Combine the rows of the training and test datasets for subjects, labels and set data using the rbind function.
4. Merge the columns of the combined subjects, labels and set data using the cbind function to create one data set.
5. Extract the measurements on the mean and standard deviation for each measurement using the %>% and select function.
6. Rename the activities column in the data set with descriptive names by subsetting.
7. Label the dataset with appropriate descriptive variable names using the gsub function.
8. Create a second, independent tidy data set with the mean of each variable for each activity and each subject using the %>%, group_by and summarise_all function.
9. Extract the new tidy data set using the write.table function.




Description of the variables in the tidydata.txt file
-------------------------------------------------------
The tidydata.txt file consists of 180 observations and 88 variables that includes the average of each variable for each activity and each subject. 

* **subject** - subject id
* **activity** - activity performed
* **Time_BodyAccelerometer.mean** - mean time acceleration of the body per direction (X, Y or Z).
* **Time_GravityAccelerometer.mean** - mean time acceleration of the gravity per direction (X, Y or Z).
* **Time_BodyGyroscope.mean** x,y,x
* **Time_BodyGyroscopeJerk.mean** x,y,x
* **Time_BodyAccelerometerMagnitude.mean**
* **Time_GravityAccelerometerMagnitude.mean**
* **Time_BodyAccelerometerJerkMagnitude.mean**
* **Time_BodyGyroscopeMagnitude.mean**
* **Time_BodyGyroscopeJerkMagnitude.mean**
* **Frequency_BodyAccelerometer.mean** x,y,z
* **Time_BodyGyroscope.mean**
* **Time_BodyGyroscope.mean**


Short description of what the variable describes.

Some information on the variable including: - Class of the variable - Unique values/levels of the variable - Unit of measurement (if no unit of measurement list this as well) - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels).

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

#### Notes on variable 1:

If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.)
