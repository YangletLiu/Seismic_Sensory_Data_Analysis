In the Data_preprocessing folder: 
The data doesn't work very well when we set the tubal-rank too low during data preprocessing. 
When tubal-rank is 15, you can see that the rank approximation result has some new noise. 
When tubal-rank is 32, we can get a good approximation result.

Two m files in the error folder:
1. Tubal_alt_min.m is used to calculate RSE in the case of different slice missing.
2. Tubal_tnn.m compared the recovery accuracy and convergence speed between Tubal_Alt_Min algorithm and TNN algorithm.
3. The TNN_solver folder is some functions of the TNN algorithm.

In the Plot_CDF folder:
the function of the test low-tubal-rank character of the seismic data in three different dimensions.

T_synthetic_tubal_rank_2.mat is a synthetic seismic data set of size: 64*64*256. Three dimensions are inline,crossline,time respectively. 
According to the characteristics of the seismic data, missing slices only can be along the inline or crossline direction rather than time direction. You need to convert dimensions if you solve the tensor completion problem with slice missing.

The experimental data of size 326*431*531. The three dimensions are: time,inline and crossline. tubal-rank: 45.

The tubal_alt_min.m file is the calculate RSE under the slice missing.
