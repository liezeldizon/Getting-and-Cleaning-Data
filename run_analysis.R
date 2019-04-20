library (dplyr)

# Downloading necessary files
f <- "Dataset.zip"
if (!file.exists(f)) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, f, method="curl")
}  

if (!file.exists("UCI HAR Dataset")) { 
  unzip(f) 
}

# Loading features
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))

# Loading activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# Loading and merging subjects
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
subject <- rbind(subject_train, subject_test)

# Loading and merging set data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
set <- rbind(x_train, x_test)

# Loading and merging labels
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
labels <- rbind(y_train, y_test)

# Merging into one data set
mergedData <- cbind(subject, labels, set)

# Extracting mean and standard deviation
filteredData <- mergedData %>% select(subject,activity,contains("mean"),contains("std"))

# Naming activities in the data set
filteredData$activity <- activities[filteredData$activity,2]

# Labelling the data set with descriptive variable names
rename <- names(filteredData)
rename <- gsub("^t", "Time_", rename)
rename <- gsub("^f", "Frequency_", rename)
rename <- gsub("Acc", "Accelerometer", rename)
rename <- gsub("Gyro", "Gyroscope", rename)
rename <- gsub("Mag", "Magnitude", rename)
rename <- gsub("-mean-", "_Mean_", rename)
rename <- gsub("-std-", "_StandardDeviation_", rename)
rename <- gsub("-", "_", rename)
rename <- gsub("[(][)]", "", rename)
names(filteredData) <- rename

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject
tidyData <- filteredData %>% group_by(subject,activity) %>% summarise_all(funs(mean))
write.table(tidyData,"tidyData.txt",row.names = FALSE)

knit("makeCodebook.Rmd", output = "codebook.md", encoding = "ISO8859-1", quiet = TRUE)
