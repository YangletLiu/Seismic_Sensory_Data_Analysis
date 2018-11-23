%先对P的一个侧向切片的每一个tube做循环矩阵构成新tensorB，再对B的每个tube做对角阵构成新矩阵
% input ：P：n1 x 1 X n3  （实际为P的一个侧向切片）
% output：A：（n1xn3）x （n1xn3）
 

function [A]=circdiag(P)
[n1,~,n3]=size(P);

B=zeros(n3,n3,n1);
for i=1:n1
    B(:,:,i)=circ(P(i,:,:));
end
A=zeros(n1*n3,n1*n3);
for i=1:n3
    for j=1:n3
        A((i-1)*n1+1:i*n1,(j-1)*n1+1:j*n1)=diag(squeeze(B(i,j,:)));
    end
end
