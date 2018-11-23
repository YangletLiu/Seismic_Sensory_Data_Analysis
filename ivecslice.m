%列向量转换为矩阵的过程
%即：把X的一个lateral slice转换为列向量的反过程
%input：向量b，目标x的维度r x 1 x n
%output： x的一个侧向切片，维度： r x 1 x n

function [X]=ivecslice(b,r,n)
X=zeros(r,1,n);
for i=1:n
    X(:,:,i)=b((i-1)*r+1:i*r,1);
end
