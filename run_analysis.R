# Creates a tidy dataset from Samsung Galaxy S accelerometer data 
library(dplyr)

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

features <- read.table("./UCI HAR Dataset/features.txt")
features <- sapply(features, function(x) paste(features[x,1], features[x,2]))
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "id")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "id")
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")

names(X_test) <- features[,1]
names(X_train) <- features[,1]
X_test <- mutate(X_test, subject_test, activity_test, dataset = "test")
X_train <- mutate(X_train, subject_train, activity_train, dataset = "train")

# Merge training and test sets
merged_data <- rbind(X_test, X_train)

# Extract only the measurements on mean and standard dev for each measurement
# Also groups rows by subject and activity
accelerometry <- merged_data %>% select(id, activity, dataset, 
                        grep("-mean[^F]", names(merged_data)), 
                        grep("-std", names(merged_data))) %>% 
                  group_by(id, activity) %>% 
                  arrange(.by_group = TRUE)

# Use descriptive activity names to name activities in dataset
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
accelerometry$activity <- sapply(accelerometry$activity, function(x) tolower(activity_labels[x,2]))

# Appropriately label dataset with descriptive variable names
names(accelerometry) <- gsub("std", "stdev", 
                        gsub("(mean|std)-([XYZ])", "\\2 \\1", 
                        gsub("-(mean|std)\\()", " \\1", 
                        gsub("(acceleration|velocity)J", "j", 
                        gsub("Gyro", "angular velocity", 
                        gsub("Acc", "linear acceleration", 
                        gsub("Mag", " magnitude", 
                        gsub(".* tGravityAcc", "gravity acceleration", 
                        gsub(".* f(Body)+", "FFT ", 
                        gsub(".* tBody","", names(accelerometry)))))))))))

# Saves dataset as new file
if(!file.exists("./tidy_accelerometry_data.Rdata")){
  file.create("./tidy_accelerometry_data.Rdata")
}
save(accelerometry, file = "./tidy_accelerometry_data.Rdata")

# From dataset in above step, create a second independent tidy data set with the
# average of each variable for each activity and each subject
averages <- summarize(accelerometry, mean(.data[[names(accelerometry)[4]]]), mean(.data[[names(accelerometry)[5]]]), 
          mean(.data[[names(accelerometry)[6]]]), mean(.data[[names(accelerometry)[7]]]), 
          mean(.data[[names(accelerometry)[8]]]), mean(.data[[names(accelerometry)[9]]]), 
          mean(.data[[names(accelerometry)[10]]]), mean(.data[[names(accelerometry)[11]]]), 
          mean(.data[[names(accelerometry)[12]]]), mean(.data[[names(accelerometry)[13]]]), 
          mean(.data[[names(accelerometry)[14]]]), mean(.data[[names(accelerometry)[15]]]), 
          mean(.data[[names(accelerometry)[16]]]), mean(.data[[names(accelerometry)[17]]]), 
          mean(.data[[names(accelerometry)[18]]]), mean(.data[[names(accelerometry)[19]]]), 
          mean(.data[[names(accelerometry)[20]]]), mean(.data[[names(accelerometry)[21]]]), 
          mean(.data[[names(accelerometry)[22]]]), mean(.data[[names(accelerometry)[23]]]), 
          mean(.data[[names(accelerometry)[24]]]), mean(.data[[names(accelerometry)[25]]]), 
          mean(.data[[names(accelerometry)[26]]]), mean(.data[[names(accelerometry)[27]]]), 
          mean(.data[[names(accelerometry)[28]]]), mean(.data[[names(accelerometry)[29]]]), 
          mean(.data[[names(accelerometry)[30]]]), mean(.data[[names(accelerometry)[31]]]), 
          mean(.data[[names(accelerometry)[32]]]), mean(.data[[names(accelerometry)[33]]]), 
          mean(.data[[names(accelerometry)[34]]]), mean(.data[[names(accelerometry)[35]]]), 
          mean(.data[[names(accelerometry)[36]]]), mean(.data[[names(accelerometry)[37]]]), 
          mean(.data[[names(accelerometry)[38]]]), mean(.data[[names(accelerometry)[39]]]), 
          mean(.data[[names(accelerometry)[40]]]), mean(.data[[names(accelerometry)[41]]]), 
          mean(.data[[names(accelerometry)[42]]]), mean(.data[[names(accelerometry)[43]]]), 
          mean(.data[[names(accelerometry)[44]]]), mean(.data[[names(accelerometry)[45]]]), 
          mean(.data[[names(accelerometry)[46]]]), mean(.data[[names(accelerometry)[47]]]), 
          mean(.data[[names(accelerometry)[48]]]), mean(.data[[names(accelerometry)[49]]]), 
          mean(.data[[names(accelerometry)[50]]]), mean(.data[[names(accelerometry)[51]]]), 
          mean(.data[[names(accelerometry)[52]]]), mean(.data[[names(accelerometry)[53]]]), 
          mean(.data[[names(accelerometry)[54]]]), mean(.data[[names(accelerometry)[55]]]), 
          mean(.data[[names(accelerometry)[56]]]), mean(.data[[names(accelerometry)[57]]]), 
          mean(.data[[names(accelerometry)[58]]]), mean(.data[[names(accelerometry)[59]]]), 
          mean(.data[[names(accelerometry)[60]]]), mean(.data[[names(accelerometry)[61]]]), 
          mean(.data[[names(accelerometry)[62]]]), mean(.data[[names(accelerometry)[63]]]), 
          mean(.data[[names(accelerometry)[64]]]), mean(.data[[names(accelerometry)[65]]]), 
          mean(.data[[names(accelerometry)[66]]]), mean(.data[[names(accelerometry)[67]]]), 
          mean(.data[[names(accelerometry)[68]]]), mean(.data[[names(accelerometry)[69]]])) 
names(averages) <- c("id", "activity", names(accelerometry)[4:69])

# Saves dataset as new file
if(!file.exists("./average_accelerometry_data.Rdata")){
  file.create("./average_accelerometry_data.Rdata")
}
save(averages, file = "./average_accelerometry_data.Rdata")