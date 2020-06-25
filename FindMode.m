% Here we calculate some integrals

f=4.5e-3; % 4.5 mm
% w_L=linspace(2e-3,5e-3,2); 
w_L=2e-3;
lmda=780e-9; % 780 nm
k=2*pi/lmda;

n=80000;
% rho=linspace(0,5*w_L,n);
% 
% [w_L_ar,r
% cs_th = f./sqrt(f.^2+rho.^2);
% sn_th = rho.^2./sqrt(f.^2+rho.^2);
% k_z = k.*cs_th; % k_z = \vec(k) \cdot \vec(z) 
% exp_term= exp(-1i*k*(sqrt(rho.^2+f.^2)-f)-rho.^2./w_L.^2);

% k_t=sqrt(k.^2 - k_z.^2);
k_t=k*linspace(0,1,n);
% k_t

% t10=rho./sqrt(cs_th);
% t20=(1+cs_th)/2;
% t30=besselj(0,k_t.*rho);

fun0 = @(x) I0(x,k_t,f,w_L);
fun1 = @(x) I1(x,k_t,f,w_L);
fun2 = @(x) I2(x,k_t,f,w_L);
tic
a0=integral(fun0,0,Inf,'ArrayValued',true);
a1=integral(fun1,0,Inf,'ArrayValued',true);
a2=integral(fun2,0,Inf,'ArrayValued',true);
toc

save('I0_dat.mat','k_t','k','a0');
save('I1_dat.mat','k_t','k','a1');
save('I2_dat.mat','k_t','k','a2');

