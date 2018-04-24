# This Codebook explains the content of tidy.txt and the cleaning steps taken in run_analysis.R

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


0. Data preparations files are downloaded and extracted from Source https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

1. Training and testdata are merged and variables are named

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Descriptive activity names replaces activity id's in the data set

4. Data set is labeled with descriptive variable names

5. Averages calculated for each variable grouped by subject and activity.
Result exported as a textfile tidy.txt.


## tidy.txt

Data is grouped by actitity label and subject, an idenifier of the subject who carried out the experiment.
Data in tidy.txt are summarised by the mean of all measerements.

[1] "activity" -- Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

[2] "subject" -- id of the person, the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

[3] "time body acceleration signal (accelerometer)-mean()-X"                      
[4] "time body acceleration signal (accelerometer)-mean()-Y"                      
[5] "time body acceleration signal (accelerometer)-mean()-Z"                      
[6] "time body acceleration signal (accelerometer)-std()-X"                       
[7] "time body acceleration signal (accelerometer)-std()-Y"                       
[8] "time body acceleration signal (accelerometer)-std()-Z"                       
[9] "time Gravity acceleration signal (accelerometer)-mean()-X"                   
[10] "time Gravity acceleration signal (accelerometer)-mean()-Y"                   
[11] "time Gravity acceleration signal (accelerometer)-mean()-Z"                   
[12] "time Gravity acceleration signal (accelerometer)-std()-X"                    
[13] "time Gravity acceleration signal (accelerometer)-std()-Y"                    
[14] "time Gravity acceleration signal (accelerometer)-std()-Z"                    
[15] "time body acceleration jerk signal (accelerometer)-mean()-X"                 
[16] "time body acceleration jerk signal (accelerometer)-mean()-Y"                 
[17] "time body acceleration jerk signal (accelerometer)-mean()-Z"                 
[18] "time body acceleration jerk signal (accelerometer)-std()-X"                  
[19] "time body acceleration jerk signal (accelerometer)-std()-Y"                  
[20] "time body acceleration jerk signal (accelerometer)-std()-Z"                  
[21] "time body acceleration signal (gyroscope)-mean()-X"                          
[22] "time body acceleration signal (gyroscope)-mean()-Y"                          
[23] "time body acceleration signal (gyroscope)-mean()-Z"                          
[24] "time body acceleration signal (gyroscope)-std()-X"                           
[25] "time body acceleration signal (gyroscope)-std()-Y"                           
[26] "time body acceleration signal (gyroscope)-std()-Z"                           
[27] "time body acceleration jerk signal (gyroscope)-mean()-X"                     
[28] "time body acceleration jerk signal (gyroscope)-mean()-Y"                     
[29] "time body acceleration jerk signal (gyroscope)-mean()-Z"                     
[30] "time body acceleration jerk signal (gyroscope)-std()-X"                      
[31] "time body acceleration jerk signal (gyroscope)-std()-Y"                      
[32] "time body acceleration jerk signal (gyroscope)-std()-Z"                      
[33] "time body acceleration signal magnitude (accelerometer)-mean()"              
[34] "time body acceleration signal magnitude (accelerometer)-std()"               
[35] "time Gravity acceleration signal Magnitude (accelerometer)-mean()"           
[36] "time Gravity acceleration signal Magnitude (accelerometer)-std()"            
[37] "time body acceleration jerk signal magnitude (accelerometer)-mean()"         
[38] "time body acceleration jerk signal magnitude (accelerometer)-std()"          
[39] "time body acceleration signal magnitude (gyroscope)-mean()"                  
[40] "time body acceleration signal magnitude (gyroscope)-std()"                   
[41] "time body acceleration jerk signal magnitude (gyroscope)-mean()"             
[42] "time body acceleration jerk signal magnitude (gyroscope)-std()"              
[43] "frequency body acceleration signal (accelerometer)-mean()-X"                 
[44] "frequency body acceleration signal (accelerometer)-mean()-Y"                 
[45] "frequency body acceleration signal (accelerometer)-mean()-Z"                 
[46] "frequency body acceleration signal (accelerometer)-std()-X"                  
[47] "frequency body acceleration signal (accelerometer)-std()-Y"                  
[48] "frequency body acceleration signal (accelerometer)-std()-Z"                  
[49] "frequency body acceleration signal (accelerometer)-meanFreq()-X"             
[50] "frequency body acceleration signal (accelerometer)-meanFreq()-Y"             
[51] "frequency body acceleration signal (accelerometer)-meanFreq()-Z"             
[52] "frequency body acceleration jerk signal (accelerometer)-mean()-X"            
[53] "frequency body acceleration jerk signal (accelerometer)-mean()-Y"            
[54] "frequency body acceleration jerk signal (accelerometer)-mean()-Z"            
[55] "frequency body acceleration jerk signal (accelerometer)-std()-X"             
[56] "frequency body acceleration jerk signal (accelerometer)-std()-Y"             
[57] "frequency body acceleration jerk signal (accelerometer)-std()-Z"             
[58] "frequency body acceleration jerk signal (accelerometer)-meanFreq()-X"        
[59] "frequency body acceleration jerk signal (accelerometer)-meanFreq()-Y"        
[60] "frequency body acceleration jerk signal (accelerometer)-meanFreq()-Z"        
[61] "frequency body acceleration signal (gyroscope)-mean()-X"                     
[62] "frequency body acceleration signal (gyroscope)-mean()-Y"                     
[63] "frequency body acceleration signal (gyroscope)-mean()-Z"                     
[64] "frequency body acceleration signal (gyroscope)-std()-X"                      
[65] "frequency body acceleration signal (gyroscope)-std()-Y"                      
[66] "frequency body acceleration signal (gyroscope)-std()-Z"                      
[67] "frequency body acceleration signal (gyroscope)-meanFreq()-X"                 
[68] "frequency body acceleration signal (gyroscope)-meanFreq()-Y"                 
[69] "frequency body acceleration signal (gyroscope)-meanFreq()-Z"                 
[70] "frequency body acceleration signal magnitude (accelerometer)-mean()"         
[71] "frequency body acceleration signal magnitude (accelerometer)-std()"          
[72] "frequency body acceleration signal magnitude (accelerometer)-meanFreq()"     
[73] "frequency body acceleration jerk signal magnitude (accelerometer)-mean()"    
[74] "frequency body acceleration jerk signal magnitude (accelerometer)-std()"     
[75] "frequency body acceleration jerk signal magnitude (accelerometer)-meanFreq()"
[76] "fBodyBodyGyroMag-mean()"                                                     
[77] "fBodyBodyGyroMag-std()"                                                      
[78] "fBodyBodyGyroMag-meanFreq()"                                                 
[79] "fBodyBodyGyroJerkMag-mean()"                                                 
[80] "fBodyBodyGyroJerkMag-std()"                                                  
[81] "fBodyBodyGyroJerkMag-meanFreq()"      
