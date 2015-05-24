##run_analysis.R
##
##
library(data.table)

## Check whether the zip file exists in the working directory:
## If it does not exist, unzip it and proceed
## If it exists do nothing and proceed (assuming that the zip file has already been downloaded and unzipped)
## The zip file will be downloaded and unzipped just once, which will improve the performance

if(!file.exists("getdata_projectfiles_UCI_HAR_Dataset.zip")){
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "getdata_projectfiles_UCI_HAR_Dataset.zip")
    unzip("getdata_projectfiles_UCI_HAR_Dataset.zip")
}

## Create the activity labels dataset with the "Label" (numeric id) and "Activity" (activity name) columns
DS_ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE,stringsAsFactors=FALSE, col.names=c("Label","Activity"))

## Create the features datasets (number and name) and the features name array (only the name)
DS_features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE,colClasses="character",stringsAsFactors=FALSE)
## Create the features name dataset (only the name)
DS_features <- DS_features[,2]

## Create the test dataset and training dataset, and apply the features names to the header columns
DS_TestData <- read.table("./UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE,check.names=FALSE, col.names=DS_features,stringsAsFactors=FALSE)
DS_TrainData <- read.table("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE,check.names=FALSE,col.names=DS_features,stringsAsFactors=FALSE)


## Create the subject test dataset and subject training dataset, with the "Subject" column
DS_TestDataSub <- read.table("./UCI HAR Dataset/test/subject_test.txt",sep="",header=FALSE,col.names=c("Subject"))
DS_TrainDataSub <- read.table("./UCI HAR Dataset/train/subject_train.txt",sep="",header=FALSE,col.names=c("Subject"))

## Create the activity test dataset and activity training dataset, with the "Label" (numeric id) column 
DS_TestDataAct <- read.table("./UCI HAR Dataset/test/y_test.txt",sep="",col.names=c("Label"),header=FALSE)
DS_TrainDataAct <- read.table("./UCI HAR Dataset/train/y_train.txt",sep="",col.names=c("Label"), header=FALSE)

##Sets descriptive activity names to activities in the dataset, with an "Activity" (activity name) column
DS_TestDataAct$Label <- factor(DS_TestDataAct$Label,levels=DS_ActivityLabels$Label,labels=DS_ActivityLabels$Activity)
DS_TrainDataAct$Label <- factor(DS_TrainDataAct$Label,levels=DS_ActivityLabels$Label,labels=DS_ActivityLabels$Activity)
colnames(DS_TestDataAct) <- "Activity"
colnames(DS_TrainDataAct) <- "Activity"

## Create a new test and training datasets, only with the mean and standard deviation measurements
## According to features_info.txt the variables with mean and standard deviation measurements are those with mean() and std()
DS_NTestData <- DS_TestData[,grep("mean\\(\\)|std\\(\\)", tolower(names(DS_TestData)))]
DS_NTrainData <- DS_TrainData[,grep("mean\\(\\)|std\\(\\)", tolower(names(DS_TrainData)))]

## Append the subjects and activites to the test and training datasets (2 more columns)
DS_NTestData <-cbind(DS_NTestData, DS_TestDataSub, DS_TestDataAct)
DS_NTrainData <-cbind(DS_NTrainData, DS_TrainDataSub, DS_TrainDataAct)

## Create a final dataset with the test and training datasets
## Columns names are 'simplified' by removing "()" and replacing "-" by "_"
DS_AllData<-rbind(DS_NTestData, DS_NTrainData)
colnames(DS_AllData) <- gsub("[()]","",colnames(DS_AllData))
colnames(DS_AllData) <- gsub("[-]","_",colnames(DS_AllData))

DT_AllData <- data.table(DS_AllData)

##Creates the final independent tidy dataset with the average of each variable for each activity and each subject
DT_tidy <- DT_AllData[, lapply(.SD, mean, na.rm=TRUE), by=.(Subject, Activity) ][order(Subject, Activity)]

write.table(DT_tidy,file="tidy0.txt",sep=",",row.names = FALSE)


