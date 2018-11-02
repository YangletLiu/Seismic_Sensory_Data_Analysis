clc; 
clear all; 
close all;

%% data loading
load('volume.mat');  %数据大小：326*431*531
T = volume(:,:,:);
% load('T_synthetic_tuabl_rank_2.mat');%T = T(:, :, 1:256);   %加载我们自己合成的人工合成数据;

[tubalRank,CDF1] = LowTubalCDF(T, 1);

[U,S,V] = tSVDs(T,32);

temp = tprod(U,S);
T_test = tprod(temp,V);
RSE =  norm(T_test(:) - T(:)) / norm(T(:));

[tubalRank1,CDF2] = LowTubalCDF(T_test, 1);
CDF=[CDF1;CDF2];
PlotCDF1(CDF,[1,2]);