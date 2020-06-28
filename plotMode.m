clearvars
close all
load('I0_ary_dat.mat');
load('I1_ary_dat.mat');
load('I2_ary_dat.mat');

figure(1)
plot(k_t./k,[real(a0); real(a1)*6; real(a2)*60])