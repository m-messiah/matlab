function [ m,k,s ] = dop_task1()
X=fix(fmincon(@myfun, [0;1;1], [1010 1010 9450;0.18 0.19 0;0 0 3.25;-1 0 0; 0 -1 0; 0 0 -1], [35000; 3.4; 16.25;0;0;0]));
Y=fix(linprog( [-30; -22; -136] ,[1010 1010 9450;0.18 0.19 0;0 0 3.25; -1 0 0; 0 -1 0; 0 0 -1], [35000; 3.4; 16.25;0;0;0]));
m=100+(X(1)+Y(1))/2;
k=(X(2)+Y(2))/2;
s=(X(3)+Y(3))/2;
end

function F=myfun(x)
F=-(30*(x(1))+22*x(2)+136*x(3));
end


%
% Matmodel
% Maximize function F=30m+22k+136s, i.e minimize its negative
% Conditions:
% 1) (100+m)*1010+k*1010+s*9450<=136000,
% 2) (100+m)*0.18+k*0.19<=21.4,
% 3) c*3.25<=16.25,
% 4) m,k,s>=0
% 
%X - fmincon, Y - linprog. 
%So, result will be their semisum.
