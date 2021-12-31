%Rectangles
%Big Rect
xRect=[-10,10,10,-10,-10];
yRect=[50,50,-10,-10,50];
plot(xRect,yRect,'black');
fill(xRect,yRect,'black');
hold on;

%Small Rect
xRect=[-2,2,2,-2,-2];
yRect=[-10,-10,-50,-50,-10];
plot(xRect,yRect,'black');
fill(xRect,yRect,[0.5 0.5 0.5]);
hold on;

%Circle variables
r=7;
theta = 0:0.1:360;
while 1
%Green Circle
xg=r*sind(theta); 
yg=r*cosd(theta);
plot(xg,yg,'g');
hold on;

%Yellow Circle
xy=r*sind(theta); 
yy=r*cosd(theta)+20;
plot(xy,yy,'y');
hold on;

%Red Circle
xr=r*sind(theta); 
yr=r*cosd(theta)+40;
plot(xr,yr,'r');


xlim([-80 80]);
ylim([-80 80])
%Red
fill(xr,yr,'r');
pause(3);
fill(xr,yr,'black');
%Red Circle
xr=r*sind(theta); 
yr=r*cosd(theta)+40;
plot(xr,yr,'r');

%Yellow
fill(xy,yy,'y');
pause(3);
fill(xy,yy,'black');
%Yellow Circle
xy=r*sind(theta); 
yy=r*cosd(theta)+20;
plot(xy,yy,'y');
hold on;

%Green
fill(xg,yg,'g');
pause(3);
fill(xg,yg,'black');
%Green Circle
xg=r*sind(theta); 
yg=r*cosd(theta);
plot(xg,yg,'g');
hold on;

%Red
fill(xr,yr,'r');
pause(3);
fill(xr,yr,'black');
end