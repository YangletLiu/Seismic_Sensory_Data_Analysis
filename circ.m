%产生列向量x的循环矩阵y
 
function [y]=circ(x)
x=squeeze(x);
[n,~]=size(x);
y=zeros(n,n);
for j=1:n
    y(j:n,j)=x(1:n-j+1);
    y(1:j-1,j)=x(n-j+2:n);
end
