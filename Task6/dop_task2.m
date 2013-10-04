function [ near, far ] = dop_task2()
MXY=arrayfun(@(x)fsolve(@mnojestvo,[x;0]),-5:0.1:5, 'UniformOutput',0);
MX=arrayfun(@(i)fix(MXY{i}(1)*10000)/10000,1:1:numel(MXY))';
MY=arrayfun(@(i)fix(MXY{i}(2)*10000)/10000,1:1:numel(MXY))';
MXY=unique([MX MY],'rows');
SXY=fsolve(@system,[2;2]);
SX=SXY(1,1);
SY=SXY(2,1);
distX=arrayfun(@(x,y)(x-y)^2,SX*ones(1,size(MXY,1)),MXY(:,1)');
distY=arrayfun(@(x,y)(x-y)^2,SY*ones(1,size(MXY,1)),MXY(:,2)');
dists=arrayfun(@(x,y)(x+y)^0.5,distX,distY);
[d,indfar]=max(dists);
[d,indnear]=min(dists);
near.x=MXY(indnear,1);
near.y=MXY(indnear,2);
far.x=MXY(indfar,1);
far.y=MXY(indfar,2);
end

function F=mnojestvo(x)
    F=[2*x(1)^2+3*x(1)*x(2)+5*x(2)^2+x(1)-30;
        x(2)-sin(x(1))-1];
end

function F=system(x)
    F=[x(1)^2+3*x(1)*x(2)+2*x(2)^2;
        3*x(1)*x(2)+7*x(2)-1];
end
