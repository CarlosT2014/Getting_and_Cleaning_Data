CodeBook for the tidy dataset

Data source
The raw data represents data collected from the accelerometers from the Samsung Galaxy S smartphone and the site where the data was obtained is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, where a full description can be found


Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean():	Mean value
- std():	Standard deviation
- mad():	Median absolute deviation 
- max():	Largest value in array
- min():	Smallest value in array
- sma():	Signal magnitude area
- energy():	Energy measure. Sum of the squares divided by the number of values. 
- iqr():	Interquartile range 
- entropy():	Signal entropy
- arCoeff():	Autorregresion coefficients with Burg order equal to 4
- correlation():	Correlation coefficient between two signals
- maxInds():	Index of the frequency component with largest magnitude
- meanFreq():	Weighted average of the frequency components to obtain a mean frequency
- skewness():	Skewness of the frequency domain signal 
- kurtosis():	kurtosis of the frequency domain signal 
- bandsEnergy():	Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle():	Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

Notes: 
------
-	Features are normalized and bounded within [-1,1].
-	Each feature vector is a row on the text file.


Attribute Information:
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 

Only the mean value and standard deviation that were estimated from the signals tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag are going to be collected in the final tidy file.

Data dictionary
The variables in the tidy data set are a subset of the variables described in the ”features_info.txt” file in the original data set.
The following list presents the current data variables according to some processing over their original names:

- Subject	A factor that identifies the volunteer participant (from 1 to 30)
- Activity	A factor that identifies the activity being performed (Walking, Walking UpStairs, Walking DownStairs, Sitting, Standing, Lying)
- Subject	A factor that identifies the volunteer participant (from 1 to 30)
- Activity	A factor that identifies the activity being performed (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Lying)
- tBodyAcc_mean_X	The mean of the body acceleration on the X axis.
- tBodyAcc_mean_Y	The mean of the body acceleration on the Y axis.
- tBodyAcc_mean_Z	The mean of the body acceleration on the Z axis.
- tBodyAcc_std_X	The standard deviation of the body acceleration on the X axis.
- tBodyAcc_std_Y	The standard deviation of the body acceleration on the Y axis.
- tBodyAcc_std_Z	The standard deviation of the body acceleration on the Z axis.
- tGravityAcc_mean_X	The mean of the gravity acceleration on the X axis.
- tGravityAcc_mean_Y	The mean of the gravity acceleration on the Y axis.
- tGravityAcc_mean_Z	The mean of the gravity acceleration on the Z axis.
- tGravityAcc_std_X	The standard deviation of the gravity acceleration on the X axis.
- tGravityAcc_std_Y	The standard deviation of the gravity acceleration on the Y axis.
- tGravityAcc_std_Z	The standard deviation of the gravity acceleration on the Z axis.
- tBodyAccJerk_mean_X	The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals.
- tBodyAccJerk_mean_Y	The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
- tBodyAccJerk_mean_Z	The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
- tBodyAccJerk_std_X	The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals.
- tBodyAccJerk_std_Y	The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.
- tBodyAccJerk_std_Z	The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals.
- tBodyGyro_mean_X	The mean of the body angular velocity on the X axis.
- tBodyGyro_mean_Y	The mean of the body angular velocity on the Y axis.
- tBodyGyro_mean_Z	The mean of the body angular velocity on the Z axis.
- tBodyGyro_std_X	The standard deviation of the body angular velocity on the X axis.
- tBodyGyro_std_Y	The standard deviation of the body angular velocity on the Y axis.
- tBodyGyro_std_Z	The standard deviation of the body angular velocity on the Z axis.
- tBodyGyroJerk_mean_X	The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.
- tBodyGyroJerk_mean_Y	The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
- tBodyGyroJerk_mean_Z	The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
- tBodyGyroJerk_std_X	The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals.
- tBodyGyroJerk_std_Y	The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.
- tBodyGyroJerk_std_Z	The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.
- tBodyAccMag_mean	The mean of the body acceleration magnitude, calculated using the Euclidean norm.
- tBodyAccMag_std	The standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.
- tGravityAccMag_mean	The mean of the gravity acceleration magnitude.
- tGravityAccMag_std	The standard deviation of the gravity acceleration magnitude.
- tBodyAccJerkMag_mean	The mean of the body acceleration magnitude derived in time to obtain Jerk signals.
- tBodyAccJerkMag_std	The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals.
- tBodyGyroMag_mean	The mean of the angular velocity magnitude
- tBodyGyroMag_std	The standard deviation of the angular velocity magnitude.
- tBodyGyroJerkMag_mean	The mean of the angular velocity magnitude derived in time to obtain Jerk signals.
- tBodyGyroJerkMag_std	The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals.
- fBodyAcc_mean_X	The mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAcc_mean_Y	The mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAcc_mean_Z	The mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAcc_std_X	The standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAcc_std_Y	The standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAcc_std_Z	The standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_mean_X	The mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_mean_Y	The mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_mean_Z	The mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_std_X	The standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_std_Y	The standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerk_std_Z	The standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_mean_X	The mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_mean_Y	The mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_mean_Z	The mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_std_X	The standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_std_Y	The standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyro_std_Z	The standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccMag_mean	The mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
- fBodyAccMag_std	The standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerkMag_mean	The mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyAccJerkMag_std	The standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyroMag_mean	The mean of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
- fBodyGyroMag_std	The standard deviation of the angular velocity magnitude, with a Fast Fourier Transform (FFT) applied.
- fBodyGyroJerkMag_mean	The mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
- fBodyGyroJerkMag_std	The standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.
Processing:
1. Check whether the zip file exists in the working directory:
	If it does not exist, unzip it and proceed.
	If it exists do nothing and proceed (assuming that the zip file has already been downloaded and unzipped).
	The zip file will be downloaded and unzipped just once, which will improve the performance.
2. Create the activity labels dataset with the "Label" (numeric id) and "Activity" (activity name) columns
3. Create the features datasets (number id and name). Eliminate the id and keep only the features name.
4. Create the test dataset and training dataset, and apply the features names array to set its columns names.
5. Create the subject test dataset and subject training dataset, with the "Subject" column
6. Create the activity test dataset and activity training dataset, with the "Label" (numeric id) column 
7. Sets descriptive activity names to activities in the dataset, with only an "Activity" (activity name) column
8. Create a new test and training datasets, only with the mean and standard deviation measurements (only with the ‘mean()’ or ‘sd()’ expressions on their column names (according to features_info.txt the variables with mean and standard deviation measurements are those with ‘mean()’ and ‘std()’).
9. Append the subjects and activites to the test and training datasets (2 more columns)
10. Create a final dataset with the test and training datasets. Columns names are 'simplified' by removing "()" and replacing "-" by "_"
11. Creates the final independent tidy dataset with the average of each variable for each activity and each subject.
12. Exports to the file “tidy0.txt".

