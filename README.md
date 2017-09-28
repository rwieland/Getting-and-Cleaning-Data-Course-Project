# Getting and Cleaning Data Course Project

This repository contains the course project for the Getting and Cleaning Data course on Coursera. The purpose of this project was to collect, work with, and clean a source dataset and prepare a tidy data set that can be used for later analysis. The original data set is sourced from the UCI Machine Learning Repository [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

This repository contains the following files:

- `run_analysis.R`, the script used to transform the source data set.
- `tidy.txt`, the output data set of `run_analysis.R` in a space delimited format.
- `CodeBook.md`, a description of the variables, data, and transformations done to the source data set.
- `README.md`, this file, providing of a summary of the repository.

A summary of the actions performed by `run_analysis.R`:

1. Downloads the source data set if it is not in the working directory.
2. Merges the training and test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activites in the data set.
5. Labels the data set with descriptive variable names.
6. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
