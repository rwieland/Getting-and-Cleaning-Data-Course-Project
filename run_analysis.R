# Loads dyplr if not already loaded or installed
if (!require("dplyr")) {
  install.packages("dplyr")
  library(dplyr)
}

rm(list = ls())

# Retieves zipFile if id does not exist in the current directory
zipUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile = "UCI HAR Dataset.zip"
if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile)
}

# Unzips zipFile if it does not exist in the current directory
dataPath = "UCI HAR Dataset"
if (!dir.exists(dataPath)) {
  unzip(zipFile)
}

# Reading feature lables
featureLabels = as.character(read.table("UCI HAR Dataset/features.txt")[,2])

# Defining feature columns to be selected as those containing a mean or standard deviation
selectedColumns = grepl("mean\\()|std", featureLabels)
featureLabels = append(c("subject", "activity"), featureLabels[selectedColumns])

# Merging subjects, activites, means and standard deviations from 
# the test and train datasets into a single dataset
test = read.table("UCI HAR Dataset/test/X_test.txt")[selectedColumns]
testSubjects = read.table("UCI HAR Dataset/test/subject_test.txt")
testActivities = read.table("UCI HAR Dataset/test/Y_test.txt")
test = cbind(testSubjects, testActivities, test)


train = read.table("UCI HAR Dataset/train/X_train.txt")[selectedColumns]
trainSubjects = read.table("UCI HAR Dataset/train/subject_train.txt")
trainActivities = read.table("UCI HAR Dataset/train/Y_train.txt")
train = cbind(trainSubjects, trainActivities, train)

all = rbind(test, train)

# Removing unused datasets
rm(test, testSubjects, testActivities, train, trainSubjects, trainActivities)

# Renaming feature Labels
featureLabels = gsub("\\()", "", featureLabels)
featureLabels = gsub("-", "", featureLabels)
featureLabels = gsub("mean", "Mean", featureLabels)
featureLabels = gsub("std", "StandardDeviation", featureLabels)
featureLabels = gsub("BodyBody", "Body", featureLabels)
featureLabels = gsub("Acc", "Acceleration", featureLabels)
featureLabels = gsub("Mag", "Magnitude", featureLabels)
featureLabels = gsub("^t", "time", featureLabels)
featureLabels = gsub("^f", "frequency", featureLabels)
names(all) = featureLabels

# Sorting dataset by subject and activity
all = arrange(all, subject, activity)

# Replacing activity variable numbers with reformated descriptive lables
activityLabels = as.character(read.table("UCI HAR Dataset/activity_labels.txt")[,2])
activityLabels = tolower(activityLabels)
all$activity = activityLabels[all$activity]

# Creating tidy dataset with
tidy = all %>%
  group_by(subject, activity) %>%
  summarize_all(mean)

summaryLabels = gsub("Mean", "MeanMean", featureLabels)
summaryLabels = gsub("Deviation", "DeviationMean", summaryLabels)
names(tidy) = summaryLabels
  
# Writing tidy dataset to file
write.table(tidy, file = "tidy.txt", quote = FALSE, row.names = FALSE)


