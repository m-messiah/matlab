function task1 (S,a,b)
	f=inline(S);
	x=a:1/24:b;
	y=f(x);
	plot(x,y);
	grid on;
end
