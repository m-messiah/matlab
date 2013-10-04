function Xt = task5( f, g, t0, x0 )
syms x t C;
F=int(f,t);
G=int(1/g,x);
g0=inline(G);
f0=inline(F);
C=g0(x0)-f0(t0);
Xt=solve(F - G + C,x);
end

