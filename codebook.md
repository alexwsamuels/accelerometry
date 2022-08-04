# Codebook for the tidied UCI HAR Dataset

## Data Collection and Processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

Features are normalized and bounded within \[-1,1\].

## Variables in .Rdata files
### General
*id* = subject id  
*activity* = activity name  
*dataset* = original dataset  

### Features
*linear acceleration X mean* = mean body acceleration in the X direction  
*linear acceleration Y mean* = mean body acceleration in the Y direction  
*linear acceleration Z mean* = mean body acceleration in the Z direction  
*gravity acceleration X mean* = mean gravity acceleration in the X direction  
*gravity acceleration Y mean* = mean gravity acceleration in the Y direction  
*gravity acceleration Z mean* = mean gravity acceleration in the Z direction  
*linear jerk X mean* = mean body acceleration in the X direction, derived in time  
*linear jerk Y mean* = mean body acceleration in the Y direction, derived in time  
*linear jerk Z mean* = mean body acceleration in the Z direction, derived in time  
*angular velocity X mean* = mean body angular velocity in the X direction  
*angular velocity Y mean* = mean body angular velocity in the Y direction  
*angular velocity Z mean* = mean body angular velocity in the Z direction  
*angular jerk X mean* = mean body angular velocity in the X direction, derived in time  
*angular jerk Y mean* = mean body angular velocity in the Y direction, derived in time  
*angular jerk Z mean* = mean body angular velocity in the Z direction, derived in time  
*linear acceleration magnitude mean* = mean magnitude of body acceleration  
*gravity acceleration magnitude mean* = mean magnitude of gravity acceleration  
*linear jerk magnitude mean* = mean magnitude of body acceleration, derived in time  
*angular velocity magnitude mean* = mean magnitude of body angular velocity  
*angular jerk magnitude mean* = mean magnitude of body angular velocity, derived in time  
*FFT linear acceleration X mean* = mean fast fourier transform of body acceleration in the X direction  
*FFT linear acceleration Y mean* = mean fast fourier transform of body acceleration in the Y direction  
*FFT linear acceleration Z mean* = mean fast fourier transform of body acceleration in the Z direction  
*FFT linear jerk X mean* = mean fast fourier transform of body acceleration in the X direction, derived in time  
*FFT linear jerk Y mean* = mean fast fourier transform of body acceleration in the Y direction, derived in time  
*FFT linear jerk Z mean* = mean fast fourier transform of body acceleration in the Z direction, derived in time  
*FFT angular velocity X mean* = mean fast fourier transform of body angular velocity in the X direction  
*FFT angular velocity Y mean* = mean fast fourier transform of body angular velocity in the Y direction  
*FFT angular velocity Z mean* = mean fast fourier transform of body angular velocity in the Z direction  
*FFT linear acceleration magnitude mean* = mean fast fourier transform of magnitude of body acceleration  
*FFT linear jerk magnitude mean* = mean fast fourier transform of magnitude of body acceleration, derived in time  
*FFT angular velocity magnitude mean* = mean fast fourier transform of magnitude of body angular velocity  
*FFT angular jerk magnitude mean* = mean fast fourier transform of magnitude of body angular velocity, derived in time  
*linear acceleration X stdev* = standard deviation of body acceleration in the X direction  
*linear acceleration Y stdev* = standard deviation of body acceleration in the Y direction  
*linear acceleration Z stdev* = standard deviation of body acceleration in the Z direction  
*gravity acceleration X stdev* = standard deviation of gravity acceleration in the X direction  
*gravity acceleration Y stdev* = standard deviation of gravity acceleration in the Y direction  
*gravity acceleration Z stdev* = standard deviation of gravity acceleration in the Z direction  
*linear jerk X stdev* = standard deviation of body acceleration in the X direction, derived in time  
*linear jerk Y stdev* = standard deviation of body acceleration in the Y direction, derived in time  
*linear jerk Z stdev* = standard deviation of body acceleration in the Z direction, derived in time  
*angular velocity X stdev* = standard deviation of body angular velocity in the X direction  
*angular velocity Y stdev* = standard deviation of body angular velocity in the Y direction  
*angular velocity Z stdev* = standard deviation of body angular velocity in the Z direction  
*angular jerk X stdev* = standard deviation of body angular velocity in the X direction, derived in time  
*angular jerk Y stdev* = standard deviation of body angular velocity in the Y direction, derived in time  
*angular jerk Z stdev* = standard deviation of body angular velocity in the Z direction, derived in time  
*linear acceleration magnitude stdev* = standard deviation of magnitude of body acceleration  
*gravity acceleration magnitude stdev* = standard deviation of magnitude of gravity acceleration  
*linear jerk magnitude stdev* = standard deviation of magnitude of body acceleration, derived in time  
*angular velocity magnitude stdev* = standard deviation of magnitude of body angular velocity  
*angular jerk magnitude stdev* = standard deviation of magnitude of body angular velocity, derived in time  
*FFT linear acceleration X stdev* = standard deviation of fast fourier transform of body acceleration in the X direction  
*FFT linear acceleration Y stdev* = standard deviation of fast fourier transform of body acceleration in the Y direction  
*FFT linear acceleration Z stdev* = standard deviation of fast fourier transform of body acceleration in the Z direction  
*FFT linear jerk X stdev* = standard deviation of fast fourier transform of body acceleration in the X direction, derived in time  
*FFT linear jerk Y stdev* = standard deviation of fast fourier transform of body acceleration in the Y direction, derived in time  
*FFT linear jerk Z stdev* = standard deviation of fast fourier transform of body acceleration in the Z direction, derived in time  
*FFT angular velocity X stdev* = standard deviation of fast fourier transform of body angular velocity in the X direction  
*FFT angular velocity Y stdev* = standard deviation of fast fourier transform of body angular velocity in the Y direction  
*FFT angular velocity Z stdev* = standard deviation of fast fourier transform of body angular velocity in the Z direction  
*FFT linear acceleration magnitude stdev* = standard deviation of fast fourier transform of magnitude of body acceleration  
*FFT linear jerk magnitude stdev* = standard deviation of fast fourier transform of magnitude of body acceleration, derived in time  
*FFT angular velocity magnitude stdev* = standard deviation of fast fourier transform of magnitude of body angular velocity  
*FFT angular jerk magnitude stdev* = standard deviation of fast fourier transform of magnitude of body angular velocity, derived in time  

## 
