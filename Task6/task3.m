function X = task3
X=fmincon(@myfun, [-5;-5;-5], [], [], [], [], [], [], @mycon);
end

function F = myfun(x)
F = x(1)^2+x(2)^2 +x(3)^2;
end

function [c, ceq] = mycon(x)
c=[]; 
ceq = [x(1)^2+x(2)^2 - x(3), x(1)+x(2)+x(3)-4] ;
end
