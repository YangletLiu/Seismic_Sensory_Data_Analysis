In the Data_preprocessing folder: 
==
The data doesn't work very well when we set the tubal-rank too low during data preprocessing. <br>
When tubal-rank is 15, we can see that the rank approximation result has some new noise.  <br>
When tubal-rank is 32, we can get a good approximation result. <br>


**The CDF of singular values for the seismic data, compared with processed data.**
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Data_preprocessing/原始数据与预处理数据的CDF图对比.png)


**Original data.**
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Data_preprocessing/original_data.png)

**Processed data.**
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Data_preprocessing/tubal_rank_32_approximate_data.png)

These figures are obtained by running the test_r_error.m in the Data_preprocessing folder.


Result:
==

The result of TNN algorithm and Tubal-Alt-Min algorithm:
--
**data size: t * m * n: 300 * 120 * 80, tubal-rank:15.**<br>
**RSE of TNN:6.1e-03. RSE of Tubal-Alt-Min:1.56e-02.**<br>
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Result/slicemissingrecovery.png)

(a) Slice view of the original complete data. <br>
(b) Slice view of reconstructed data using TNN. <br>
(c) Slice view of reconstructed data using Tubal-Alt-Min. <br>

run Tubal_Alt_Min.m to get the result.

The reconstruction error of TNN algorithm and Tubal-Alt-Min algorithm:
--
![](https://github.com/hust512/Seismic_Sensory_Data_Analysis/blob/master/Result/error_v3.png)

The figure shows the RSE of the Tubal-Alt-Min algorithm and TNN algorithm for varying frontal slice sampling rates from 80% to 98%.<br>

run Tubal_TNN.m in the error folder to get the figure


The figure shows the recovery result of a special seismic traces in the missing slices by using Tubal-Alt-Min algorithm.<br>


Two m_files in the error folder:
==
1. Tubal_Alt_Min_error.m is used to calculate RSE in the case of different slice missing. <br>
2. Tubal_TNN.m compared the recovery accuracy and convergence speed between Tubal_Alt_Min algorithm and TNN algorithm. <br>
3. The TNN_solver folder is some functions of the TNN algorithm. <br>

In the Plot_CDF folder:
==
the function of the test low-tubal-rank character of the seismic data in three different dimensions. <br>


**T_synthetic_tubal_rank_2.mat is a synthetic seismic data set of size: 64 * 64 * 256. Three dimensions are inline,crossline,time respectively.**<br>

**The experimental data of size 326 * 431 * 531. The three dimensions are: time,inline and crossline. tubal-rank: 45.**<br>

**The SeisPlot.zip is the toolbox to plot the seismic data.** <br>
