%把三阶tensorX转换为块对角阵
%    输入：X 维度(n1,n2,n3)
%    输出：Y 维度（n1xn3,n2xn3）

function [Y]=blockdiag(X)
[n1,n2,n3]=size(X);
Y=zeros(n1*n3,n2*n3);
for i=1:n3
        Y((i-1)*n1+1:i*n1,(i-1)*n2+1:i*n2)=X(:,:,i);
end