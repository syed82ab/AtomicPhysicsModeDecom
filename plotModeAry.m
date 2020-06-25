clearvars
close all
load('I0_ary_dat.mat');
load('I1_ary_dat.mat');
load('I2_ary_dat.mat');

figure(1)
plot(k_t./k,real(a0));
figure(2);
plot(k_t./k,real(a1)*6)
figure(3);
plot(k_t./k,real(a2)*60)