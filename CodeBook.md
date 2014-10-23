Data dictionary Course Project

Methodology:

Merge function in the run_analysis.R script:

When you run the script and use the function "merge" than you get a data table with the 
name "DTmergeXYSub".  As its input it uses the zip file downloaded from:
"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

With the use of the script, I merged the text files into one big data table. With x 
colums (variables) and Y rows.

I subsetted 68 variables (see below for more details of the variables).I used only the 
mean() and std() variables. There is also an meanFreq variable (this 
is a weighted average) butI think this is somewhat different from the mean(). 
The mean() and std() variables are the estimations of the movement.

Further, I changed the names of the variables (using the Gsub function in R) into names 
that are more readable for humans. The style is CamelCase because I think this makes 
the names more readable because the names are very long.

The result is, as noted before, a data table with the name "DTmergeXYSub".

DTmergeXYSub consists the following 68 variables:
    Name variable											
1:  Subject
	Description: the subjects are the persons in the testgroup. 30 persons. Numbered
	from 1 to 30.
2:  Activity
	Description: there are six activity labels: WALKING, WALKING_UPSTAIRS, 
	WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3:  TimeBodyAccelerationMeanValueX
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the X-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
4:  TimeBodyAccelerationMeanValueY
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the Y-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
5:  TimeBodyAccelerationMeanValueZ
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the Z-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
6:  TimeBodyAccelerationStandardDeviationX
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the X-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
7:  TimeBodyAccelerationStandardDeviationY
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the Y-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
8:  TimeBodyAccelerationStandardDeviationZ
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the Z-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
9:  TimeGravityAccelerationMeanValueX
	Description: the estimated mean of the gravity accelaration signal of 
	the X-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
10: TimeGravityAccelerationMeanValueY
	Description: the estimated mean of the gravity accelaration signal of 
	the Y-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
11: TimeGravityAccelerationMeanValueZ
	Description: the estimated mean of the gravity accelaration signal of 
	the Z-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
12: TimeGravityAccelerationStandardDeviationX
	Description: the estimated standard deviation of the gravity accelaration signal of 
	the X-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
13: TimeGravityAccelerationStandardDeviationY
	Description: the estimated standard deviation of the gravity accelaration signal of 
	the X-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
14: TimeGravityAccelerationStandardDeviationZ
	Description: the estimated standard deviation of the gravity accelaration signal of 
	the Z-axis measured with the accelerometer.
	Measured in: time (nanoseconds)
	Domain: Time
15: TimeBodyAccelerationJerkMeanValueX
	Description: the estimated mean of the Jerk signal of the X-axis derived from the 
	body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
16: TimeBodyAccelerationJerkMeanValueY
	Description: the estimated mean of the Jerk signal of the Y-axis derived from the 
	body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
17: TimeBodyAccelerationJerkMeanValueZ
	Description: the estimated mean of the Jerk signal of the Z-axis derived from the 
	body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
18: TimeBodyAccelerationJerkStandardDeviationX
	Description: the estimated standard deviation of the Jerk signal of the X-axis 
	derived from the body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
19: TimeBodyAccelerationJerkStandardDeviationY
	Description: the estimated standard deviation of the Jerk signal of the Y-axis 
	derived from the body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
20: TimeBodyAccelerationJerkStandardDeviationZ
	Description: the estimated standard deviation of the Jerk signal of the Z-axis 
	derived from the body linear acceleration.
	Measured in: time (nanoseconds)
	Domain: Time
21: TimeBodyGyroscopeMeanValueX
	Description: the estimated mean of the angular velocity signal of the X-axis measured
	with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
22: TimeBodyGyroscopeMeanValueY
	Description: the estimated mean of the angular velocity signal of the Y-axis measured
	with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
23: TimeBodyGyroscopeMeanValueZ
	Description: the estimated mean of the angular velocity signal of the Z-axis measured
	with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
24: TimeBodyGyroscopeStandardDeviationX
	Description: the estimated standard deviation of the angular velocity signal 
	of the X-axis measured with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
25: TimeBodyGyroscopeStandardDeviationY
	Description: the estimated standard deviation of the angular velocity signal 
	of the Y-axis measured with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
26: TimeBodyGyroscopeStandardDeviationZ
	Description: the estimated standard deviation of the angular velocity signal 
	of the Z-axis measured with the Gyroscope. 
	Measured in: time (nanoseconds)
	Domain: Time
27: TimeGyroscopeJerkMeanValueX
	Description: the estimated mean of the Jerk signal of the X-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
28: TimeBodyGyroscopeJerkMeanValueY
	Description: the estimated mean of the Jerk signal of the Y-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
29: TimeGyroscopeJerkMeanValueZ
	Description: the estimated mean of the Jerk signal of the Z-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
30: TimeGyroscopeJerkStandardDeviationX
	Description: the estimated standard deviation of the Jerk signal of the X-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
31: TimeGyroscopeJerkStandardDeviationY
	Description: the estimated standard deviation of the Jerk signal of the Y-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
32: TimeGyroscopeJerkStandardDeviationZ
	Description: the estimated standard deviation of the Jerk signal of the Z-axis 
	derived from the body angular velocity.
	Measured in: time (nanoseconds)
	Domain: Time
