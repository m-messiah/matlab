function [maxL, minL] = task2( n )
j0=1:n;
i0=1:n;
[i j] = meshgrid(i0,j0);
A=1./(i+j-1)
L=eig(A);
maxL=max(L);
minL=min(L);
end

