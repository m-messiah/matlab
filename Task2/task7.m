function task7()
    r=0:0.1:5;
    fi=0:0.2:10;
    [r,fi]=meshgrid(r,fi);
    x=r.*cos(fi);
    y=r.*sin(fi);
    z=fi;
    surface(x,y,z);
    grid on;
end

