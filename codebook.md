Original data set \- [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## The modified dataset was produced using the following files:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- ‘test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Modifications

- The test and training sets were reintegrated 
- Activity names and feature names were added in place of numeric labels
- Activity names and feature names were edited for human readability
- Data set was limited to only the measures on the mean and standard deviation for each measurement captured
- Data set was processed to provide the average value of each feature per activity per subject

## Variables included
 
Variable | Type | Definition
--- | --- |---
Subject | Numeric | id of subject
Activity | String |Activity Description
__Features (listed below)__ | __Numeric__ | __Average of mean or standard deviation of acceleration (x, y, and z axes) from the accelerometer and estimated body acceleration__
Time\-BodyAccMean\-X | | |
Time-BodyAccMean-Y | | |
Time-BodyAccMean-Z | | |
Time-BodyAccStdDev-X | | |  
Time-BodyAccStdDev-Y | | |
Time-BodyAccStdDev-Z | | |
Time-GravityAccMean-X | | |
Time-GravityAccMean-Y | | |
Time-GravityAccMean-Z | | |
Time-GravityAccStdDev-X | | | 
Time-GravityAccStdDev-Y | | |
Time-BodyAccJerkMean-X | | |
Time-BodyAccJerkMean-Y | | |
Time-BodyAccJerkMean-Z | | |
Time-BodyAccJerkStdDev-X | | | 
Time-BodyAccJerkStdDev-Y | | |
Time-BodyAccJerkStdDev-Z | | |
Time-BodyGyroMean-X | | |
Time-BodyGyroMean-Y | | |
Time-BodyGyroMean-Z | | |
Time-BodyGyroStdDev-X | | | 
Time-BodyGyroStdDev-Y | | |
Time-BodyGyroStdDev-Z | | |
Time-BodyGyroJerkMean-X | | | 
Time-BodyGyroJerkMean-Y | | |
Time-BodyGyroJerkMean-Z | | |
Time-BodyGyroJerkStdDev-X | | |
Time-BodyGyroJerkStdDev-Y | | |
Time-BodyGyroJerkStdDev-Z | | |
Time-BodyAccMagMean | | |
Time-BodyAccMagStdDev | | |
Time-GravityAccMagMean | | |
Time-GravityAccMagStdDev | | |
Time-BodyAccJerkMagMean | | |
Time-BodyAccJerkMagStdDev | | |
Time-BodyGyroMagMean | | |
Time-BodyGyroMagStdDev | | |
Time-BodyGyroJerkMagMean | | |
Time-BodyGyroJerkMagStdDev | | |
Frequency-BodyAccMean-X | | |
Frequency-BodyAccMean-Y | | |
Frequency-BodyAccMean-Z | | |
Frequency-BodyAccStdDev-X | | |
Frequency-BodyAccStdDev-Y | | |
Frequency-BodyAccStdDev-Z | | |
Frequency-BodyAccJerkMean-X | | |
Frequency-BodyAccJerkMean-Y | | |
Frequency-BodyAccJerkMean-Z | | |
Frequency-BodyAccJerkStdDev-X | | |
Frequency-BodyAccJerkStdDev-Y | | |
Frequency-BodyAccJerkStdDev-Z | | |
Frequency-BodyGyroMean-X | | |
Frequency-BodyGyroMean-Y | | |
Frequency-BodyGyroMean-Z | | |
Frequency-BodyGyroStdDev-X | | |
Frequency-BodyGyroStdDev-Y | | |
Frequency-BodyGyroStdDev-Z | | |
Frequency-BodyAccMagMean | | |
Frequency-BodyAccMagStdDev | | |
Frequency-BodyAccJerkMagMean | | |
Frequency-BodyAccJerkMagStdDev | | |
Frequency-BodyGyroMagMean | | |
Frequency-BodyGyroMagStdDev | | |
Frequency-BodyGyroJerkMagMean | | |
Frequency-BodyGyroJerkMagStdDev| | |

