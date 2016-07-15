This codebook contains the following sections:
1. Feature Selection: An explanation of the database (same as what was provided in the problem dataset)
2. Complete List of Variables in the tidy dataset

=====================================================================

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

===============================================================================================


Complete List of Variables in the tidy dataset 
==============================================


"1"	"SubjectLabel"
"2"	"ActivityLabel"
"3"	"tBodyAccmean-X"
"4"	"tBodyAccmean-Y"
"5"	"tBodyAccmean-Z"
"6"	"tBodyAccstd-X"
"7"	"tBodyAccstd-Y"
"8"	"tBodyAccstd-Z"
"9"	"tGravityAccmean-X"
"10"	"tGravityAccmean-Y"
"11"	"tGravityAccmean-Z"
"12"	"tGravityAccstd-X"
"13"	"tGravityAccstd-Y"
"14"	"tGravityAccstd-Z"
"15"	"tBodyAccJerkmean-X"
"16"	"tBodyAccJerkmean-Y"
"17"	"tBodyAccJerkmean-Z"
"18"	"tBodyAccJerkstd-X"
"19"	"tBodyAccJerkstd-Y"
"20"	"tBodyAccJerkstd-Z"
"21"	"tBodyGyromean-X"
"22"	"tBodyGyromean-Y"
"23"	"tBodyGyromean-Z"
"24"	"tBodyGyrostd-X"
"25"	"tBodyGyrostd-Y"
"26"	"tBodyGyrostd-Z"
"27"	"tBodyGyroJerkmean-X"
"28"	"tBodyGyroJerkmean-Y"
"29"	"tBodyGyroJerkmean-Z"
"30"	"tBodyGyroJerkstd-X"
"31"	"tBodyGyroJerkstd-Y"
"32"	"tBodyGyroJerkstd-Z"
"33"	"tBodyAccMagmean"
"34"	"tBodyAccMagstd"
"35"	"tGravityAccMagmean"
"36"	"tGravityAccMagstd"
"37"	"tBodyAccJerkMagmean"
"38"	"tBodyAccJerkMagstd"
"39"	"tBodyGyroMagmean"
"40"	"tBodyGyroMagstd"
"41"	"tBodyGyroJerkMagmean"
"42"	"tBodyGyroJerkMagstd"
"43"	"fBodyAccmean-X"
"44"	"fBodyAccmean-Y"
"45"	"fBodyAccmean-Z"
"46"	"fBodyAccstd-X"
"47"	"fBodyAccstd-Y"
"48"	"fBodyAccstd-Z"
"49"	"fBodyAccmeanFreq-X"
"50"	"fBodyAccmeanFreq-Y"
"51"	"fBodyAccmeanFreq-Z"
"52"	"fBodyAccJerkmean-X"
"53"	"fBodyAccJerkmean-Y"
"54"	"fBodyAccJerkmean-Z"
"55"	"fBodyAccJerkstd-X"
"56"	"fBodyAccJerkstd-Y"
"57"	"fBodyAccJerkstd-Z"
"58"	"fBodyAccJerkmeanFreq-X"
"59"	"fBodyAccJerkmeanFreq-Y"
"60"	"fBodyAccJerkmeanFreq-Z"
"61"	"fBodyGyromean-X"
"62"	"fBodyGyromean-Y"
"63"	"fBodyGyromean-Z"
"64"	"fBodyGyrostd-X"
"65"	"fBodyGyrostd-Y"
"66"	"fBodyGyrostd-Z"
"67"	"fBodyGyromeanFreq-X"
"68"	"fBodyGyromeanFreq-Y"
"69"	"fBodyGyromeanFreq-Z"
"70"	"fBodyAccMagmean"
"71"	"fBodyAccMagstd"
"72"	"fBodyAccMagmeanFreq"
"73"	"fBodyBodyAccJerkMagmean"
"74"	"fBodyBodyAccJerkMagstd"
"75"	"fBodyBodyAccJerkMagmeanFreq"
"76"	"fBodyBodyGyroMagmean"
"77"	"fBodyBodyGyroMagstd"
"78"	"fBodyBodyGyroMagmeanFreq"
"79"	"fBodyBodyGyroJerkMagmean"
"80"	"fBodyBodyGyroJerkMagstd"
"81"	"fBodyBodyGyroJerkMagmeanFreq"
