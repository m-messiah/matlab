function root = task3( x0, S )
eps = .001;
f=inline(S);
fp=inline(diff(S));
x1=x0-f(x0)/fp(x0);
while abs(x1-x0)>eps
    x0=x1;
    x1=x0-f(x0)/fp(x0);
end
root=x1;
end