In the Data_preprocessing folder: 
The data doesn't work very well when we set the tubal-rank too low during data preprocessing. 
When tubal-rank is 15, you can see that the rank approximation result has some new noise. When tubal-rank is 32, we can get a good approximation result.



Data_preprocessing文件夹中放地震数据预处理的图。可以看到，数据在进行低秩性处理的过程中，当tubal-rank设置过低时，效果并不是很好。
当tubal-rank设置为15时，可以看到秩近似后的图像有些地方添加了新的噪声。tubal-rank设置为32较合理。









Two m files in the error folder:
1. Tubal_alt_min.m is used to calculate RSE in the case of different slice missing.
2. Tubal_tnn.m compared the recovery accuracy and convergence speed between Tubal_Alt_Min algorithm and TNN algorithm.
3. The TNN_solver folder is some functions of the TNN algorithm.

In the Plot_Seismic folder：
the function of plotting the seismic data. Seislab.zip needs to be decompressed.

In the Plot_CDF folder:
the function of the test low-tubal-rank character of the seismic data in three different dimensions.

T_synthetic_tubal_rank_2.mat is a synthetic seismic data set of size: 64*64*256. Three dimensions are inline,crossline,time respectively. 
According to the characteristics of the seismic data, missing slices only can be along the inline or crossline direction rather than time direction. You need to convert dimensions if you solve the tensor completion problem with slice missing.

The experimental data of size 326*431*531. The three dimensions are: time,inline and crossline. tubal-rank: 45.

The tubal_alt_min.m file is the calculate RSE under the slice missing.

Put the experimental figure in the figure folder.


error文件夹中的两个m文件：
1.Tubal_Alt_Min.m求取不同面缺失情况下的恢复精度RSE。
2.Tubal_TNN.m比较Tubal_Alt_Min算法和TNN算法之间的恢复精度和收敛速度。
3.TNN_solver文件夹中是关于TNN算法的函数。

Plot_CDF文件夹中是测试数据三个不同维度的低秩性的函数。


Plot_Seismic文件夹中关于绘制地震数据的函数，seislab.zip需要解压缩。


T_synthetic_tubal_rank_2.mat是合成的地震数据集，大小为：64*64*256,三个维度分别代表,inline,crossline,time。实际做面缺失的时候需要转换维度。

做实验的数据集大小：326*431*531,三个维度分别是：time,inline,crossline。tubal-rank:45。

Tubal_Alt_Min.m文件是计算面缺失下的恢复精度。

figure文件夹中放实验图。
