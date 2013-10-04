function [res,N]=task1( f,x0,a,eps )
    I=inline(f);
    %x=(x0-a):0.1:(x0+a);
    %f=I(x);
    syms x xi;
    f1=I(xi);
    n=1;
    xdiap=((x0-a):0.1:(x0+a));
    f2=taylor(f1,n,x0);
    while (max(subs(f2,xdiap)-subs(I(x),xdiap)) > eps)
        n=n+1;
        f2=taylor(I(x),n,x0);
    end
    %plot((x0-a):0.1:(x0+a),f,'r');
    %hold on;
    %ezplot(f2,(x0-a):0.1:(x0+a));
    res=f2;
    N=n;
end

