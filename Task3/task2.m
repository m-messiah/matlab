function task2 (S,a,b)
	f=inline(S);
	fi=a:1/24:b;
	r=f(fi);
	polar(fi,r);
	grid on;
end
