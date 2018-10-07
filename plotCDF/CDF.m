clc; 
clear all; 
close all;


%% data loading
load('T_synthetic_tuabl_rank_2.mat');  %加载我们自己合成的人工合成数据;


%% 测试3个不同方向的CDF.
T1 = permute(T,[3,1,2]);
T2 = permute(T,[2,3,1]);
[tubalRank,CDF1] =  LowTubalCDF(T, 1);
[tubalRank1,CDF2] = LowTubalCDF(T1, 1);
[tubalRank2,CDF3] = LowTubalCDF(T2, 1);
CDF=[CDF1;CDF2;CDF3];
PlotCDF1(CDF,[1,2,3]);