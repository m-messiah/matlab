function task5(S,a,b)
	f=inline(S);
	x=a:1/2011:b;
	n=size(x);
	y=1:n(2);
	for i=1:(n(2)-1)
		y(i)=-(f(x(i))-f(x(i+1)))*2011;
	end
	y(n(2))=y(n(2)-1);
	plot(x,y);
	grid on;
end
