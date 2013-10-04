function task3 (S,a,b,c,d)
	f=inline(S);
	x=a:1/20:b;
	y=c:1/20:d;
	[a,b]=meshgrid(x,y);
	z=f(a,b);
	surface(x,y,z);
end
