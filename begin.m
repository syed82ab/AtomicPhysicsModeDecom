% We are going to calculate the field decomposition and use it to propagate
% the field to the focus of a lens using the paper and thesis of Tey Meng 
% Khoon.

mode_var_filename='I0_dat.mat';%'I0_ary_dat.mat';

if ~exist(mode_var_filename,'file')
    error('modes not calculated yet');
end

load('I0_dat.mat');
load('I1_dat.mat','a1');
load('I2_dat.mat','a2');
%%
s=1;
% cs_th = f./sqrt(f.^2+rho.^2);
k_z=sqrt(k.^2 - k_t.^2);
kappa_mu = pi*k_t.*(a0.* ((s.*k+k_z)./k) + a1.*1i*sqrt(2).*k_t./k + ...
                    a2.* ((s.*k-k_z)./k));
                
                    