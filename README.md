# accelerometry
Tidies the Human Activity Recognition Using Smartphones Dataset

## Files
- *run_analysis.R* contains code to clean accelerometry data collected in UCI HAR Dataset (limited to mean and standard deviation measurements)
- *tidy_accelerometry_data.Rdata* contains the consolidated and cleaned dataset (the output of run_analysis.R)
- *UCI HAR Dataset (folder)* contains original data, codebook, and other files
- *average_accelerometry_data.Rdata* (present after running run_analysis.R) contains average values of each variable in the UCI HAR Dataset, grouped by subject and by activity

## Data Collection
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

All variables are normalized and bounded within \[-1, 1\]
