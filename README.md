# Getting and cleaning accelerometers data from the Samsung Galaxy S smartphone
Getting and Cleaning Data Assignment 
### Introduction

The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. The data used for this project 
represent data collected from the accelerometers of the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The data used for this project is at the website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project creates a R script called run_analysis.R that does the following:

1.  Downloads and unzips the data provided at the above URL
2.  Merges the training and the test sets to create one data set.
3.  Extracts only the measurements on the mean and standard deviation for each measurement.
4.  Uses descriptive activity names to name the activities in the data set
5.  Appropriately labels the data set with descriptive variable names.
6.  From the data set in step 4, creates a second, independent tidy data set with the average
    of each variable for each activity and each subject.

##  The script is described in 6 sections (initialization and Parth 1 thru Part 5):

### Initialization: Get the data

The script will do the following:
	1. Load necessary packages for the functions used in the script.
	2. Check for existence of 'data' directory in the home directory and create it if it doesnt exist,
	3. Check for existence of the 'wk4data.zip' fileand delete it if it exists 
		Note: The script will abort if it has problem deleting the file. 
		Please try running the script again if you encounter this issue.
	4. Next download the file and store it as wk4data.zip in the data directory in the home directory.
	5. Next unzip the wk4data.zip file to create a folder "UCI HAR Dataset" under the data directory.

###Part #1: Merges the training and the test sets to create one data set. 

    1. Read various data files required for the analysis and merge them using the folloing format:
	
				"subjectid"			"activityid"   features.txt
				subject_train.txt   y_train.txt	   x_train.txt
				subject_test.txt	y_test.txt	   x_test.txt

	2. The merged file is in an object 'alldata'. It is a dataframe with 10299 observations of 563 variables.
	
	
### Part 2: Extracts only the measurements on the mean and standard deviation for each measurement. ###

	1. Extract the names containing mean or std() in the features dataset.
	2. Append "subjectid" and "activityid" to teh extracted variables.The resulting vector represens the columns needed from the alldata object
	3. Using is vector, and the subset operation, extract the columns needed from alldata. This data is in the object 'extract_temp'. This contains 10299 observations of 81 variables.

### Part 3: Uses descriptive activity names to name the activities in the data set. ### 

	1. There are 6 activities. 'activity' object created in part 1 contains description for each activity.
	2. Usinng merge command, merged 'activity' and 'extract_temp' to get description for each activity in the 
	resulting object.
	
### Part 4: Appropriately labels the data set with descriptive variable names. ### 

	1. Replace the column names V1 & V2 with activityid and activityname 
    2. The extract object represents all the data required for further analysis.
		
### Part 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

	1. Summarize the data by getting average of all variables by activity and subject.
	2. Summary object is 'summary_data'. It contains 180 observations & 82 variables.

### Finalize: Write this data 

	1. Using write.table command, creates a 'summary_data.txt' file in the 'data' folder under home directory.

   
   
   
   
   
   
The project includes You will be required to submit: 1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, 
and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts.
This repo explains how all of the scripts work and how they are connected.

This second programming assignment will require you to write an R
function that is able to cache potentially time-consuming computations.
For example, taking the mean of a numeric vector is typically a fast
operation. However, for a very long vector, it may take too long to
compute the mean, especially if it has to be computed repeatedly (e.g.
in a loop). If the contents of a vector are not changing, it may make
sense to cache the value of the mean so that when we need it again, it
can be looked up in the cache rather than recomputed. In this
Programming Assignment you will take advantage of the scoping rules of
the R language and how they can be manipulated to preserve state inside
of an R object.

### Example: Caching the Mean of a Vector

In this example we introduce the `<<-` operator which can be used to
assign a value to an object in an environment that is different from the
current environment. Below are two functions that are used to create a
special object that stores a numeric vector and caches its mean.

The first function, `makeVector` creates a special "vector", which is
really a list containing a function to

1.  set the value of the vector
2.  get the value of the vector
3.  set the value of the mean
4.  get the value of the mean

<!-- -->

    makeVector <- function(x = numeric()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setmean <- function(mean) m <<- mean
            getmean <- function() m
            list(set = set, get = get,
                 setmean = setmean,
                 getmean = getmean)
    }

The following function calculates the mean of the special "vector"
created with the above function. However, it first checks to see if the
mean has already been calculated. If so, it `get`s the mean from the
cache and skips the computation. Otherwise, it calculates the mean of
the data and sets the value of the mean in the cache via the `setmean`
function.

    cachemean <- function(x, ...) {
            m <- x$getmean()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- mean(data, ...)
            x$setmean(m)
            m
    }

### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly (there are also alternatives to matrix inversion that we will
not discuss here). Your assignment is to write a pair of functions that
cache the inverse of a matrix.

Write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, assume that the matrix supplied is always
invertible.

In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

### Grading

This assignment will be graded via peer assessment.
