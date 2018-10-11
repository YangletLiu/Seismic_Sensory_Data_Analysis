In the Data_preprocessing folder: 
The data doesn't work very well when we set the tubal-rank too low during data preprocessing. 
When tubal-rank is 15, you can see that the rank approximation result has some new noise. When tubal-rank is 32, we can get a good approximation result.


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



error文件夹中的两个m文件：
1.Tubal_Alt_Min.m求取不同面缺失情况下的恢复精度RSE。
2.Tubal_TNN.m比较Tubal_Alt_Min算法和TNN算法之间的恢复精度和收敛速度。
3.TNN_solver文件夹中是关于TNN算法的函数。

Plot_CDF文件夹中是测试数据三个不同维度的低秩性的函数。


T_synthetic_tubal_rank_2.mat是合成的地震数据集，大小为：64*64*256,三个维度分别代表,inline,crossline,time。实际做面缺失的时候需要转换维度。

做实验的数据集大小：326*431*531,三个维度分别是：time,inline,crossline。tubal-rank:45。

Tubal_Alt_Min.m文件是计算面缺失下的恢复精度。
