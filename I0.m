function [outputArg1] = I0(rho,k_t,f,w_L,lmda)
%I0 Summary of this function goes here
%   Detailed explanation goes here

% f=4.5e-3; % 4.5 mm
% w_L=2e-3; 
% lmda=780e-9; % 780 nm
k=2*pi/lmda;


cs_th = f./sqrt(f.^2 + rho.^2);
% sn_th = rho.^2./sqrt(f.^2+rho.^2);
exp_term= exp(-1i*k*(sqrt(rho.^2+f.^2)-f)-rho.^2./w_L.^2);

t10=rho./sqrt(cs_th);
t20=(1+cs_th)/2;
t30=besselj(0,k_t.*rho);

outputArg1=t10.*t20.*t30.*exp_term;
end


