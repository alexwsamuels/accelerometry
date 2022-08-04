# accelerometry
Tidies the Human Activity Recognition Using Smartphones Dataset

## Files
- *run_analysis.R* contains code to clean accelerometry data collected in UCI HAR Dataset (limited to mean and standard deviation measurements)  
- *tidy_accelerometry_data.Rdata* contains the consolidated and cleaned dataset (the output of run_analysis.R)  
- *UCI HAR Dataset (folder)* contains original data, codebook, and other files  
- *average_accelerometry_data.Rdata* (present after running run_analysis.R) contains average values of each variable in the UCI HAR Dataset, grouped by subject and by activity

## run_analysis methodology
Reads in files from UCI HAR Dataset  
- *X_test* is the full dataset from the test group of volunteers. It contains 2947 observations of all 564 variables  
- *X_train* is the full datasetfrom the training group of volunteers. It contains 7352 observations of all 564 variables  
- *features* contains the variable names; **run_analysis** combines the index with the variable name to eliminate duplicates 
- *subject_test* is the list of subjects from the test group of volunteers  
- *subject_train* is the list of subjects from the training group of volunteers  
- *activity_test* is the list of activities from the test group of volunteers  
- *activity_train* is the list of activities from the training group of volunteers  

Sets the names of the columns of *X_test* and *X_train* to be the names of the variables  
Adds the lists of subjects and activities to *X_test* and *X_train* respectively
Merges the two datasets into an intermediate dataset: *merged_data*  

Creates a new dataset, *accelerometry*, containing the subject list, activity list, origin dataset, and the measurements on mean and standard deviation for each variable    
Groups the new dataset by subject id number and then by activity, then arranges the rows by those groups  

Converts activity numbers to the name of the activity (*walking, walking_upstairs, walking_downstairs, sitting, standing,* and *laying*) by reading in *activity_labels* from the UCI HAR Dataset. (The labels are in upper case, so they are shifted to lower case)  

Changes the UCI-provided variable names into more readable alternatives using regular expressions  

Creates .txt file containing *accelerometry*    

### dataset of averages
Summarizes *accelerometry* by calculating the mean of each group, creating a new dataset: *averages*  
- Data are groubed by subject id, then activity name  
- Calculates the mean for each variable individually  
Replaces column names with the names for *accelerometry*  

Creates a .txt file containing *averages*
