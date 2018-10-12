In the Data_preprocessing folder: 
==
The data doesn't work very well when we set the tubal-rank too low during data preprocessing. <br>
When tubal-rank is 15, we can see that the rank approximation result has some new noise.  <br>
When tubal-rank is 32, we can get a good approximation result. <br>

**The CDF of singular values for the seismic data, compared with processed data.**
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Data_preprocessing/原始数据与预处理数据的CDF图对比.png)


Two m files in the error folder:
==
1. Tubal_alt_min.m is used to calculate RSE in the case of different slice missing. <br>
2. Tubal_tnn.m compared the recovery accuracy and convergence speed between Tubal_Alt_Min algorithm and TNN algorithm. <br>
3. The TNN_solver folder is some functions of the TNN algorithm. <br>

In the Plot_CDF folder:
==
the function of the test low-tubal-rank character of the seismic data in three different dimensions. <br>


**T_synthetic_tubal_rank_2.mat is a synthetic seismic data set of size: 64*64 *256. Three dimensions are inline,crossline,time respectively. **<br>

**The experimental data of size 326*431 *531. The three dimensions are: time,inline and crossline. tubal-rank: 45.**<br>

**The tubal_alt_min.m file is the calculate RSE under the slice missing. **<br>
