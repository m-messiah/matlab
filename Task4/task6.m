function root = task6( x0, S )

f = inline(S);
root = cycl (x0,f,inf);

end


function root = cycl (x0, f, d0)

if f(x0)== 0
    root = x0;
    return;
end

dx = 0.01;
dy = f(x0 + 0.01) - f(x0);
Fo = dy/dx;

x1 = x0 - f(x0)/Fo;

d1 = abs(x1-x0);

if d1 > d0
   root = 'None. Bad method';
   return
end

if d1 < 0.01
    root = x1;
else
    root = cycl (x1,f,d1);   
end

end