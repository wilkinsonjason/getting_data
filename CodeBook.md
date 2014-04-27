##CodeBook

The script run_analysis.R will do the following:

* will pull data for subject numbers from subject_test and subject_train
* will pull data for activities from y_test and y_train
* will relabel those activities from the activity_labels file using mapvalues() from the plyr package
* will pull data from X_test and X_train
* pull feature names including only mean() and std() from features.txt
* will filter only columns pertaining to those features in X_train and X_test  
* will merge all the above into a tidy data set called 'tidyDF'
* will print tidyDF to the console

For the purposes of this project only variables ending in mean() and std() were included.

Note, the execution of the script if using command:

source("run_analysis.R", print.eval =TRUE)

will execute the script and produce only the tidy dataframe 'tidyDF' to screen.

##The activity numbers and corresponding names are:
* 1 - WALKING
* 2 - WALKING_UPSTAIRS
* 3 - WALKING_DOWNSTAIRS
* 4 - SITTING
* 5 - STANDING
* 6 - LAYING

##the only means and standard deviations included are:

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y          
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X       
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z           
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y       
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y      
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X       
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z       
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y         
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z          
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y     
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X      
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z    
* tBodyAccMag-mean()
* tBodyAccMag-std()          
* tGravityAccMag-mean()
* tGravityAccMag-std()      
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()      
* tBodyGyroMag-mean()
* tBodyGyroMag-std()         
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()     
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y        
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X           
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y      
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X      
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z       
* fBodyGyro-mean()-X  
* fBodyGyro-mean()-Y         
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X          
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z        
* fBodyAccMag-mean()
* fBodyAccMag-std()          
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()  
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()     
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std() 

The X,Y, and Z for each above refers to the triaxial information gathered.

Notes: 
======
This data is from the Human Activity Recognition Using Smartphones Dataset,
collected by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The original data provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

- Features are normalized and bounded within [-1,1]

For more information about this dataset contact: activityrecognition@smartlab.ws
