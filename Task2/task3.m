function task3( n )
    AB=-10:0.1:10;
    fn=zeros(1,numel(AB));
    for ind=1:numel(AB)
        fn(ind)=f(AB(ind),n);
    end
    plot(AB,fn);
    grid on;
end

function res = f(x,n)
    res=0;
    for i=1:n
        res=res+sin(2*i*x)/2/i;
    end
end