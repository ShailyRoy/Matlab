clc;
clear all;
y=@(x)(x.^3)./((exp(x))-1);
x_l=-1;
x_u=2;
i=quad(y,x_l,x_u)