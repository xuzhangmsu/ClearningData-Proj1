Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

We created one R script called run_analysis.R following the five steps and get a clearning data set. 

(1). Merges the training and the test sets to create one data set.
(2). Extracts only the measurements on the mean and standard deviation for each measurement. 
(3). Uses descriptive activity names to name the activities in the data set
(4). Appropriately labels the data set with descriptive variable names. 
(5). From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


In the file "Clearning-Data.txt", the first column represents the different types of Activity and Subject. The names for the left columns are from the "features.txt" in the original data, but only containing these names with "mean" and "sd", the order is the same order in the data file "features.txt". 
But we change "t" and "f" to " time_ " and "freq_" to represtns time and frequency. 

 [1] "Order"                          
 [2] "time_BodyAcc-mean()-X"          
 [3] "time_BodyAcc-mean()-Y"          
 [4] "time_BodyAcc-mean()-Z"          
 [5] "time_BodyAcc-std()-X"           
 [6] "time_BodyAcc-std()-Y"           
 [7] "time_BodyAcc-std()-Z"           
 [8] "time_GravityAcc-mean()-X"       
 [9] "time_GravityAcc-mean()-Y"       
[10] "time_GravityAcc-mean()-Z"       
[11] "time_GravityAcc-std()-X"        
[12] "time_GravityAcc-std()-Y"        
[13] "time_GravityAcc-std()-Z"        
[14] "time_BodyAccJerk-mean()-X"      
[15] "time_BodyAccJerk-mean()-Y"      
[16] "time_BodyAccJerk-mean()-Z"      
[17] "time_BodyAccJerk-std()-X"       
[18] "time_BodyAccJerk-std()-Y"       
[19] "time_BodyAccJerk-std()-Z"       
[20] "time_BodyGyro-mean()-X"         
[21] "time_BodyGyro-mean()-Y"         
[22] "time_BodyGyro-mean()-Z"         
[23] "time_BodyGyro-std()-X"          
[24] "time_BodyGyro-std()-Y"          
[25] "time_BodyGyro-std()-Z"          
[26] "time_BodyGyroJerk-mean()-X"     
[27] "time_BodyGyroJerk-mean()-Y"     
[28] "time_BodyGyroJerk-mean()-Z"     
[29] "time_BodyGyroJerk-std()-X"      
[30] "time_BodyGyroJerk-std()-Y"      
[31] "time_BodyGyroJerk-std()-Z"      
[32] "time_BodyAccMag-mean()"         
[33] "time_BodyAccMag-std()"          
[34] "time_GravityAccMag-mean()"      
[35] "time_GravityAccMag-std()"       
[36] "time_BodyAccJerkMag-mean()"     
[37] "time_BodyAccJerkMag-std()"      
[38] "time_BodyGyroMag-mean()"        
[39] "time_BodyGyroMag-std()"         
[40] "time_BodyGyroJerkMag-mean()"    
[41] "time_BodyGyroJerkMag-std()"     
[42] "freq_BodyAcc-mean()-X"          
[43] "freq_BodyAcc-mean()-Y"          
[44] "freq_BodyAcc-mean()-Z"          
[45] "freq_BodyAcc-std()-X"           
[46] "freq_BodyAcc-std()-Y"           
[47] "freq_BodyAcc-std()-Z"           
[48] "freq_BodyAccJerk-mean()-X"      
[49] "freq_BodyAccJerk-mean()-Y"      
[50] "freq_BodyAccJerk-mean()-Z"      
[51] "freq_BodyAccJerk-std()-X"       
[52] "freq_BodyAccJerk-std()-Y"       
[53] "freq_BodyAccJerk-std()-Z"       
[54] "freq_BodyGyro-mean()-X"         
[55] "freq_BodyGyro-mean()-Y"         
[56] "freq_BodyGyro-mean()-Z"         
[57] "freq_BodyGyro-std()-X"          
[58] "freq_BodyGyro-std()-Y"          
[59] "freq_BodyGyro-std()-Z"          
[60] "freq_BodyAccMag-mean()"         
[61] "freq_BodyAccMag-std()"          
[62] "freq_BodyBodyAccJerkMag-mean()" 
[63] "freq_BodyBodyAccJerkMag-std()"  
[64] "freq_BodyBodyGyroMag-mean()"    
[65] "freq_BodyBodyGyroMag-std()"     
[66] "freq_BodyBodyGyroJerkMag-mean()"
[67] "freq_BodyBodyGyroJerkMag-std()" 