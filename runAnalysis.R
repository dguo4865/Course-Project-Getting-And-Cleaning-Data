###
### This is the script for the course project of Getting and Cleaning Data
###

# set current working directory
setwd("C:/Guo/Coursera/Data Science/3. Data Cleaning/W4")

# reading in common files
act_lbl <- read.table("./UCIData/activity_labels.txt", header=FALSE)
feature <- read.table("./UCIData/features.txt", header=FALSE)

# reading in training files
sub_trn <- read.table("./UCIData/train/subject_train.txt", header=FALSE)
x_trn <- read.table("./UCIData/train/X_train.txt", header=FALSE)
y_trn <- read.table("./UCIData/train/y_train.txt", header=FALSE)

# reading in test data
sub_test <- read.table("./UCIData/test/subject_test.txt", header=FALSE)
x_test <- read.table("./UCIData/test/X_test.txt", header=FALSE)
y_test <- read.table("./UCIData/test/y_test.txt", header=FALSE)

# do something here to make column names more descriptive
col_names <- feature[, 2]

# assign column names stored in feature to x_trn and x_test
colnames(x_trn) <- col_names
colnames(x_test) <- col_names

# assign column name to sub_trn and sub_test
colnames(sub_trn) <- c("subject")
colnames(sub_test) <- c("subject")

# assign column names to act_lbl
colnames(act_lbl) <- c("act_id", "activity")

# assign colmn name to y_trn and y_test
colnames(y_trn) <- c("act_id")
colnames(y_test) <- c("act_id")

# combine subject, label and dataset for training data set and test data set, respectively
ds_trn <- cbind(sub_trn, y_trn, x_trn)
ds_test <- cbind(sub_test, y_test, x_test)

# merge training and test data sets together
ds_comb <- rbind(ds_trn, ds_test)

# a factor that indicates whether or not the variable is needed
v_col_need <- grepl("mean|std|subject|act_id", tolower(colnames(ds_trn)))

# create a data set that contains only the data that is needed
ds_col_need <- ds_comb[v_col_need]

# include activity name in the data set
ds_col_need <- merge(act_lbl, ds_col_need, all = FALSE)

# drop column act_id
ds_col_need <- ds_col_need[, -which(names(ds_col_need)=="act_id")]

col_names <- colnames(ds_col_need)

# clean column names in ds_col_need to make them more descriptive
col_names <- gsub("^f", "frequency", col_names)
col_names <- gsub("^t", "time", col_names)
col_names <- gsub("[A|a]cc", "Accelerometer", col_names)
col_names <- gsub("[G|g]yro", "Gyroscope", col_names)
col_names <- gsub("[m|M]ag", "Magntitude", col_names)
col_names <- gsub("\\()", "", col_names)
col_names <- gsub("-(X|Y|Z)$", "\\1axial", col_names)
col_names <- gsub("[m|M]ean", "Mean", col_names)
col_names <- gsub("[s|S]td", "StdDev", col_names)
col_names <- gsub("-", "", col_names)
col_names <- gsub("Freq", "Frequency", col_names)
col_names <- gsub("angle\\(t", "angleTime", col_names)
col_names <- gsub("angle\\((X|Y|Z)", "angle\\1axial", col_names)
col_names <- gsub(",g", "G", col_names)
col_names <- gsub(")", "", col_names)

colnames(ds_col_need) <- col_names
    
# creat a tidy data set that contains average of each variable for each activity and each subject.
ds_mean <- aggregate(ds_col_need[, names(ds_col_need) != c("activity", "subject")], by=list(activity=ds_col_need$activity, subject=ds_col_need$subject), FUN=mean)

# write ds_mean to a file
write.table(ds_mean, "./tidy_data.txt", sep = "\t", quote = FALSE, row.names = FALSE)

# clean temporary data
rm(list=c("col_names", "v_col_need", "ds_comb", "ds_test", "ds_trn", "y_test", "x_test"))
rm(list=c("sub_test", "y_trn", "x_trn", "sub_trn", "feature", "act_lbl"))
