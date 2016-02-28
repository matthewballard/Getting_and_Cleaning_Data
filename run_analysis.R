library(plyr)
#Pull down the data set file if it doesn't exist, and unzip it if the unzipped directory doesn't exist
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileDest <- paste( getwd(),"dataset.zip", sep = "/")
fileTest <- file.exists(fileDest)
if(!fileTest) {zipData <- download.file(fileURL, fileDest)}
dirTest <- file.exists(paste( getwd(),"UCI HAR Dataset", sep = "/"))
if(!dirTest) {unzip(fileDest)}

#Step 1: merge the test and training sets into on data set
#1a. read in the data files
dataPath <- file.path(paste( getwd(),"UCI HAR Dataset", sep = "/"))
trainSet <- read.table(file.path(dataPath,"train","X_train.txt"))
trainLabel <- read.table(file.path(dataPath,"train","Y_train.txt"))
trainSubject <- read.table(file.path(dataPath,"train","subject_train.txt"))
testSet <- read.table(file.path(dataPath,"test","X_test.txt"))
testLabel <- read.table(file.path(dataPath,"test","Y_test.txt"))
testSubject <- read.table(file.path(dataPath,"test","subject_test.txt"))
#1b. merge the datasets
dtSubject <- rbind(trainSubject, testSubject)
names(dtSubject) <- "Subject"
dtSet <- rbind(trainSet,testSet)
dtLabel <- rbind(trainLabel, testLabel)[,1]

#Step 2: Extract only the measurements on the mean and standard deviation for each measurement
#2a. read feature table for finding mean and standard deviation for each measurement
dtFeatures <- read.table(file.path(dataPath,"features.txt"))
#2b. filter dataset on only the mean and standard deviation
dtSet <- dtSet[, grep("(mean|std)\\(\\)", dtFeatures[,2])]

#Step 3: Use descriptive activity names to name the activities in the data set
#3a. read the activity names from the appropriate file
dtActivityNames <- read.table(file.path(dataPath,"activity_labels.txt"))
#3b. remove underscores for readability
dtActivityNames <- gsub("_"," ", dtActivityNames[,2])
#3c. merge activity names into the activity label data set
dtLabel <- dtActivityNames[dtLabel]
names(dtLabel) <- "Activity"

#Step 4: Appropriately label the data set with descriptive variable names.
#4a. pull names from the features data set
names(dtSet) <- dtFeatures[grep("mean\\(\\)|std\\(\\)", dtFeatures[,2]),2]
#4b. make the names more human readable
names(dtSet) <- gsub("-mean\\(\\)", "Mean",names(dtSet))
names(dtSet) <- gsub("-std\\(\\)", "StdDev",names(dtSet))
names(dtSet) <- gsub("BodyBody", "Body",names(dtSet))
names(dtSet) <- gsub("^t", "Time-",names(dtSet))
names(dtSet) <- gsub("^f", "Frequency-",names(dtSet))
#4c. pull all the previous steps together into a cleaned data set
dtCleanData <- cbind(Subject = dtSubject, Activity = dtLabel, dtSet)

#Step 5: create a second, independent tidy data set with the average of each variable for each activity and each subject.
#5a. create the final data set using the average of each variable for each user/activity
dtCleanDataMeans <- ddply(dtCleanData, .(Subject, Activity), function(x) {colMeans(dtCleanData[,-c(1,2)])})
#5b. write that data set out to a file
write.table(dtCleanDataMeans, "cleaned_averages_data.txt", row.name=FALSE)
