function [XY check] = task6B

XY=fsolve(@myfun, [2;2]);
check = myfun(XY);
end

function F = myfun(x)
F=[x(1)*x(2)*(x(1)-x(1)*x(2)^2+x(2))-(x(1)+x(2))^(1/2) ;
    0.4*(x(1)-x(2))+x(2)^2-(x(1)-x(2))^2];
end
