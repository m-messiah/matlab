function [X, p] = task2
X=fmincon(@myfun, [-5;-5;-5], [], [], [], [], [], [], @mycon);

[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
surf(x,y,x.^2+y.^2);
hold on
p=plot3(X(1),X(2), myfun(X), 'rO');
end

function F = myfun(x)
F = x(1)^2+x(2)^2;
end

function [c, ceq] = mycon(x)
c=[x(1)^2+x(2)^2 - 4, 4- 4*x(1)^2-x(2)^2]; 
ceq = [] ;
end


