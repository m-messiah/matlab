function task5()
    fi=0:0.1:(2*pi);
    p1=(1+sin(fi)).*(1+0.9*cos(8*fi)).*(1+0.1*cos(24*fi));
    p2=(0.5+0.05*cos(140*fi)).*p1;
    polar(fi,p1,'g');
    hold on;
    grid on;
    polar (fi,p2,'b');
end

