function task6()
    a=-4:0.1:4;
    b=a;
    [x,y]=meshgrid(a,b);
    f=((1-x.^2-y.^2).^2);
    a=((x.^2+(1+y).^2).*(x.^2+(1-y).^2)).^(5/2);
    f=f./a;
    f=log10(f);
    surfc(x,y,f);
    grid on;
end
