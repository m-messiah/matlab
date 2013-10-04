function task4(x0,y0,x1,y1)
    syms a b c z;
    res=solve(a*x0^2+b*x0+c-y0,a*x1^2+b*x1+c-y1,a,b,c);
    a=subs(res.a,-5:0.1:5);
    b=subs(res.b,-5:0.1:5);
    c=subs(res.c,-5:0.1:5);
    syms x y points;
    y=a.*x.^2+b.*x+c;
    %points=zeros(numel(y),2);
    pointsX=-b/2./a; 
    pointsY=b.^2/4./a-b.^2/2./a+c;
    for i=1:numel(y)
        h=ezplot(y(i),(min(x0,x1)-2),(max(x0,x1)+2));
        set(h,'Color',[i/numel(y) 1-i/numel(y) rand(1)])
        hold on;
        grid on;
    end
    plot(pointsX,pointsY,'.k');
    hold on;
    grid on;
end

