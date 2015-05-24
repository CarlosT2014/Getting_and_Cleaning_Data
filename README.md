Getting_and_Cleaning_Data Course Project
========================================

Purpose
========
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Introduction
============
The base data set used for this comes from the UCI Machine Learning experiment. The experiments were carried out producing a collection of raw data from the accelerometers from the Samsung Galaxy S smartphone.
This data has 561 features not labeled. The labels for test data are in the x_test.txt file. The test subjects are in the subject_text.txt file and the activity labels are in y_test.txt file. The same applies for the training data.

The original dataset included the following statistics (in bold the ones used for the tidy dataset):
* mean():	Mean value[Used]
* std():	Standard deviation[Used]
* mad():	Median absolute deviation
* max():	Largest value in array
* min():	Smallest value in array
* sma():	Signal magnitude area
* energy():	Energy measure. Sum of the squares divided by the number of values.
* iqr():	Interquartile range
* entropy():	Signal entropy
* arCoeff():	Autorregresion coefficients with Burg order equal to 4
* correlation():	Correlation coefficient between two signals
* maxInds():	Index of the frequency component with largest magnitude
* meanFreq():	Weighted average of the frequency components to obtain a mean frequency
* skewness():	Skewness of the frequency domain signal
* kurtosis():	kurtosis of the frequency domain signal
* bandsEnergy():	Energy of a frequency interval within the 64 bins of the FFT of each window

The script
==========
The run_analysis.R script will merge the test and training datasets into one dataset, process the relevant columns and extracts one final independent tidy dataset.

The Code Book
The CodeBook.md file explains the transformations and the resulting data and variables


