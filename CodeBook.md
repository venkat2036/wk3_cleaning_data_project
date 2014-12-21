## Tidy Data file Name
features_tidy_data.txt represents tidy data.


## Code book
The tidy data variables pertain to the measurements of the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The variable are listed below. Excepting the first two variables, the variables pertain to mean and standard deviation of these signals.
These variables are real numbers. For each volunteer, and for each activity, each of these variables represent a mean of these signals’ means or standard deviations.

Note: The metric units for the variables are not clear from the raw data. 

subject_id  : identity no of a volunteer who  underwent the tests. This is  integer type.

activity_id   :  identity name for activity performed by the volunteer. This is text.  

tBodyAcc_mean_X  

tBodyAcc_mean_Y  

tBodyAcc_mean_Z  

tBodyAcc_std_X  

tBodyAcc_std_Y  

tBodyAcc_std_Z  

tGravityAcc_mean_X  

tGravityAcc_mean_Y  

tGravityAcc_mean_Z  

tGravityAcc_std_X  

tGravityAcc_std_Y  

tGravityAcc_std_Z  

tBodyAccJerk_mean_X  

tBodyAccJerk_mean_Y  

tBodyAccJerk_mean_Z  

tBodyAccJerk_std_X  

tBodyAccJerk_std_Y  

tBodyAccJerk_std_Z  

tBodyGyro_mean_X  

tBodyGyro_mean_Y  

tBodyGyro_mean_Z  

tBodyGyro_std_X  

tBodyGyro_std_Y  

tBodyGyro_std_Z  

tBodyGyroJerk_mean_X  

tBodyGyroJerk_mean_Y  

tBodyGyroJerk_mean_Z  

tBodyGyroJerk_std_X  

tBodyGyroJerk_std_Y  

tBodyGyroJerk_std_Z  

tBodyAccMag_mean_  

tBodyAccMag_std_  

tGravityAccMag_mean_  

tGravityAccMag_std_  

tBodyAccJerkMag_mean_  

tBodyAccJerkMag_std_  

tBodyGyroMag_mean_  

tBodyGyroMag_std_  

tBodyGyroJerkMag_mean_  

tBodyGyroJerkMag_std_  

fBodyAcc_mean_X  

fBodyAcc_mean_Y  

fBodyAcc_mean_Z  

fBodyAcc_std_X  

fBodyAcc_std_Y  

fBodyAcc_std_Z  

fBodyAcc_meanFreq_X  

fBodyAcc_meanFreq_Y  

fBodyAcc_meanFreq_Z  

fBodyAccJerk_mean_X  

fBodyAccJerk_mean_Y  

fBodyAccJerk_mean_Z  

fBodyAccJerk_std_X  

fBodyAccJerk_std_Y  

fBodyAccJerk_std_Z  

fBodyAccJerk_meanFreq_X  

fBodyAccJerk_meanFreq_Y  

fBodyAccJerk_meanFreq_Z  

fBodyGyro_mean_X  

fBodyGyro_mean_Y  

fBodyGyro_mean_Z  

fBodyGyro_std_X  

fBodyGyro_std_Y  

fBodyGyro_std_Z  

fBodyGyro_meanFreq_X  

fBodyGyro_meanFreq_Y  

fBodyGyro_meanFreq_Z  

fBodyAccMag_mean_  

fBodyAccMag_std_  

fBodyAccMag_meanFreq_  

fBodyBodyAccJerkMag_mean_  

fBodyBodyAccJerkMag_std_  

fBodyBodyAccJerkMag_meanFreq_  

fBodyBodyGyroMag_mean_  

fBodyBodyGyroMag_std_  

fBodyBodyGyroMag_meanFreq_  

fBodyBodyGyroJerkMag_mean_  

fBodyBodyGyroJerkMag_std_  

fBodyBodyGyroJerkMag_meanFreq_  



## Raw data
The raw data is about experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## Information about the summary choices
Note: Its not clear to author why mean and std values are selected for tidying the raw data

## Information about the experimental study design used
Note: Not much information is known about how mean and std values are selected to the author

## Study Design
run_analysis.R script’s design is as follows:

Step 1: Merge X_train.txt and X-test.txt to create features data frame

Step 2: Extract columns pertaining to mean and std (stand deviation) from features data frame. 

        Let  features_with_mean_std be the data frame from the extracted columns. 

        Also set up the column names based on feature_labels data frame  which is created from features.txt

Step 3: Merge subject_train.txt and subject_test.txt to create subject_total data frame

Step 4: Merge y_train.txt and y_test.txt to create activity_total data frame. 

        Replace activity ids in activity_total by activity name from activity_labels data frame which is created from activity_labels.txt.

        Let the resulting data frame be activity_total_with_names

Step 5: Create complete_data from column binding subject_total, activity_total_with_names, and features_with_mean_std 

Step 6: Let tidy_data be summarization of complete_data by summarizing the average of each variable for each subject, and activity in complete_data.


## Recipe
run_analysis.R script provides the complete procedure for transforming raw data in to the tidy data.

