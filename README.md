There are two main files in this directory:
	1.	run_analysis.R
	2.	CodeBook.rd


## run_analysis.R:
run_analysis.R script specifies steps to generate features_tidy.txt  file with tidy data by processing the raw data from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

For more information on the raw data please browse the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Download the above zip file and unzip it to extract the folder ‘UCI HAR Dataset’. 

To run the script,  place  it in the working directory of your R system. Also without renaming the folder ‘UCI HAR Dataset’, place it in the working directory.

## CodeBook.rd
This file describes the variables of the tidy data in features_tidy_data.txt, and also the important considerations for processing raw data into the tidy data.
