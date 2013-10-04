function [X1, X2] = task4
X1=linprog([1 2 -1 1], -eye(4), zeros(4,1), [1 2 0 1; 1 1 -1 0; 0 0 0 0; 0 0 0 0], [4 8 0 0]);
X2=fmincon(@myfun, [1 1 1 1], -eye(4), zeros(4,1), [1 2 0 1; 1 1 -1 0; 0 0 0 0; 0 0 0 0], [4 8 0 0]);
end

function F = myfun(x)
F = x(1)+2*x(2)-x(3)+x(4);
end