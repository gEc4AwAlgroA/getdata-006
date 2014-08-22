#read test set data
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
test<-cbind(X_test,y_test,subject_test, cohort="test")

#read training set data
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
train<-cbind(X_train,y_train,subject_train, cohort="train")

#combine the sets
full_data<-rbind(test,train)

#name the features and activityid, subject and cohort columns
features<-read.table("UCI HAR Dataset/features.txt", colClasses = "character")
names(full_data)<-append(features$V2, c("activityid","subject","cohort"))
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt", colClasses = "character")
names(activity_labels)<-c("activityid","activityname")

#extract only mean and std cols and activity, subject, cohort cols
meanstd_data<-full_data[,grep("mean\\(\\)|std\\(\\)|activityid|subject|cohort", names(full_data))]
#merge with activity_labels - column naming negates need for further parameters
withactname_data<-merge(meanstd_data, activity_labels)

#create aggregate df by subject, activityname and write file
aggs<-aggregate(. ~ cohort + subject + activityname, data=withactname_data, FUN="mean")
write.table(aggs, "aggregates.txt", row.names=FALSE)