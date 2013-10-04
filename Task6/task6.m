function XYZ = task6

XYZ=fsolve(@myfun, [3;3;3]);

end

function F = myfun(x)
F=[x(1)^2+x(2)^2+x(3)^2-1 ; 2*x(1)^2+x(2)^2-4*x(3) ; 3*x(1)^2-4*x(2)+x(3)^2];
end