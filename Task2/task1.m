function task1 (M,N)
    AB=0:0.1:3;
    f=zeros(1,31);
    for ind=1:31
        x=AB(ind):1:(AB(ind)+M);
        for i=1:M
            for j=1:N
                f(ind)=f(ind)+x(i)^j;
            end
        end
    end
    plot(AB,f);
    grid on;
end
