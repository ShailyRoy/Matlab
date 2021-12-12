function yy=lagrange_int(x,y,n)
l=zeros(length(x),length(x));
for p=1:length(x)
    for i=1:length(x)
        v=1;
        for k=1:length(x)
            if i~=k
                v=v*(x(p)-x(k))/(x(i)-x(k));
            end
        end
        l(i,:)=v;
    end
end
yy=polyfit(x,y,n);
disp(yy)
end
