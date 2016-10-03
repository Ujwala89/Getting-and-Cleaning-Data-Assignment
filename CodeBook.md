# Code Book: Getting and cleaning accelerometers data from the Samsung Galaxy S smartphone 

##About Feature selection:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then 
separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz:

			tBodyAcc-XYZ 
			tGravityAcc-XYZ

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals:

			tBodyAccJerk-XYZ 
			tBodyGyroJerk-XYZ

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm:

			tBodyAccMag
			tGravityAccMag
			tBodyAccJerkMag
			tBodyGyroMag
			tBodyGyroJerkMag 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals (prefix 't' to denote time):

			fBodyAcc-XYZ
			fBodyAccJerk-XYZ
			fBodyGyro-XYZ
			fBodyAccJerkMag
			fBodyGyroMag
			fBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern. '-XYZ' is used to denote 3-axial signals in the X, Y and Z 
directions:

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

The extracted data for this assignment includes mean and standard deviation variables estimated from these signals.
The data dictionary below explains the data included in the final "summary_data" submitted for final evaluation.

#												DATA DICTIONARY - Samsung Galaxy S smartphone accelerometers data

1. activityname
		Name of the activity uniquely represented ny activityid
			1. WALKING
			2. WALKING_UPSTAIRS
			3. WALKING_DOWNSTAIRS
			4. SITTING
			5. STANDING
			6. LAYING
			Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...
			
2. subjectid	
		identifies each of the 30 participants in the Human activity tracking
		int  1 2 3 4 5 6 7 8 9 10 ...30
		
3. activityid
		identifies each of the 6 activities
		number 1 thru 6 
		num  1 1 1 1 1 1 1 1 1 1 ...
		
