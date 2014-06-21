##set working directory to same directory as data files.

## Reading file: y_test.txt (Activity ID)
y_test<-read.table("test/y_test.txt",stringsAsFactors=FALSE,header=F);
##Add label
names(y_test)<-"Activity_ID"

## Reading file: x_test.txt (data)
x_test<-read.table("test/x_test.txt",stringsAsFactors=FALSE,header=F);

## Reading file: subject_test.txt (Subject ID)
subject_test<-read.table("test/subject_test.txt",stringsAsFactors=FALSE,sep="",header=F);
## Add label
names(subject_test)<-"subject"

## Reading file: y_train.txt (Activity ID)
y_train<-read.table("train/y_train.txt",stringsAsFactors=FALSE,header=F);
## Add label
names(y_train)<-"Activity_ID"

## Reading file: x_train.txt (data)
x_train<-read.table("train/x_train.txt",stringsAsFactors=FALSE,header=F,sep="");

## Reading file: subject_train.txt (Subject ID)
subject_train<-read.table("train/subject_train.txt",stringsAsFactors=FALSE,header=F);
## Add label
names(subject_train)<-"subject"

## Reading file: features.txt(column labels for data)
features<-read.table("features.txt",stringsAsFactors=FALSE,header=F);

##Add column labels to test and train data
names(x_test)<-features$V2;
names(x_train)<-features$V2;

##Merge test data, activity ID and subject ID
test_data<-cbind(y_test,subject_test,x_test);

##merging train data, activity ID and subject ID
train_data<-cbind(y_train,subject_train,x_train);

## Reading file: activity_labels.txt (Activity names)
activity_labels<-read.table("activity_labels.txt",stringsAsFactors=FALSE,header=F);
##Add column names "Activity_ID" and "Activity_Name"
names(activity_labels)<-c("Activity_ID","Activity_Name")

##Merge test data and activity names
test_data<-merge(activity_labels,test_data);

##Merge training data and activity names
train_data<-merge(activity_labels,train_data);

##Merge test and training data
data<-rbind(test_data,train_data);

##Find columns with "mean()" or "std()" in column names
meanstd<-sort(c(c(1:3),grep("mean()",names(data),fixed=T),grep("std()",names(data),fixed=T)))

##Extracting columns with "mean()" or "std()" in column names
data<-data[,meanstd];

##calculate mean of each variable by subject and activity
meanstddata<-aggregate(data[,4:69],by=list(data$Activity_ID,data$subject),FUN=mean)
names(meanstddata)[1:2]<-c("Activity_ID","subject")
##Add column with activity name
meanstddata<-merge(activity_labels,meanstddata);

##Order data by Acticity and subject
meanstddata<-meanstddata[order(meanstddata$Activity_ID,meanstddata$subject),]

##Writes data to "data.txt"
write.table(meanstddata, "data.txt", sep="\t") 