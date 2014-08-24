##Getting and Cleaning Data Course Project

It is assumed that all of the files are located under a subdirectory 'UCI HAR Dataset' of the working directory.

The file run_analysis.R in this repo is used to fulfil the requirements of the course project. It first uses read.table to load the data files and the activity and subject labels for each of the training and test sets. Then using cbind these columns are stitched together along with a cohort constant to identifywhich group the subject is in. The two sets are then combined with rbind to create 'full_data'

The columns of full_data and activity_labels are then labelled with the names function using the values in features.txt and appropriate values for the activity/subject columns. The required mean and std columns are identified using grep and full_data is subsetted to only pick out those columns.

These two sets are then merged - this is on activityid though the column isn't specified asthe defult options are sufficient having carefully named the columns.

Finally the aggregate function is used to take the mean of each of the columns grouping by subject and activityname (and also by cohort though this is for convenience to stop the factors for 'test' and 'train' being averaged. This data is written to a file aggregates.txt in the working directory.
