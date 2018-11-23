%把X的一个lateral slice转换为列向量

function [b]=vecslice(X)
[n1,~,n3]=size(X);
b=zeros(n1*n3,1);
for i=1:n3
    b((i-1)*n1+1:i*n1)=X(:,:,i);
end
