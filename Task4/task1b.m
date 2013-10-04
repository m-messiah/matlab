function P = task1b(X,Y,S)
N=100000;
p=arrayfun(@task1a,ones(1,N).*X,ones(1,N).*Y);
p=sum(p<=S);
P=p/N;		
end