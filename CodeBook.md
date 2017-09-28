# Code Book
Data from the UCI Machine Learning Repository [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) describes accelerometer and gyroscope measurements from a phone from 30 subjects performing various activities. Multiple measurements for each subject and each activity were collected. The mean and standard deviation for each measurement was extracted, averaged by subject and activity, and combined into the data set found in `tidy.txt`.

## Data
The collection and analysis of the original data set is described below.
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Variables
Variables were produced in the original data set as described below
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> - tBodyAcc-XYZ
> - tGravityAcc-XYZ
> - tBodyAccJerk-XYZ
> - tBodyGyro-XYZ
> - tBodyGyroJerk-XYZ
> - tBodyAccMag
> - tGravityAccMag
> - tBodyAccJerkMag
> - tBodyGyroMag
> - tBodyGyroJerkMag
> - fBodyAcc-XYZ
> - fBodyAccJerk-XYZ
> - fBodyGyro-XYZ
> - fBodyAccMag
> - fBodyAccJerkMag
> - fBodyGyroMag
> - fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
> - mean(): Mean value
> - std(): Standard deviation
> - mad(): Median absolute deviation 
> - max(): Largest value in array
> - min(): Smallest value in array
> - sma(): Signal magnitude area
> - energy(): Energy measure. Sum of the squares divided by the number of values. 
> - iqr(): Interquartile range 
> - entropy(): Signal entropy
> - arCoeff(): Autorregresion coefficients with Burg order equal to 4
> - correlation(): correlation coefficient between two signals
> - maxInds(): index of the frequency component with largest magnitude
> - meanFreq(): Weighted average of the frequency components to obtain a mean frequency
> - skewness(): skewness of the frequency domain signal 
> - kurtosis(): kurtosis of the frequency domain signal 
> - bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
> - angle(): Angle between to vectors.

The subset of variables described as mean() or std() from the above described variables were selected for inclusion in the final tidy data set. The mean of these variables across all measurements for each subject and each activity was taken. Variables were renamed as described in the transformations section. The variables found in the output data set in `tidy.txt` are as follows:

 [1] "subject" 
 - (1-30 for each subject in the experiment)
 
 [2] "activity"
 - walking
 - walking_upstairs
 - walking_downstairs
 - sitting
 - standing
 - laying
 
 Each of the following is normalized and bounded between [-1, 1]
 
 [3] "timeBodyAccelerationMeanMeanX"                              
 [4] "timeBodyAccelerationMeanMeanY"                              
 [5] "timeBodyAccelerationMeanMeanZ"                              
 [6] "timeBodyAccelerationStandardDeviationMeanX"                 
 [7] "timeBodyAccelerationStandardDeviationMeanY"                 
 [8] "timeBodyAccelerationStandardDeviationMeanZ"                 
 [9] "timeGravityAccelerationMeanMeanX"                           
