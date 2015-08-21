# script for generating codebook in R using the memisc package

library(memisc)

# passing the final output from run_analysis.R here
dt <- data.set(data)
names(dt) <- names(data) 
colnames <- names(dt)

# setting the description of each coloumn name
dt <- within(dt,
             {
                description(subjectId             )             <- "Id of the Subject that performed the activity"
                description(activityName          )             <- "The type of activity performed by the subject"
               
                description(tBodyAccelerationMeanX)             <- "Mean of the mean body acceleration recorded on x-axis in the time domain"
                description(tBodyAccelerationMeanY)             <- "Mean of the mean body acceleration recorded on y-axis in the time domain"
                description(tBodyAccelerationMeanZ)             <- "Mean of the mean body acceleration recorded on z-axis in the time domain"
                description(tBodyAccelerationStdX )             <- "Mean of the std dev. of body acceleration recorded on x-axis in the time domain"
                description(tBodyAccelerationStdY )             <- "Mean of the std dev. of body acceleration recorded on y-axis in the time domain"
                description(tBodyAccelerationStdZ )             <- "Mean of the std dev. of body acceleration recorded on z-axis in the time domain"
                description(tGravityAccelerationMeanX)          <- "Mean of the mean gravity acceleration recorded on x-axis in the time domain"
                description(tGravityAccelerationMeanY)          <- "Mean of the mean gravity acceleration recorded on y-axis in the time domain"
                description(tGravityAccelerationMeanZ)          <- "Mean of the mean gravity acceleration recorded on z-axis in the time domain"
                description(tGravityAccelerationStdX )          <- "Mean of the std dev. of gravity acceleration recorded on x-axis in the time domain"
                description(tGravityAccelerationStdY )          <- "Mean of the std dev. of gravity acceleration recorded on y-axis in the time domain"
                description(tGravityAccelerationStdZ )          <- "Mean of the std dev. of gravity acceleration recorded on z-axis in the time domain"
                description(tBodyAccelerationJerkMeanX)         <- "Mean of the mean body acceleration jerk recorded on x-axis in the time domain"
                description(tBodyAccelerationJerkMeanY)         <- "Mean of the mean body acceleration jerk recorded on y-axis in the time domain"
                description(tBodyAccelerationJerkMeanZ)         <- "Mean of the mean body acceleration jerk recorded on z-axis in the time domain"
                description(tBodyAccelerationJerkStdX )         <- "Mean of the std dev. of body acceleration jerk recorded on x-axis in the time domain"
                description(tBodyAccelerationJerkStdY )         <- "Mean of the std dev. of body acceleration jerk recorded on y-axis in the time domain"
                description(tBodyAccelerationJerkStdZ )         <- "Mean of the std dev. of body acceleration jerk recorded on z-axis in the time domain"
                description(tBodyAccelerationJerkStdZ )         <- "Mean of the std dev. of body acceleration jerk recorded on z-axis in the time domain"
                description(tBodyGyroscopeMeanX       )         <- "Mean of the mean angular momentum of body recorded on x-axis in the time domain"
                description(tBodyGyroscopeMeanY       )         <- "Mean of the mean angular momentum of body recorded on y-axis in the time domain"
                description(tBodyGyroscopeMeanY       )         <- "Mean of the mean angular momentum of body recorded on z-axis in the time domain"
                description(tBodyGyroscopeStdX        )         <- "Mean of the std dev. of angular momentum of body recorded on x-axis in the time domain"
                description(tBodyGyroscopeStdY        )         <- "Mean of the std dev. of angular momentum of body recorded on y-axis in the time domain"
                description(tBodyGyroscopeStdZ        )         <- "Mean of the std dev. of angular momentum of body recorded on z-axis in the time domain"
                description(tBodyGyroscopeJerkMeanX   )         <- "Mean of the mean angular momentum of body jerk recorded on x-axis in the time domain"
                description(tBodyGyroscopeJerkMeanY   )         <- "Mean of the mean angular momentum of body jerk recorded on y-axis in the time domain"
                description(tBodyGyroscopeJerkMeanZ   )         <- "Mean of the mean angular momentum of body jerk recorded on z-axis in the time domain"
                description(tBodyGyroscopeJerkStdX    )         <- "Mean of the std dev. of angular momentum of body jerk recorded on x-axis in the time domain"
                description(tBodyGyroscopeJerkStdY    )         <- "Mean of the std dev. of angular momentum of body jerk recorded on y-axis in the time domain"
                description(tBodyGyroscopeJerkStdZ    )         <- "Mean of the std dev. of angular momentum of body jerk recorded on z-axis in the time domain"
                description(tBodyAccelerationMagnitudeMean)     <- "Mean of the body acceleration magnitude recorded in the time domain"
                description(tBodyAccelerationMagnitudeStd )     <- "Mean of the std dev. of body acceleration magnitude recorded in the time domain"
                description(tGravityAccelerationMagnitudeMean)  <- "Mean of the gravity acceleration magnitude recorded in the time domain"
                description(tGravityAccelerationMagnitudeStd )  <- "Mean of the std dev. of gravity acceleration magnitude recorded in the time domain"
                description(tBodyAccelerationJerkMagnitudeMean) <- "Mean of the body acceleration jerk magnitude recorded in the time domain"
                description(tBodyAccelerationJerkMagnitudeStd ) <- "Mean of the std dev. of body acceleration jerk magnitude recorded in the time domain"
                description(tBodyGyroscopeMagnitudeMean       ) <- "Mean of the body angular momemtum magnitude recorded in the time domain"
                description(tBodyGyroscopeMagnitudeStd        ) <- "Mean of the std dev. of body angular momentum magnitude recorded in the time domain"
                description(tBodyGyroscopeJerkMagnitudeMean   ) <- "Mean of the body angular momemtum jerk magnitude recorded in the time domain"
                description(tBodyGyroscopeJerkMagnitudeStd    ) <- "Mean of the std dev. of body angular momentum jerk magnitude recorded in the time domain"
                
                description(fBodyAccelerationMeanX)             <- "Mean of the mean body acceleration recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationMeanY)             <- "Mean of the mean body acceleration recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationMeanZ)             <- "Mean of the mean body acceleration recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationStdX )             <- "Mean of the std dev. of body acceleration recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationStdY )             <- "Mean of the std dev. of body acceleration recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationStdZ )             <- "Mean of the std dev. of body acceleration recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationMeanFreqX)         <- "Mean of the mean body acceleration frequency recorded on x-axis"
                description(fBodyAccelerationMeanFreqY)         <- "Mean of the mean body acceleration frequency recorded on y-axis"
                description(fBodyAccelerationMeanFreqY)         <- "Mean of the mean body acceleration frequency recorded on z-axis"
                description(fBodyAccelerationJerkMeanX)         <- "Mean of the mean body acceleration jerk recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkMeanY)         <- "Mean of the mean body acceleration jerk recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkMeanZ)         <- "Mean of the mean body acceleration jerk recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkStdX )         <- "Mean of the std dev. of body acceleration jerk recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkStdY )         <- "Mean of the std dev. of body acceleration jerk recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkStdZ )         <- "Mean of the std dev. of body acceleration jerk recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkStdZ )         <- "Mean of the std dev. of body acceleration jerk recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMeanX       )         <- "Mean of the mean angular momentum of body recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMeanY       )         <- "Mean of the mean angular momentum of body recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMeanY       )         <- "Mean of the mean angular momentum of body recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeStdX        )         <- "Mean of the std dev. of angular momentum of body recorded on x-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeStdY        )         <- "Mean of the std dev. of angular momentum of body recorded on y-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeStdZ        )         <- "Mean of the std dev. of angular momentum of body recorded on z-axis in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMeanFreqX   )         <- "Mean of the freqyency of mean angular momentum of body recorded on x-axis"
                description(fBodyGyroscopeMeanFreqY   )         <- "Mean of the freqyency of mean angular momentum of body recorded on y-axis"
                description(fBodyGyroscopeMeanFreqZ   )         <- "Mean of the freqyency of mean angular momentum of body recorded on z-axis"
                description(fBodyAccelerationMagnitudeMean)     <- "Mean of the body acceleration magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyAccelerationMagnitudeStd )     <- "Mean of the std dev. of body acceleration magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkMagnitudeMean) <- "Mean of the body acceleration jerk magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkMagnitudeStd ) <- "Mean of the std dev. of body acceleration jerk magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyAccelerationJerkMagnitudeMeanFreq) <- "Mean of the frequency of body acceleration jerk magnitude"
                description(fBodyGyroscopeMagnitudeMean       ) <- "Mean of the body angular momemtum magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMagnitudeStd        ) <- "Mean of the std dev. of body angular momentum magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeMagnitudeMeanFreq   ) <- "Mean of the frequency of body angular momentum magnitude"
                description(fBodyGyroscopeJerkMagnitudeMean   ) <- "Mean of the body angular momemtum jerk magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeJerkMagnitudeStd    ) <- "Mean of the std dev. of body angular momentum jerk magnitude recorded in the frequency domain after fourier transfrom"
                description(fBodyGyroscopeJerkMagnitudeMeanFreq)<-"Mean of the frequency of body angular momentum jerk magnitude"
                
                description(angletBodyAccelerationMeangravity)  <-"Mean of the angle between body acceleration and gravity acceleration vectors"
                description(angletBodyAccelerationJerkMeangravityMean) <-"Mean of the angle between body acceleration jerk and gravity acceleration vectors"
                description(angletBodyGyroscopeMeangravityMean)        <-"Mean of the angle between body angular momentum and gravity acceleration vectors"
                description(angletBodyGyroscopeJerkMeangravityMean)    <-"Mean of the angle between body angular momentum jerk and gravity acceleration vectors"
                description(angleXgravityMean)                         <-"Mean of the angle between x-axis and gravity acceleration vectors"
                description(angleYgravityMean)                         <-"Mean of the angle between y-axis and gravity acceleration vectors"
                description(angleZgravityMean)                         <-"Mean of the angle between z-axis and gravity acceleration vectors"
             })

# creating codebook
description(dt)
CodeBook <- codebook(dt)

# saving codebook as a markdownfile
capture.output(CodeBook, file = 'CodeBook.md')
