function res=task1a(X,Y)
xL = rand(1,5).*50;
yL = rand(1,5).*50;
n=nargin;
if n==0
    x=0:1:50;
    y=x;
    [x,y] = meshgrid(x,y);
    L=zeros(51);
    for k=1:5
        i0=xL(1,k);
        j0=yL(1,k);
        light = 10000./(4*pi*((x-i0).^2 + (y-j0).^2 + 1));
        L=L+light;
    end
    %1) 
    figure;
    v = ((4:20)/4).^4;
    contour(L,v);
    axis equal
    %2) 
    figure;
    v=(sort(((xL-yL).^2))/50).^2;
    contour(L,v);
    %3) 
    figure;
    v=(eig(L)/2).^2;
    contour(L,v);
    %4) 
    figure;
    v=((20:-1:1)*2/pi).^pi;
    contour(L,v);
    
    
else
    light=arrayfun(@(x,y,i0,j0)(10000./(4*pi*((X-i0).^2 + (Y-j0).^2 + 1))),ones(1,5).*X,ones(1,5).*Y,xL,yL);
    res=sum(light);
end
end

