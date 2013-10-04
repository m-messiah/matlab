function [X, p] = task1
X=fmincon(@myfun, [-5;-5;-5], [], [], [], [], [], [], @mycon);

[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
surf(x,y,x.^2+y.^2);
hold on
p=plot3(X(1),X(2), myfun(X), 'rO');
t=0:0.01:2*pi;
plot(2^(3/2)*cos(t), 2*sin(t),  'b')
end

function F = myfun(x)
F = x(1)^2+x(2)^2;
end

function [c, ceq] = mycon(x)
c=[]; 
ceq = x(1)^2+2*x(2)^2 - 8;
end
