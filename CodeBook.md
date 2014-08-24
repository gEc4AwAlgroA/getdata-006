##Code Book

With reference to:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Variables present:
````
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
```
These are in time and frequency domain - the initial t and f. And in almost all cases are represented by x,y,z directional component values as well as a magnitude value.
Readings are from the accelerometer and gyroscope and have been processed as described at the above link.

The processing done as part of this project has selected only the mean and standard deviation of these variables.
The aggregates file that is included in the submission is further condensed by providing the mean by subject and activity.

There are no units. All features are normalized and bounded within [-1,1].