[10] "timeGravityAccelerationMeanMeanY"                           
[11] "timeGravityAccelerationMeanMeanZ"                           
[12] "timeGravityAccelerationStandardDeviationMeanX"              
[13] "timeGravityAccelerationStandardDeviationMeanY"              
[14] "timeGravityAccelerationStandardDeviationMeanZ"              
[15] "timeBodyAccelerationJerkMeanMeanX"                          
[16] "timeBodyAccelerationJerkMeanMeanY"                          
[17] "timeBodyAccelerationJerkMeanMeanZ"                          
[18] "timeBodyAccelerationJerkStandardDeviationMeanX"             
[19] "timeBodyAccelerationJerkStandardDeviationMeanY"             
[20] "timeBodyAccelerationJerkStandardDeviationMeanZ"             
[21] "timeBodyGyroMeanMeanX"                                      
[22] "timeBodyGyroMeanMeanY"                                      
[23] "timeBodyGyroMeanMeanZ"                                      
[24] "timeBodyGyroStandardDeviationMeanX"                         
[25] "timeBodyGyroStandardDeviationMeanY"                         
[26] "timeBodyGyroStandardDeviationMeanZ"                         
[27] "timeBodyGyroJerkMeanMeanX"                                  
[28] "timeBodyGyroJerkMeanMeanY"                                  
[29] "timeBodyGyroJerkMeanMeanZ"                                  
[30] "timeBodyGyroJerkStandardDeviationMeanX"                     
[31] "timeBodyGyroJerkStandardDeviationMeanY"                     
[32] "timeBodyGyroJerkStandardDeviationMeanZ"                     
[33] "timeBodyAccelerationMagnitudeMeanMean"                      
[34] "timeBodyAccelerationMagnitudeStandardDeviationMean"         
[35] "timeGravityAccelerationMagnitudeMeanMean"                   
[36] "timeGravityAccelerationMagnitudeStandardDeviationMean"      
[37] "timeBodyAccelerationJerkMagnitudeMeanMean"                  
[38] "timeBodyAccelerationJerkMagnitudeStandardDeviationMean"     
[39] "timeBodyGyroMagnitudeMeanMean"                              
[40] "timeBodyGyroMagnitudeStandardDeviationMean"                 
[41] "timeBodyGyroJerkMagnitudeMeanMean"                          
[42] "timeBodyGyroJerkMagnitudeStandardDeviationMean"             
[43] "frequencyBodyAccelerationMeanMeanX"                         
[44] "frequencyBodyAccelerationMeanMeanY"                         
[45] "frequencyBodyAccelerationMeanMeanZ"                         
[46] "frequencyBodyAccelerationStandardDeviationMeanX"            
[47] "frequencyBodyAccelerationStandardDeviationMeanY"            
[48] "frequencyBodyAccelerationStandardDeviationMeanZ"            
[49] "frequencyBodyAccelerationJerkMeanMeanX"                     
[50] "frequencyBodyAccelerationJerkMeanMeanY"                     
[51] "frequencyBodyAccelerationJerkMeanMeanZ"                     
[52] "frequencyBodyAccelerationJerkStandardDeviationMeanX"        
[53] "frequencyBodyAccelerationJerkStandardDeviationMeanY"        
[54] "frequencyBodyAccelerationJerkStandardDeviationMeanZ"        
[55] "frequencyBodyGyroMeanMeanX"                                 
[56] "frequencyBodyGyroMeanMeanY"                                 
[57] "frequencyBodyGyroMeanMeanZ"                                 
[58] "frequencyBodyGyroStandardDeviationMeanX"                    
[59] "frequencyBodyGyroStandardDeviationMeanY"                    
[60] "frequencyBodyGyroStandardDeviationMeanZ"                    
[61] "frequencyBodyAccelerationMagnitudeMeanMean"                 
[62] "frequencyBodyAccelerationMagnitudeStandardDeviationMean"    
[63] "frequencyBodyAccelerationJerkMagnitudeMeanMean"             
[64] "frequencyBodyAccelerationJerkMagnitudeStandardDeviationMean"
[65] "frequencyBodyGyroMagnitudeMeanMean"                         
[66] "frequencyBodyGyroMagnitudeStandardDeviationMean"            
[67] "frequencyBodyGyroJerkMagnitudeMeanMean"                     
[68] "frequencyBodyGyroJerkMagnitudeStandardDeviationMean"

## Transformations
### Subsetting the original data set
1. Data from the columns for mean() and std() variables in test and train data sets was extracted from the original text files
2. Subject and activity data were added to the extracted data sets
3. Extracted data sets were merged into a single data set

### Renaming variables
1. Original numerical activity variables were substituted with descriptive activity variables 
 - walking for 1
 - walking_upstairs for 2
 - walking_downstairs for 3
 - sitting for 4
 - standing for 5
 - laying for 6
 
 2. Variable names were renamed according to the following rules
 - '()' and '-' were removed
 - 'mean' was replaced with 'Mean'
 - 'std' was replaced with 'StandardDeviation'
 - 'Acc' was replaced with 'Acceleration'
 - 'Mag' was replaced with 'Magnitude'
 - 't' at the begining of variable names was replaced with 'time'
 - 'f' at the begining of variable names was replaced with 'frequency'
 - The typo 'BodyBody' was replaced with 'Body'
 
 3. In the final data set 'Mean' and 'StandardDeviation' were respectively replaced with 'MeanMean' and 'StandardDeviationMean' to indicate that the variables are means across multiple measurements
 
### Summarizing Data
1. The combined data set was grouped by subject id and activity
2. The mean of each variable in each group was taken and put into an independent tidy data set
3. The new data set was exported into the file `tidy.txt`
