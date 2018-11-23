%将原 alter_min_LS_one_step 中部分代码转换为函数后进行调用
 
function [Y_f] = alter_min_LS_one_step_new(T_omega_f, omega_f, X_f)
% the target dimension: r * s * k

[m,n,k] = size(T_omega_f);
[m,r,k] = size(X_f);

Y_f = zeros(r, n, k);

%Çó½âX_fµÄ¿é¶Ô½Ç¾ØÕó
 X_f_new = blockdiag(X_f);

%% we recover the lateral slice one-by-one.
residual = 0;
tensor_V = zeros(k * m, 1);
temp_Y_f = zeros(r * k, 1);
for i = 1:n
    tensor_V = vecslice(T_omega_f(:,i,:));
    omega_f_new = circdiag(omega_f(:,i,:));
    temp =  (omega_f_new) * (X_f_new);   
    temp_Y_f = pinv(temp'*temp)*temp'* tensor_V;
    Y_f = ivecslice(temp_Y_f,r,k);
    
end
