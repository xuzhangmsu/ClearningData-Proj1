# Download, unzip, and put it in the directory
setwd("C:/Xu's work/coursera/Data-Science/R-programing")


library(data.table)

path1=file.path(getwd(),"UCI HAR Dataset") # The data is in this folder

# Question 1. Merges the training and the test sets to create one data set.

myTrain=read.table(file.path(path1,"train","X_train.txt"))

myTest=read.table(file.path(path1,"test","X_test.txt"))

myData=rbind(myTrain,myTest) # This is the answer


# Question 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

myFeature=read.table(file.path(path1,"features.txt"))
myFeature=setNames(myFeature,c("featureNo","featureName"))

myFeatureMD=myFeature[(grepl("mean()", myFeature$featureName) | grepl("std()", myFeature$featureName)), ] # Get the mean and deviation
myFeatureMD=myFeatureMD[!grepl("meanFreq()", myFeatureMD$featureName), ]#Get rid of meanFreq()

myDataMD=myData[,myFeatureMD$featureNo] # Extract these data from "myData"
myDataMD=setNames(myDataMD,myFeatureMD$featureName) # Assign the feature names


# Question 3. Uses descriptive activity names to name the activities in the data set

myActivityTrain=read.table(file.path(path1,"train","Y_train.txt"))

myActivityTest=read.table(file.path(path1,"test","Y_test.txt"))
myDataMD$Activity=rbind(myActivityTrain,myActivityTest)$V1 # Add the Activity Number

myActivityName=read.table(file.path(path1,"activity_labels.txt")) # Read in the Activity Name and Activity Number
myDataMD=merge(myDataMD, myActivityName, by.x="Activity", by.y="V1", all=TRUE)

colnames(myDataMD)[68]="ActivityName"
myDataMD$Activity=NULL 



mySubjectTrain=read.table(file.path(path1,"train","subject_train.txt"))

mySubjectTest=read.table(file.path(path1,"test","subject_test.txt"))

myDataMD$Subject=rbind(mySubjectTrain, mySubjectTest)$V1 # Add subject id to each row


# Question 4. Appropriately labels the data set with descriptive variable names. 
## We change the "t" to "time_", "f" to "freq_"

colnames(myDataMD)=sub("tB","time_B",colnames(myDataMD))
colnames(myDataMD)=sub("tG","time_G",colnames(myDataMD))
colnames(myDataMD)=sub("fB","freq_B",colnames(myDataMD))

# Question 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data0=myDataMD
data0$Order=paste(data0$ActivityName,data0$Subject)# We group the Activity and Subject
RowNum1=nrow(data.frame(unique(data0$Order)))# Determine how many different types of Acitivity and Subject, the maximaum number is 6*30=180
data1=data.frame(1:RowNum1)


  for(i in 1:66){
          data1[,colnames(data0)[i]]=tapply(data0[,i], data0$Order, mean)
   }


colnames(data1)[1]="Order"

data1$Order=unique(data0$Order) # The first column represents the classification given by different Activity and Subject

write.table(data1, file="Clearning-Data.txt", sep="\t") # This gives us the clearning data

