function dx = ChaosECG(time,X,A)

x = X(1);
y = X(2);
z = X(3);
w = X(4);
zn = X(5);

dx = zeros(5,1);

%SI = 12*sin(15*(time));
ag = [0.04319 -0.03 0.3955 -0.045 0.055];
bg = [-0.4 -0.045 -0.009 0.07096 1.8];
cg = [0.063 0.032 0.02063 0.016 1.3];

Qi = bg;
b = cg/sqrt(2);
a = 2*ag./(cg.^2);

k2 = 0.005;
A = 3.75;
B = 10;
d = 1;
n = - 1;
m0 = - 0.33;
m1 = 0.25;
T = 5.5;
dx(1) = T*(-A*(z + x*(m0 + m1*w^2)));
dx(2) = T*(-B*z);
dx(3) = T*(-d*(x - y));
dx(4) = T*(n*x);

zna = (-z*(dx(2))+y*dx(3))/(y^2+z^2);

k = 1;
cur = 0;
th0 = 0;
for i = 1:5
    delQ = rem(atan2(z,y)+th0-Qi(i),2*pi);
    cur = cur - a(i).*delQ.*exp(-(delQ^2./(2*b(i)^2))).*zna;
end
dx(5) = (cur-zn*k);

end


