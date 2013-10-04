function I = task4 (S,a,b)
	f=inline(S);
	x=a:1/2600:b;
	n=size(x);
	y=f(x);
	y(n)=0;
	I = y./2600;
	I=sum(I);
end
