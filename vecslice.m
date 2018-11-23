%把X的一个lateral slice转换为列向量
%input ：X的一个侧向切片，维度：n1 x 1 x n3
%output：b维度：（n1xn3）x 1

function [b]=vecslice(X)
[n1,~,n3]=size(X);
b=zeros(n1*n3,1);
for i=1:n3
    b((i-1)*n1+1:i*n1)=X(:,:,i);
end
