%P的后向切片的每一个tube做循环矩阵，再做对角

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
