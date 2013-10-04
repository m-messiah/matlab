function root = task5( a, b, S )
f=inline(S);

if f(a)*f(b) > 0
    root = 'No roots';
else 
    root = cycl(a,b,f);
end

end

function root = cycl (a,b,f)
c=(a+b)/2;
if f(a)==0
    root = a;
    return;
end

if f(b)==0
    root = b;
    return;
end

if (c-a)<0.0001
    root = c;
else
    if f(a)*f(c)<0
        root = cycl (a,c,f);
        else
        root = cycl (c,b,f);
    end
   
end

end