##Variables 4 thru 82 represent the mean and standard deviation measurements extracted and summarized using mean from the original source data:

		4.timeBodyAcc-Mean-X          : num  0.277 0.276 0.276 0.279 0.278 ...
		5.timeBodyAcc-Mean-Y          : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...
		6.timeBodyAcc-Mean-Z          : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...
		7.timeGravityAcc-Mean-X       : num  0.935 0.913 0.937 0.964 0.973 ...
		8.timeGravityAcc-Mean-Y       : num  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...
		9.timeGravityAcc-Mean-Z       : num  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...
	   10.timeBodyAccJerk-Mean-X      : num  0.074 0.0618 0.0815 0.0784 0.0846 ...
	   11.timeBodyAccJerk-Mean-Y      : num  0.02827 0.01825 0.01006 0.00296 -0.01632 ...
	   12.timeBodyAccJerk-Mean-Z      : num  -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ...
	   13.timeBodyGyro-Mean-X         : num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
	   14.timeBodyGyro-Mean-Y         : num  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
 $ timeBodyGyro-Mean-Z         : num  0.0849 0.0828 0.0813 0.0806 0.0815 ...
 $ timeBodyGyroJerk-Mean-X     : num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
 $ timeBodyGyroJerk-Mean-Y     : num  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
 $ timeBodyGyroJerk-Mean-Z     : num  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
 $ timeBodyAccMag-Mean         : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 $ timeGravityAccMag-Mean      : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
 $ timeBodyAccJerkMag-Mean     : num  -0.141 -0.281 -0.28 -0.367 -0.288 ...
 $ timeBodyGyroMag-Mean        : num  -0.161 -0.447 -0.466 -0.498 -0.356 ...
 $ timeBodyGyroJerkMag-Mean    : num  -0.299 -0.548 -0.566 -0.681 -0.445 ...
 $ freqBodyAcc-Mean-X          : num  -0.203 -0.346 -0.317 -0.427 -0.288 ...
 $ freqBodyAcc-Mean-Y          : num  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
 $ freqBodyAcc-Mean-Z          : num  -0.332 -0.454 -0.412 -0.631 -0.49 ...
 $ freqBodyAcc-meanFreq-X      : num  -0.208 -0.146 -0.247 -0.139 -0.322 ...
 $ freqBodyAcc-meanFreq-Y      : num  0.11309 0.19859 0.17174 0.01235 -0.00204 ...
 $ freqBodyAcc-meanFreq-Z      : num  0.0497 0.0689 0.0749 -0.0788 0.0247 ...
 $ freqBodyAccJerk-Mean-X      : num  -0.171 -0.305 -0.305 -0.359 -0.345 ...
 $ freqBodyAccJerk-Mean-Y      : num  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
 $ freqBodyAccJerk-Mean-Z      : num  -0.469 -0.555 -0.514 -0.729 -0.59 ...
 $ freqBodyAccJerk-meanFreq-X  : num  -0.2093 -0.0727 -0.216 -0.1353 -0.3594 ...
 $ freqBodyAccJerk-meanFreq-Y  : num  -0.386 -0.264 -0.259 -0.386 -0.534 ...
 $ freqBodyAccJerk-meanFreq-Z  : num  -0.186 -0.255 -0.347 -0.326 -0.344 ...
 $ freqBodyGyro-Mean-X         : num  -0.339 -0.43 -0.438 -0.373 -0.373 ...
 $ freqBodyGyro-Mean-Y         : num  -0.103 -0.555 -0.562 -0.688 -0.514 ...
 $ freqBodyGyro-Mean-Z         : num  -0.256 -0.397 -0.418 -0.601 -0.213 ...
 $ freqBodyGyro-meanFreq-X     : num  0.01478 0.00728 0.03376 -0.12715 -0.04586 ...
 $ freqBodyGyro-meanFreq-Y     : num  -0.0658 -0.0427 -0.038 -0.2747 -0.0192 ...
 $ freqBodyGyro-meanFreq-Z     : num  0.000773 0.139752 -0.044508 0.149852 0.167458 ...
 $ freqBodyAccMag-Mean         : num  -0.129 -0.324 -0.29 -0.451 -0.305 ...
 $ freqBodyAccMag-meanFreq     : num  0.191 0.393 0.113 0.382 0.15 ...
 $ freqBodyAccJerkMag-Mean     : num  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...
 $ freqBodyAccJerkMag-meanFreq : num  0.09382 0.2075 -0.11716 0.11149 -0.00497 ...
 $ freqBodyGyroMag-Mean        : num  -0.199 -0.531 -0.57 -0.609 -0.484 ...
 $ freqBodyGyroMag-meanFreq    : num  0.2688 0.3053 0.1809 0.0697 0.2506 ...
 $ freqBodyGyroJerkMag-Mean    : num  -0.319 -0.583 -0.608 -0.724 -0.548 ...
 $ freqBodyGyroJerkMag-meanFreq: num  0.1907 0.1263 0.0458 0.2654 0.0527 ...
 $ timeBodyAcc-Std-X           : num  -0.284 -0.424 -0.36 -0.441 -0.294 ...
 $ timeBodyAcc-Std-Y           : num  0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...
 $ timeBodyAcc-Std-Z           : num  -0.26 -0.425 -0.387 -0.586 -0.457 ...
 $ timeGravityAcc-Std-X        : num  -0.977 -0.973 -0.978 -0.984 -0.979 ...
 $ timeGravityAcc-Std-Y        : num  -0.971 -0.972 -0.962 -0.968 -0.962 ...
 $ timeGravityAcc-Std-Z        : num  -0.948 -0.972 -0.952 -0.963 -0.965 ...
 $ timeBodyAccJerk-Std-X       : num  -0.114 -0.278 -0.269 -0.297 -0.303 ...
 $ timeBodyAccJerk-Std-Y       : num  0.067 -0.0166 -0.045 -0.2212 -0.091 ...
 $ timeBodyAccJerk-Std-Z       : num  -0.503 -0.586 -0.529 -0.751 -0.613 ...
 $ timeBodyGyro-Std-X          : num  -0.474 -0.562 -0.572 -0.501 -0.491 ...
 $ timeBodyGyro-Std-Y          : num  -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...
 $ timeBodyGyro-Std-Z          : num  -0.344 -0.481 -0.477 -0.663 -0.319 ...
 $ timeBodyGyroJerk-Std-X      : num  -0.207 -0.39 -0.386 -0.492 -0.358 ...
 $ timeBodyGyroJerk-Std-Y      : num  -0.304 -0.634 -0.639 -0.807 -0.571 ...
 $ timeBodyGyroJerk-Std-Z      : num  -0.404 -0.435 -0.537 -0.64 -0.158 ...
 $ timeBodyAccMag-Std          : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
 $ timeGravityAccMag-Std       : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
 $ timeBodyAccJerkMag-Std      : num  -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...
 $ timeBodyGyroMag-Std         : num  -0.187 -0.553 -0.562 -0.553 -0.492 ...
 $ timeBodyGyroJerkMag-Std     : num  -0.325 -0.558 -0.567 -0.73 -0.489 ...
 $ freqBodyAcc-Std-X           : num  -0.319 -0.458 -0.379 -0.447 -0.298 ...
 $ freqBodyAcc-Std-Y           : num  0.056 -0.1692 -0.124 -0.1018 0.0426 ...
 $ freqBodyAcc-Std-Z           : num  -0.28 -0.455 -0.423 -0.594 -0.483 ...
 $ freqBodyAccJerk-Std-X       : num  -0.134 -0.314 -0.297 -0.297 -0.321 ...
 $ freqBodyAccJerk-Std-Y       : num  0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...
 $ freqBodyAccJerk-Std-Z       : num  -0.535 -0.616 -0.544 -0.772 -0.633 ...
 $ freqBodyGyro-Std-X          : num  -0.517 -0.604 -0.615 -0.543 -0.529 ...
 $ freqBodyGyro-Std-Y          : num  -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...
 $ freqBodyGyro-Std-Z          : num  -0.437 -0.56 -0.546 -0.716 -0.42 ...
 $ freqBodyAccMag-Std          : num  -0.398 -0.577 -0.456 -0.651 -0.52 ...
 $ freqBodyAccJerkMag-Std      : num  -0.1035 -0.1641 -0.0899 -0.3205 -0.3057 ...
 $ freqBodyGyroMag-Std         : num  -0.321 -0.652 -0.633 -0.594 -0.59 ...
 $ freqBodyGyroJerkMag-Std     : num  -0.382 -0.558 -0.549 -0.758 -0.456 ...
		4. tBodyAccmean()-X
		5. tBodyAccmean()-Y
		6. tBodyAccmean()-Z
		7. tGravityAcc-mean()-X        
		8. tGravityAcc-mean()-Y         
		9. tGravityAcc-mean()-Z     
		10. tBodyAccJerk-mean()-X 	
		11. tBodyAccJerk-mean()-Y
		12. tBodyAccJerk-mean()-Z
		
		
