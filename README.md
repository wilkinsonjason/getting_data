The script run_analysis.R will do the following:

* will pull data for subject numbers from subject_test and subject_train
* will pull data for activities from y_test and y_train
* will relabel those activities from the activity_labels file
* will pull data from X_test and X_train
* pull feature names including only mean() and std() from features.txt
* will filter only columns pertaining to those features in X_train and X_test  
* will merge all the above into a tidy data set called 'tidyDF'
* will print tidyDF to the console

For the purposes of this project only variables ending in mean() and std() were included.

Note, the execution of the script if using command:

source("run_analysis.R", print.eval =TRUE)

will execute the script and produce only the tidy dataframe 'tidyDF' to screen.


