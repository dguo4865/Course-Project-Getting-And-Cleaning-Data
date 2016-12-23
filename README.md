==================================================================
Tidy Dataset For Getting And Cleaning Data Couse
==================================================================

The tidy data set is a summarized data that averages for each activity and each subject for each mean or stand deviation variable originally in Human Activity Recognition Using Smartphones Dataset that is offered by the following people:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Steps to generate the tidy data set.
==================================================================
1. Load activity label and feature files. The feature file contains all variable names in the original file.
2. Read in training and test data set, respectively.
3. Assign column names to the training and test datasets and other datasets.
4. Combine subject, activty and data set for training and test data, respectively.
5. Merge training and test datasets together - append test dataset to training dataset.
6. Select variables that are needed - i.e., variables that are for mean or standard deviation.
7. Create a data set that includes only the columns that are needed.
8. Clean the variable names of this data set to make the names more descriptive.
9. At this point, the first data set is obtained.
10. Creat a second data set (the tidy data set) by aggregating each variables by factors activity and subject.
11. At this point, the second data - i.e., the tidy data set - is obtained.
12. Out the tidy data set by writing to a flat file.

 