4. tBodyAccmean()-X
5. tBodyAccmean()-Y
6. tBodyAccmean()-Z
		
		Estimated Mean for body acceleration time domain signal in the X, Y and Z directions
		num  0.277 0.276 0.276 0.279 0.278 ...
			
7. tGravityAcc-mean()-X        
8. tGravityAcc-mean()-Y         
9. tGravityAcc-mean()-Z         
		Estimated Mean for gravity acceleration time domain signal in the X, Y and Z directions

10. tBodyAccJerk-mean()-X 	
11. tBodyAccJerk-mean()-Y
12. tBodyAccJerk-mean()-Z

		Estimated mean Jerk of the body using linear acceleration time domain signal in the X, Y and Z directions
		num  0.074 0.0618 0.0815 0.0784 0.0846 ...
			
13. tBodyGyro-mean()-X   
14. tBodyGyro-mean()-Y 
15. tBodyGyro-mean()-Z

		Estimated Mean for body gyroscope time signal in the X, Y and Z directions
		num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
	
16. tBodyGyroJerk-mean()-X   
17. tBodyGyroJerk-mean()-Y 
18. tBodyGyroJerk-mean()-Z
		Estimated mean Jerk of the body using angular acceleration time signal in the X, Y and Z directions
		num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
		
19. tBodyAccMag-mean()      
20. tGravityAccMag-mean()        
21. tBodyAccJerkMag-mean()     
22. tBodyGyroMag-mean()           
23. tBodyGyroJerkMag-mean()     
	
		Estimated Mean magnitude of the three-dimensional time signals calculated using the Euclidean norm
		num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
		
24. fBodyAcc-mean()-X           
25. fBodyAcc-mean()-Y          
26. fBodyAcc-mean()-Z           
27. fBodyAcc-meanFreq()-X     
28. fBodyAcc-meanFreq()-Y       
29. fBodyAcc-meanFreq()-Z      
30. fBodyAccJerk-mean()-X     
31. fBodyAccJerk-mean()-Y    
32. fBodyAccJerk-mean()-Z         
33. fBodyAccJerk-meanFreq()-X    
34. fBodyAccJerk-meanFreq()-Y    
35. fBodyAccJerk-meanFreq()-Z     
36. fBodyGyro-mean()-X          
37. fBodyGyro-mean()-Y            
38. fBodyGyro-mean()-Z          
39. fBodyGyro-meanFreq()-X       
40. fBodyGyro-meanFreq()-Y        
41. fBodyGyro-meanFreq()-Z         
42. fBodyAccMag-mean()          
43. fBodyAccMag-meanFreq()      
44. fBodyBodyAccJerkMag-mean()    
45. fBodyBodyAccJerkMag-meanFreq() 
46. fBodyBodyGyroMag-mean()        
47. fBodyBodyGyroMag-meanFreq()    
48. fBodyBodyGyroJerkMag-mean()   
49. fBodyBodyGyroJerkMag-meanFreq()
		Estimated mean Frequency domain signals obtained by applying Fast Fourier Transform (FFT) in the X, Y and Z directions
		num  -0.203 -0.346 -0.317 -0.427 -0.288 ...
		
