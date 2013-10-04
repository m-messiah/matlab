function Xt = task4( f, g )
syms t x C;
F=int(f,t);
G=int(g,x);
X = F - G + C;
Xt=solve(X,x);

end

