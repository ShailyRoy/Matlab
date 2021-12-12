x=1:.2:2.2;
y=[2.7183 3.3201 4.0552 4.953 6.0496 7.3891 9.025];
d=diff(y)./diff(x);

n=length(x);
xm=(x(1:n-1)+x(2:n))./2;
g=diff(d)./diff(xm);
xm1=(xm(1:n-2)+xm(2:n-1))./2;
yd=interp1(xm1,g,1.2)