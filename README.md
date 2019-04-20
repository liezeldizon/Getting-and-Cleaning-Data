# Peer-graded Assignment: Getting and Cleaning Data Course Project
*This repo is created in partial fulfillment of the requirements for the Getting and Cleaning Data course under the Data Science program*

This part explains the files included in the repo and how they work together. Specifically, it contains the details on how to perform analysis 
on **Human Activity Recognition Using Smart Phone Data Set**.

One of the most exciting areas in all of data science right now is wearable computing. The data linked from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained. 

[Human Activity Recognition Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Human Activity Recognition Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Files included
* **run_analysis.R** - A script that prepares and cleans the data by doing the following:
   * Merges the training and the test sets to create one data set.
   * Extracts only the measurements on the mean and standard deviation for each measurement.
   * Uses descriptive activity names to name the activities in the data set
   * Appropriately labels the data set with descriptive variable names.
   * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* **codebook.md** - Describes the variables, the data, and any transformations or work performed to clean up the data
* **tidydata.txt** - Contains the tidy data set (the final output)
