%把X的一个lateral slice转换为列向量的反过程

function [X]=ivecslice(b,r,n)
X=zeros(r,1,n);
for i=1:n
    X(:,:,i)=b((i-1)*r+1:i*r,1);
end
