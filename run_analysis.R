
library(plyr)

featurestable <- read.table("features.txt")

patterna <- "mean\\()"
patternb <- "std\\()"
wantedfeatures <- (grepl(patterna, featurestable[,2])|grepl(patternb, featurestable[,2]))
featurenames <- as.character(featurestable[,2][wantedfeatures])

wantedcols <- featurestable[,1][wantedfeatures]

dtsubject_test <- read.table("subject_test.txt")
dty_test <- read.table("y_test.txt")
dtx_test <- read.table("X_test.txt")
dtsubject_train <- read.table("subject_train.txt")
dty_train <- read.table("y_train.txt")
dtx_train <- read.table("X_train.txt")

dtx_test <- dtx_test[,wantedcols] 

dtx_train <- dtx_train[,wantedcols] 

activitytable <- read.table("activity_labels.txt")

testDF <- cbind(dtsubject_test, dty_test, dtx_test)
trainDF <- cbind(dtsubject_train, dty_train, dtx_train)

tidyDF <- rbind(testDF,trainDF)

cols <- c("subject", "activity", featurenames)

colnames(tidyDF) <- cols   

actvec <- tidyDF[,"activity"]
newactvec <- mapvalues(actvec, activitytable[,1], as.character(activitytable[,2]))
tidyDF[,"activity"] <- newactvec

print(tidyDF)

