% Here we calculate some integrals

f=4.5; % 4.5 mm
% w_L=linspace(2,5,2); 
w_L_no=31;
w_L_list=linspace(0,9,w_L_no);
lmda=780e-6; % 780 nm
k=2*pi/lmda;

n=80000;
% rho=linspace(0,5*w_L,n);
% 
% cs_th = f./sqrt(f.^2+rho.^2);
% sn_th = rho.^2./sqrt(f.^2+rho.^2);
% k_z = k.*cs_th; % k_z = \vec(k) \cdot \vec(z) 
% exp_term= exp(-1i*k*(sqrt(rho.^2+f.^2)-f)-rho.^2./w_L.^2);

% k_t=sqrt(k.^2 - k_z.^2);
k_t=k*linspace(0,1,n);
% [k_t_ary,w_L_ary]=ndgrid(k_t,w_L);
k_t_ary=k_t;
% t10=rho./sqrt(cs_th);
% t20=(1+cs_th)/2;
% t30=besselj(0,k_t.*rho);
for i=1:w_L_no
    w_L_ary=w_L_list(i);
fun0 = @(x) I0(x,k_t_ary,f,w_L_ary,lmda);
fun1 = @(x) I1(x,k_t_ary,f,w_L_ary,lmda);
fun2 = @(x) I2(x,k_t_ary,f,w_L_ary,lmda);
xmin=0;
tic
a0=integral(fun0,xmin,Inf,'ArrayValued',true);
toc
save(['I0_ary_dat' num2str(i) '.mat'],'k_t','w_L_list','k','a0','i');
clear a0;
tic
a1=integral(fun1,xmin,Inf,'ArrayValued',true);
toc
save(['I1_ary_dat' num2str(i) '.mat'],'k_t','w_L_list','k','a1','i');
clear a1;
tic
a2=integral(fun2,xmin,Inf,'ArrayValued',true);
toc
save(['I2_ary_dat' num2str(i) '.mat'],'k_t','w_L_list','k','a2','i');
clear a2;
end