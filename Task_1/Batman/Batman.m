theta=0:0.1:150.5;
r=2;
x=r*cosd(theta)+21.7;
y=r*sind(theta);
plot(x,y,'b');
xlim([0 45]);
ylim([-10 25]);
hold on;
theta=29.5:0.1:160;
x=r*cosd(theta)+18.25;
y=r*sind(theta)+0.3;
plot(x,y,'b');
theta=50:0.1:290;
r2=5;
x=r2*cosd(theta)+14.6;
y=r2*sind(theta)+5.85;
plot(x,y,'b');
theta=180:0.1:300;
x=r*cosd(theta)+19.7;
y=r*sind(theta)+9.83;
plot(x,y,'b');
x=20.7:0.1:21.7;
y=8:0.4:12;
plot(x,y,'b');
x=21.7:0.1:22.2;
y=12:-(2/5):10;
plot(x,y,'b');
x=22:0.1:24.5;
y=linspace(10,10,numel(x));
plot(x,y,'b');
x=24.5:0.1:25;
y=10:0.4:12;
plot(x,y,'b');
x=25:0.1:26;
y=12:-0.4:8;
plot(x,y,'b');
theta=240:0.1:360;
x=r*cosd(theta)+27;
y=r*sind(theta)+9.7;
plot(x,y,'b');
theta=259:0.1:490;
x=r2*cosd(theta)+32.2;
y=r2*sind(theta)+5.85;
plot(x,y,'b');
theta=29.5:0.1:180;
x=r*cosd(theta)+25.8;
y=r*sind(theta);
plot(x,y,'b');
theta=21:0.1:160;
x=r*cosd(theta)+29.45;
y=r*sind(theta)+0.3;
plot(x,y,'b');