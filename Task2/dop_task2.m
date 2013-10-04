function dop_task2()
	a=0.1:0.1:(2*pi);
	p=0.1:0.1:(2*pi);
	[a,p]=meshgrid(a,p);
	A=arrayfun(@(a,p)F(a,p),a,p);
	polar(A);
end

function res=g1(a,p)
	res=cos(3.5*a-0.3*p.^4);
end

function res=g2(a,p)
	res=acos(cos(pi+7*a-0.3*p.^4));
end

function res=f1(a,p)
	res=1./(0.005./p+abs(g1(a,p)));
end

function res=f2(a,p)
	res=(8*(sin(3.5*a)).^2)./(1+10*(p./abs(sin(0.5*a))).^2);
	res=res./(abs(sin(2*pi/5.*(p-g2(a,p)+2*p.*(g2(a,p)).^2)))+0.1+(g1(a,p)).^2);
end

function res=f3(a,p)
	res=3./(0.1+(100*p).^2);
end

function res=f4(a,p)
	res=abs(sin(a/2))-p.^2;
end

function res=f5(a,p)
	res=abs(sin(a/2));
end

function res=g3(a,p)
	res=100.*p.*cos(a)+10.*cos(40*p.*sin(a));
end

function res=g4(a,p)
	res=100.*p.*sin(a)+10.*sin(40*p.*cos(a));
end

function res=f6(a,p)
	res=1+0.01./(0.01+(sin(g3(a,p))+sin(g4(p,a))).^2);
end

function res=f7(a,p)
	res=(p+0.2)*0.0002./(0.0001+(a-0.1*p).^2);
end

function res=F(a,p)
	res=((f1(a,p)+f2(a,p)+f3(a,p)).*f4(a,p)-f5(a,p)).*f6(a,p)+f7(a,p);
	if res<0 res=0; end;
end
