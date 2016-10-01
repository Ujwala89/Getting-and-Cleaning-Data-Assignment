# Getting and cleaning accelerometers data from the Samsung Galaxy S smartphone 

### Introduction

The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. The data used for this project 
represent data collected from the accelerometers of the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The data used for this project is at the website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#### This project creates a R script called run_analysis.R that does the following:

1.  Downloads and unzips the data provided at the above URL
2.  Merges the training and the test sets to create one data set.
3.  Extracts only the measurements on the mean and standard deviation for each measurement.
4.  Uses descriptive activity names to name the activities in the data set
5.  Appropriately labels the data set with descriptive variable names.
6.  From the data set in step 4, creates a second, independent tidy data set with the average
    of each variable for each activity and each subject.

#### The script is described in 7 sections:

	`	1. Initialization
		2. Part #1 thru Part #5
		3. Finalize
		
### Initialization: Get the data

The script will do the following:
	1. Load necessary packages for the functions used in the script.
	2. Check for existence of 'data' directory in the home directory and create it if it doesnt exist,
	3. Check for existence of the 'wk4data.zip' fileand delete it if it exists 
		Note: The script will abort if it has problem deleting the file. 
		Please try running the script again if you encounter this issue.
	4. Next download the file and store it as wk4data.zip in the data directory in the home directory.
	5. Next unzip the wk4data.zip file to create a folder "UCI HAR Dataset" under the data directory.

### Part #1: Merges the training and the test sets to create one data set. 

    1. Read various data files required for the analysis and merge them using the folloing format:
	
				"subjectid"			"activityid"   features.txt
				subject_train.txt   y_train.txt	   x_train.txt
				subject_test.txt	y_test.txt	   x_test.txt

	2. The merged file is in an object 'alldata'. It is a dataframe with 10299 observations of 563 variables.
	
	
### Part 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

	1. Extract the names containing mean or std() in the features dataset.
	2. Append "subjectid" and "activityid" to teh extracted variables.The resulting vector represents 
	   the columns needed from the alldata object
	3. Using is vector, and the subset operation, extract the columns needed from alldata. 
	   This data is in the object 'extract_temp'. This contains 10299 observations of 81 variables.

### Part 3: Uses descriptive activity names to name the activities in the data set.

	1. There are 6 activities. 'activity' object created in part 1 contains description for each activity.
	2. Usinng merge command, merged 'activity' and 'extract_temp' to get description for each activity in the 
	resulting object.
	
### Part 4: Appropriately labels the data set with descriptive variable names. 

	1. Replace the column names V1 & V2 with activityid and activityname 
    2. The extract object represents all the data required for further analysis.
		
### Part 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

	1. Summarize the data by getting average of all variables by activity and subject.
	2. Summary object is 'summary_data'. It contains 180 observations & 82 variables.

### Finalize: Create a text file using summary_data 

	1. Using write.table command, creates a 'summary_data.txt' file in the 'data' folder under home directory.

    
   