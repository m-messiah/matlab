function task2()
    AB=-2:0.1:5;
    f=zeros(5,numel(AB));
    for ind=1:numel(AB)
        x=AB(ind):3:(AB(ind)+15);
        for i=1:5
            if (x(1)<1)
                f(i,ind)=sqrt(abs(x(i)));
            elseif ((x(1)>=1) && (x(1)<3))
                f(i,ind)=x(i)*x(i);
            elseif (x(1)>=5)
                f(i,ind)=5*sin(x(i));
            end
        end
    end
    for i=1:5
        switch i
            case 1
                col='r';
            case 2
                col='g';
            case 3
                col='b';
            case 4
                col='y';
            case 5
                col='m';
        end
        plot(AB,f(i,:),col);
        grid on;
        hold on;
    end
end

