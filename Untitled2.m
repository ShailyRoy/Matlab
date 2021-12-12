clc;
x=[0 1 2 3 4 5];
y=[0 0.5 0.8 0.9 .941 .962];
xnew = 3.5;
ynew = interp1(x, y, xnew)
