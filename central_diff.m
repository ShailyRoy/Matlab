function [D]= central_diff(f,x,tol,max)
h=1;
d(1)=(f(x+h)-f(x-h))/(2*h);
e(1)=0;
for n=1:2
    h=h/10;
    d(n+1)=(f(x+h)-f(x-h))/(2*h);
    e(n+1)=abs(d(n+1)-d(n));
end

while((e(n)>e(n+1)) & e(n)>tol & n< max)
    h=h/10;
    d(n+2)=(f(x+h)-f(x-h))/(2*h);
    e(n+2)=abs(d(n+2)-d(n+1));
    n=n+1;
end
D=d(n+1);