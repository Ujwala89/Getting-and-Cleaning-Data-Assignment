library(tools)
library(data.table)
library(dplyr)

### Download and unzip the files from the given url ###

if(!file.exists("./data")){
  print("creating data directoy in home directory")
  dir.create("./data")
}

### delete zip file from the directory if exists ###

if(file.exists("./data/wk4data.zip")) {
  filenm <- file_path_as_absolute("./data/wk4data.zip")
  if (file.remove(filenm)) {
     print(c("deleting existing zip file from the directory: file name=",filenm))
  } else {
    stop("Error deleting existing zip file")
  }
}

fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"         #url to the input dataset


print("downloading the assignment dataset as wk4data.zip")
download.file(fileUrl,destfile="./data/wk4data.zip")
  
print("unzipping the files in a folder under data directory")
unzip("./data/wk4data.zip",exdir="./data",overwrite = TRUE)

print("### completed downloading and unzipping the files   ###")

###Part #1: Merges the training and the test sets to create one data set.  ###

# Read various data files required for the analysis
activity <- read.table("c:./data/UCI HAr Dataset/activity_labels.txt")      #read activity labels (dimension 6X1)

features <- read.table("c:./data/UCI HAr Dataset/features.txt")             #read features (dimension 561 X 2)

sub_train <- read.table("c:./data/UCI HAr Dataset/train/subject_train.txt") #read subject ids in the training set (dim: 7352X1)
y_train <- read.table("c:./data/UCI HAr Dataset/train/Y_train.txt")         #read activity ids in training set (dim:7352X1)
x_train <- read.table("c:./data/UCI HAr Dataset/train/X_train.txt")         #read feature measurements in training set (dim: 7352X561)

sub_test <- read.table("c:./data/UCI HAr Dataset/test/subject_test.txt")    #read subject ids in the test set (dim: 2947X1)
y_test <- read.table("c:./data/UCI HAr Dataset/test/Y_test.txt")            #read activity ids in test set (dim:2947X1)      
x_test <- read.table("c:./data/UCI HAr Dataset/test/X_test.txt")            #read feature measurements in test set   (dim: 2947X561)

training_data <- cbind(sub_train, y_train,x_train)                          #combine subject, activity & measurements from training data (dim:7352X563)
test_data <- cbind(sub_test, y_test,x_test)                                 #combine subject, activity & measurements from test data (dim:2947X563)

alldata <- rbind(training_data,test_data)                                   #merge training and test observations into one dataset

features_t <- t(features)                                                   #transposed the featires data to create header row
header_t <- cbind("subjectid","activityid",features_t)                      #append subject id and activity id columns
header <- header_t[2,]                                                      #select 2nd row of the data, this contains all the column headings for merged data
colnames(alldata) <- header                                                 #Assign header to the merged data, This completes part 1 of the assignment 

print("### Completed Part 1 of the assignment to create a merged dataset with required data files  ###")

### Part 2: Extracts only the measurements on the mean and standard deviation for each measurement. ###

hdr_std <- grep("std()",features_t,value=TRUE)                              #extract variables with text std() in it from features dataset
hdr_mean <- grep("mean",features_t,value=TRUE)                              #extract variables with text mean in it from features dataset
hdr_alldata <- c("subjectid","activityid",hdr_mean,hdr_std)                 #Create a header row with subjectid & activityid and rest of the names extracted above

extract_temp <- alldata[hdr_alldata]                                        #extract mead & std variables from merged dataset, along with subjectid & activity id

print("### Completed Part 2 of the assignment to extract only the measurements on the mean and standard deviation for each measurement.###")


### Part 3: Uses descriptive activity names to name the activities in the data set. ### 

extract <- merge(activity,extract_temp,by.x="V1",by.y="activityid",all=FALSE)     

print("### Completed Part 3 of the assignment to add descriptive activity names to the activities in the data set. ###")

### Part 4: Appropriately labels the data set with descriptive variable names. ### 
colnames(extract)[1] <- "activityid"                         
colnames(extract)[2] <- "activityname"

print("### Completed Part 4 of the assignment to appropriately label the data set with descriptive variable names. ###")

### Part 5: From the data set in step 4, creates a second, independent tidy data set with the average of    ###
###         each variable for each activity and each subject..                                              ### 

exttbl <- data.table(extract)
summary_data_temp <- exttbl[, lapply(.SD,mean), by=c("activityname","subjectid")]
summary_data <- arrange(summary_data_temp,activityid,subjectid)                       #summary contains 180 observations & 82 variables# 

print("### Completed Part 5 of the assignment to create a second tidy dataset with averages for each activity and each subject, final dataset name summary_data ###")

write.table(summary_data,file="./data/summary_data.txt",row.name=FALSE)

print("Completed writing data in the data directory")