50. tBodyAcc-std()-X             
51. tBodyAcc-std()-Y            
52. tBodyAcc-std()-Z 
		Estimated standard deviation for body acceleration time domain signal in the X, Y and Z directions
        num  -0.284 -0.424 -0.36 -0.441 -0.294 ...
		
53. tGravityAcc-std()-X          
54. tGravityAcc-std()-Y          
55. tGravityAcc-std()-Z  
        Estimated standard deviation for gravity acceleration time domain signal in the X, Y and Z directions
		num  -0.977 -0.973 -0.978 -0.984 -0.979 ...
		
56. tBodyAccJerk-std()-X           
57. tBodyAccJerk-std()-Y      
58. tBodyAccJerk-std()-Z      
		Estimated standard deviation of Jerk of the body using linear acceleration time domain signal in the X, Y and Z directions
		num  -0.114 -0.278 -0.269 -0.297 -0.303 ...
		
59. tBodyGyro-std()-X             
60. tBodyGyro-std()-Y         
61. tBodyGyro-std()-Z    
        Estimated standard deviation of body gyroscope time signal in the X, Y and Z directions
		num  -0.474 -0.562 -0.572 -0.501 -0.491 ...
		 
62. tBodyGyroJerk-std()-X       
63. tBodyGyroJerk-std()-Y       
64. tBodyGyroJerk-std()-Z 
		Estimated standard deviation of the Jerk of the body using angular acceleration time signal in the X, Y and Z directions
		num  -0.207 -0.39 -0.386 -0.492 -0.358 ...
		
65. tBodyAccMag-std()            
66. tGravityAccMag-std()      
67. tBodyAccJerkMag-std()        
68. tBodyGyroMag-std()         
69. tBodyGyroJerkMag-std()  
		Estimated standard deviation of the magnitude of the three-dimensional time signals calculated using the Euclidean norm
		num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
		
70. fBodyAcc-std()-X             
71. fBodyAcc-std()-Y               
72. fBodyAcc-std()-Z          
73. fBodyAccJerk-std()-X      
74. fBodyAccJerk-std()-Y        
75. fBodyAccJerk-std()-Z    
76. fBodyGyro-std()-X            
77. fBodyGyro-std()-Y            
78. fBodyGyro-std()-Z             
79. fBodyAccMag-std()       
80. fBodyBodyAccJerkMag-std()   
81. fBodyBodyGyroMag-std()      
82. fBodyBodyGyroJerkMag-std()    
		Estimated standard deviaton of the Frequency domain signals obtained by applying Fast Fourier Transform (FFT) in the X, Y and Z directions
		num  -0.134 -0.314 -0.297 -0.297 -0.321 ...
 
 
RT         1          Record Type           H .Housing Record or Group Quarters Unit
SERIALNO   7          Housing unit/GQ person serial number               0000001..9999999 .Unique identifier assigned within                            .state          
DIVISION   1          Division code           0 .Puerto Rico           1 .New England (Northeast region)           2 .Middle Atlantic (Northeast region)           3 .East North Central (Midwest region)           4 .West North Central (Midwest region)           5 .South Atlantic (South region)           6 .East South Central (South region)           7 .West South Central (South Region)           8 .Mountain (West region)           9 .Pacific (West region)
PUMA       5          Public use microdata area code (PUMA)              Designates area of 100,000 or more population.  Use with ST for unique    code.           00100..08200      77777 .combination of 01801, 01802, and 01905 in Louisiana 
REGION     1          Region code           1 .Northeast           2 .Midwest           3 .South           4 .West           9 .Puerto Rico
ST         2          State Code           01 .Alabama/AL                                         02 .Alaska/AK                                          04 .Arizona/AZ                                         05 .Arkansas/AR                                        06 .California/CA                                      08 .Colorado/CO                                        09 .Connecticut/CT                                     10 .Delaware/DE                                        11 .District of Columbia/DC                            12 .Florida/FL                                         13 .Georgia/GA                                         15 .Hawaii/HI                                          16 .Idaho/ID                                           17 .Illinois/IL                                        18 .Indiana/IN                                         19 .Iowa/IA                                            20 .Kansas/KS                                          21 .Kentucky/KY                                        22 .Louisiana/LA                                       23 .Maine/ME                                
           24 .Maryland/MD                           
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

    
   