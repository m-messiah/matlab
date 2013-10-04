x = -4:0.01:4;
y = x;

[X1 Y1] = meshgrid (x, y);
z = X1.^2 + Y1.^2;

% figure;
% contour(z);
% axis equal;
% grid on;
% % 
figure;
contour(z,12);
axis equal;
grid on;

figure;
v = ((1:12)/2).^2;
contour(z,v);
axis equal;
grid on;
