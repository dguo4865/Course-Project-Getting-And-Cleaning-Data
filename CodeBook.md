1. Source of the Tidy data set.

   The original data set is called "Human Activity Recognition Using Smartphones Data Set" provided by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto. 
   
   Below are the information comes with the original data set.
   
   1) Data Set Information
   
	  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

	  The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.	
	  
   2) Attribute Information
	  
	  For each record in the dataset it is provided: 
		- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
		- Triaxial Angular velocity from the gyroscope. 
		- A 561-feature vector with time and frequency domain variables. 
		- Its activity label. 
		- An identifier of the subject who carried out the experiment.

2. The Tiday (tidy_data.txt) data set is created by averaging for each mean or standard deviation variable of the original data set by factor activity and subject. 

	1) Tidy data set merges training data set and test data set from the original data. Appropriate variable name with more descriptive column information are added in the dataset. Please refer to README.md for the detailed steps on converting the original data set to the tidy data set.
	
	2) Each record of the tidy data set is identified by an activity and a subject.

    3) The Tidy data set includes the following 88 variables:

		 [1] activity                                                 
		 [2] subject                                                  
		 [3] timeBodyAccelerometerMeanXaxial                          
		 [4] timeBodyAccelerometerMeanYaxial                          
		 [5] timeBodyAccelerometerMeanZaxial                          
		 [6] timeBodyAccelerometerStdDevXaxial                        
		 [7] timeBodyAccelerometerStdDevYaxial                        
		 [8] timeBodyAccelerometerStdDevZaxial                        
		 [9] timeGravityAccelerometerMeanXaxial                       
		[10] timeGravityAccelerometerMeanYaxial                       
		[11] timeGravityAccelerometerMeanZaxial                       
		[12] timeGravityAccelerometerStdDevXaxial                     
		[13] timeGravityAccelerometerStdDevYaxial                     
		[14] timeGravityAccelerometerStdDevZaxial                     
		[15] timeBodyAccelerometerJerkMeanXaxial                      
		[16] timeBodyAccelerometerJerkMeanYaxial                      
		[17] timeBodyAccelerometerJerkMeanZaxial                      
		[18] timeBodyAccelerometerJerkStdDevXaxial                    
		[19] timeBodyAccelerometerJerkStdDevYaxial                    
		[20] timeBodyAccelerometerJerkStdDevZaxial                    
		[21] timeBodyGyroscopeMeanXaxial                              
		[22] timeBodyGyroscopeMeanYaxial                              
		[23] timeBodyGyroscopeMeanZaxial                              
		[24] timeBodyGyroscopeStdDevXaxial                            
		[25] timeBodyGyroscopeStdDevYaxial                            
		[26] timeBodyGyroscopeStdDevZaxial                            
		[27] timeBodyGyroscopeJerkMeanXaxial                          
		[28] timeBodyGyroscopeJerkMeanYaxial                          
		[29] timeBodyGyroscopeJerkMeanZaxial                          
		[30] timeBodyGyroscopeJerkStdDevXaxial                        
		[31] timeBodyGyroscopeJerkStdDevYaxial                        
		[32] timeBodyGyroscopeJerkStdDevZaxial                        
		[33] timeBodyAccelerometerMagntitudeMean                      
		[34] timeBodyAccelerometerMagntitudeStdDev                    
		[35] timeGravityAccelerometerMagntitudeMean                   
		[36] timeGravityAccelerometerMagntitudeStdDev                 
		[37] timeBodyAccelerometerJerkMagntitudeMean                  
		[38] timeBodyAccelerometerJerkMagntitudeStdDev                
		[39] timeBodyGyroscopeMagntitudeMean                          
		[40] timeBodyGyroscopeMagntitudeStdDev                        
		[41] timeBodyGyroscopeJerkMagntitudeMean                      
		[42] timeBodyGyroscopeJerkMagntitudeStdDev                    
		[43] frequencyBodyAccelerometerMeanXaxial                     
		[44] frequencyBodyAccelerometerMeanYaxial                     
		[45] frequencyBodyAccelerometerMeanZaxial                     
		[46] frequencyBodyAccelerometerStdDevXaxial                   
		[47] frequencyBodyAccelerometerStdDevYaxial                   
		[48] frequencyBodyAccelerometerStdDevZaxial                   
		[49] frequencyBodyAccelerometerMeanFrequencyXaxial            
		[50] frequencyBodyAccelerometerMeanFrequencyYaxial            
		[51] frequencyBodyAccelerometerMeanFrequencyZaxial            
		[52] frequencyBodyAccelerometerJerkMeanXaxial                 
		[53] frequencyBodyAccelerometerJerkMeanYaxial                 
		[54] frequencyBodyAccelerometerJerkMeanZaxial                 
		[55] frequencyBodyAccelerometerJerkStdDevXaxial               
		[56] frequencyBodyAccelerometerJerkStdDevYaxial               
		[57] frequencyBodyAccelerometerJerkStdDevZaxial               
		[58] frequencyBodyAccelerometerJerkMeanFrequencyXaxial        
		[59] frequencyBodyAccelerometerJerkMeanFrequencyYaxial        
		[60] frequencyBodyAccelerometerJerkMeanFrequencyZaxial        
		[61] frequencyBodyGyroscopeMeanXaxial                         
		[62] frequencyBodyGyroscopeMeanYaxial                         
		[63] frequencyBodyGyroscopeMeanZaxial                         
		[64] frequencyBodyGyroscopeStdDevXaxial                       
		[65] frequencyBodyGyroscopeStdDevYaxial                       
		[66] frequencyBodyGyroscopeStdDevZaxial                       
		[67] frequencyBodyGyroscopeMeanFrequencyXaxial                
		[68] frequencyBodyGyroscopeMeanFrequencyYaxial                
		[69] frequencyBodyGyroscopeMeanFrequencyZaxial                
		[70] frequencyBodyAccelerometerMagntitudeMean                 
		[71] frequencyBodyAccelerometerMagntitudeStdDev               
		[72] frequencyBodyAccelerometerMagntitudeMeanFrequency        
		[73] frequencyBodyBodyAccelerometerJerkMagntitudeMean         
		[74] frequencyBodyBodyAccelerometerJerkMagntitudeStdDev       
		[75] frequencyBodyBodyAccelerometerJerkMagntitudeMeanFrequency
		[76] frequencyBodyBodyGyroscopeMagntitudeMean                 
		[77] frequencyBodyBodyGyroscopeMagntitudeStdDev               
		[78] frequencyBodyBodyGyroscopeMagntitudeMeanFrequency        
		[79] frequencyBodyBodyGyroscopeJerkMagntitudeMean             
		[80] frequencyBodyBodyGyroscopeJerkMagntitudeStdDev           
		[81] frequencyBodyBodyGyroscopeJerkMagntitudeMeanFrequency    
		[82] angleTimeBodyAccelerometerMeanGravity                    
		[83] angleTimeBodyAccelerometerJerkMeanGravityMean            
		[84] angleTimeBodyGyroscopeMeanGravityMean                    
		[85] angleTimeBodyGyroscopeJerkMeanGravityMean                
		[86] angleXaxialGravityMean                                   
		[87] angleYaxialGravityMean                                   
		[88] angleZaxialGravityMean              