# setting the working directory to the unzipped UCI HAR folder
setwd("~/Desktop/Data Science Ass/cleanning data/UCI HAR Dataset")
library(dplyr)

# loading the column names from featuers.txt
colNms <- read.table("features.txt",header = F)

# loading the activity names from activity_lables.txt
activityNames <-  read.table("activity_labels.txt",header=F)

# loading all the 3 training datasets
train <- read.table("train/X_train.txt",header=F)
subTrain <- read.table("train/subject_train.txt",header=F)
activityTrain <- read.table("train/y_train.txt",header=F)

names(subTrain) <- "subjectId" 
names(activityTrain) <- "activity" 

# merging the 3 train datasets into a single dataframe by cbinding
train.final <- cbind(train,subTrain,activityTrain)

# loading all the 3 test datasets
test <- read.table("test/X_test.txt",header=F)
subTest <- read.table("test/subject_test.txt",header=F)
activityTest <- read.table("test/y_test.txt",header=F)

names(subTest) <- "subjectId" 
names(activityTest) <- "activity" 

# merging the 3 test datasets into a single dataframe by cbinding
test.final <- cbind(test,subTest,activityTest)

# merging training and test datasets
fullData <- rbind(test.final,train.final)

# adding a sequence number as primary key for the new dataset
fullData <- mutate(fullData, sequenceId = seq_len(length.out = nrow(fullData)))

# adding col names to the 561 + 3 columns
names(fullData) <- c(as.character(colNms[,2]),"subjectId","activityId","sequenceId")

# subsetting the column names containing the strings
# mean or Mean or std from the fullData data frame
regEx <- grepl("mean|Mean|std",names(fullData))
fullData.final <- fullData[,regEx]
#fullData.final <- cbind(subset(fullData,select = c("sequenceId","subjectId","activityId")),fullData.final)

# adding activity Names corresponding to the activityId
getActivityName <- function(x){activityNames[activityNames$V1==x,2]}
activityName <- sapply(fullData$activityId,getActivityName)
fullData.final <- cbind(subset(fullData,select = c("sequenceId","subjectId","activityId")),activityName,fullData.final)

# processing the col names to make them accurate and descriptive
names <- names(fullData.final) <- make.names(names(fullData.final))
names <- gsub("BodyBody","Body",names)
names <- gsub("mean","Mean",names)
names <- gsub("\\.","",names)
names <- gsub("Gyro","Gyroscope",names)
names <- gsub("Acc","Acceleration",names)
names <- gsub("Mag","Magnitude",names)
names <- gsub("std","Std",names)
colnames(fullData.final) <- names

# creating independent dataset with averages
meansData <- fullData.final %>%
        group_by_(.dots = c("subjectId","activityId","activityName")) %>%
        summarise_each(funs(mean))
excludeCols <- names(meansData) %in% c("activityId","sequenceId")

# writing to a text file using write.table()
write.table(meansData[!excludeCols],file="meansData.txt",row.names = FALSE)

# checking to see if the file is written properly
data <- read.table("meansData.txt", header = TRUE)
View(data)