33: TimeAccelerationMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the body (motion) accelaration 
	signal of the measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
34: TimeBodyAccelerationMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the body 
	(motion) accelaration  signal of the measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
35: TimeGravityAccelerationMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the gravity accelaration 
	measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
36: TimeGravityAccelerationMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the 
	gravity accelaration measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
37: TimeBodyAccelerationJerkMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the 
	Jerk signal derived from the body linear acceleration.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time	
38: TimeBodyAccelerationJerkMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the 
	Jerk signal derived from the body linear acceleration.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
39: TimeBodyGyroscopeMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the angular velocity signal 
	of the measured with the Gyroscope.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
40: TimeBodyGyroscopeMagnitudeStandardDeviation
	Description: the estimated standard deviatuin of the magnitude of the angular 
	velocity signal measured with the Gyroscope.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
41: TriaxialBodyGyroscopeJerkMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the Jerk signal derived 
	from the body angular velocity.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
42: TriaxialBodyGyroscopeJerkMagnitudeStandardDeviation
	Description: the estimated mean of the standard deviation of the 
	Jerk signal derived from the body angular velocity.
	Measured in: distance 
	Method: Euclidean 
	Domain: Time
43: FrequencyBodyAccelerationMeanValueX
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the X-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
44: FrequencyBodyAccelerationMeanValueY
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the Y-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
45: FrequencyBodyAccelerationMeanValueZ
	Description: the estimated mean of the  body (motion) accelaration signal of 
	the Z-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
46: FrequencyBodyAccelerationStandardDeviationX
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the X-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
47: FrequencyBodyAccelerationStandardDeviationY
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the Y-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
48: FrequencyBodyAccelerationStandardDeviationZ
	Description: the estimated standard deviation of the  body (motion) accelaration 
	signal of the Z-axis measured with the accelerometer.
	Measured in: Frequency (Hz)
	Domain: Frequency
49: FrequencyBodyAccelerationJerkMeanValueX
	Description: the estimated mean of the Jerk signal of the X-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
50: FrequencyBodyAccelerationJerkMeanValueY
	Description: the estimated mean of the Jerk signal of the Y-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
51: FrequencyBodyAccelerationJerkMeanValueZ
	Description: the estimated mean of the Jerk signal of the Z-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
52: FrequencyBodyAccelerationJerkStandardDeviationX
	Description: the estimated standard deviation of the Jerk signal of the X-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
53: FrequencyBodyAccelerationJerkStandardDeviationY
	Description: the estimated standard deviation of the Jerk signal of the Y-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
54: FrequencyBodyAccelerationJerkStandardDeviationZ
	Description: the estimated standard deviation of the Jerk signal of the Z-axis 
	derived from the body linear acceleration.
	Measured in: Frequency (HZ)
	Domain: Frequency
55: FrequencyBodyGyroscopeMeanValueX
	Description: the estimated mean of the angular velocity signal of the X-axis measured
	with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
56: FrequencyBodyGyroscopeMeanValueY
	Description: the estimated mean of the angular velocity signal of the Y-axis measured
	with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
57: FrequencyBodyGyroscopeMeanValueZ
	Description: the estimated mean of the angular velocity signal of the Z-axis measured
	with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
58: FrequencyBodyGyroscopeStandardDeviationX
	Description: the estimated standard deviation of the angular velocity signal 
	of the X-axis measured with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
59: FrequencyBodyGyroscopeStandardDeviationY
	Description: the estimated standard deviation of the angular velocity signal 
	of the Y-axis measured with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
60: FrequencyBodyGyroscopeStandardDeviationZ
	Description: the estimated standard deviation of the angular velocity signal 
	of the Z-axis measured with the Gyroscope. 
	Measured in: Frequency (HZ)
	Domain: Frequency
61: FrequencyBodyAccelerationMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the body (motion) accelaration 
	signal of the measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency	
62: FrequencyBodyAccelerationMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the body 
	(motion) accelaration signal of the measured with the accelerometer.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency
63: FrequencyBodyBodyAccelerationJerkMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the Jerk signal derived from 
	the body linear acceleration.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency	
64: FrequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the Jerk 
	signal derived from 
	the body linear acceleration.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency
65: FrequencyBodyBodyGyroscopeMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the angular 
	velocity signal measured with the Gyroscope.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency	
66: FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the angular 
	velocity signal measured with the Gyroscope.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency
67: FrequencyBodyBodyGyroscopeJerkMagnitudeMeanValue
	Description: the estimated mean of the magnitude of the Jerk signal derived 
	from the body angular velocity.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency
68: FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation
	Description: the estimated standard deviation of the magnitude of the Jerk signal 
	derived from the body angular velocity.
	Measured in: distance 
	Method: Euclidean 
	Domain: Frequency

tidy function in the run_analysis.R script:

This function writes a text file to the disk with the name DTtidy.txt. This is in fact
a data sete with as input the merge function. I melted the "Subject" and "Activity"
variables. So that I can make a data set that is tidy with the average of each variable 
for each activity and each subject.

The function also returns the 20 first rows of a data table with the name "DTcast".

It returns the 68 variables as above only with different values (the average of 
each variable for each activity and each subject).