# Check
if (!file.exists("UCI HAR Dataset")) {
  print("The script assumes the working directory has data in the directory UCI HAR Dataset")
}

# Read activity and feature labels
activtity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header=F, sep=" ")
colnames(activtity_labels) <- c("Id", "Name")

features_labels <- read.csv("UCI HAR Dataset/features.txt", header=F, sep=" ")
colnames(features_labels) <- c("Id", "Name")

# Read training data
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=F, sep="") 
activity_train <- read.csv("UCI HAR Dataset/train/y_train.txt", header=F, sep="") 
features_train <- read.csv("UCI HAR Dataset/train/X_train.txt", header=F, sep="", 
                            strip.white=T, blank.lines.skip=T)  

# Read test data
subject_test <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=F, sep="") 
activity_test <- read.csv("UCI HAR Dataset/train/y_train.txt", header=F, sep="") 
features_test <- read.csv("UCI HAR Dataset/train/X_train.txt", header=F, sep="", 
                           strip.white=T, blank.lines.skip=T)  

# Merge test and train data for subject
subject_total <- rbind(subject_test, subject_train) 
colnames(subject_total) <- "subject_id"

# Merge test and train data for activity
activity_total <- rbind(activity_test, activity_train)
colnames(activity_total) <- "activity_id"

# Prepare Activity with names
activity_total_with_names <- activtity_labels$Name[activity_total$activity_id]

# Merge test and train data for features
features_total <- rbind(features_test, features_train)

# Create unique column names features_total
colnames(features_total) <- make.names(features_labels$Name, unique = TRUE)

# Extract column names which pertain to mean and standard deviation
column_names <- colnames(features_total)
column_names_with_mean_std <- column_names [grepl("mean|std",column_names)]

# Extract mean and std columns from features_total
features_with_mean_std <- features_total[,column_names_with_mean_std]

# Clean the column names in features_with_mean_std
column_names_with_mean_std <- gsub("...", ".", column_names_with_mean_std, fixed=T)
column_names_with_mean_std <- gsub("..", ".", column_names_with_mean_std, fixed=T)
column_names_with_mean_std <- gsub(".", "_", column_names_with_mean_std, fixed=T)

names(features_with_mean_std) <- column_names_with_mean_std
# Make the complete data set
complete_data <- cbind(subject_total, activity_total_with_names, features_with_mean_std)
colnames(complete_data)[2] <-  "activity_id"

# Prepare tidy data
tidy_data <- aggregate(complete_data, list(complete_data$subject_id, complete_data$activity_id), mean)
tidy_data$subject_id <- NULL; tidy_data$activity_id <- NULL
names(tidy_data)[1] <- "subject_id"; names(tidy_data)[2] <- "activity_id"

# write out the dataframe into a file
write.table(file = "features_tidy_data.txt", x = tidy_data, row.names = FALSE)

