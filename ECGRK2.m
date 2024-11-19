function dx = ECGRK2(X,CT)

% Qi =[-1/3*pi   -1/12*pi    0    1/12*pi    1/2*pi];
% a = [1.2 -5 30 -7.5 0.75];
% b = [0.25 0.1 0.1 0.1 0.4];

Qi =[-1/4*pi   -1/24*pi    0    1/12*pi    1/2*pi];
%a = 1.3*[27  -55   510  -400    25 ];
a = 20*[0.55 -3.85*16 4*30 -7.1*8 0.65];
b = [0.25 0.1/4 0.1/2 0.1/4 0.4];


ti = 0;

h = 0.001;
Iter = CT/h;
cur = 0;
dx = zeros(3,Iter);

T = 0.406;
%T = 1;
w0 = 2*pi/T;

for j =1:Iter
       
        x = X(1); y = X(2); z = X(3);
        x12 = x+(h/2)*((1.0 - sqrt(x*x + y*y))*x - w0*y);
        y12 = y+(h/2)*((1.0 - sqrt(x*x + y*y))*y + w0*x);

        for i = 1:5
            delQ = rem(atan2(y,x)-Qi(i),2*pi);
            %z0 = A*sin(2*pi*f2*time(i));
            cur = cur - a(i)*delQ*exp(-(delQ^2/(2*b(i)^2)));
        end
        z12 = z + h/2*(cur-z);
        cur = 0;
        dx(1,j) = x+h*((1.0 - sqrt(x12*x12 + y12*y12))*x12 - w0*y12);
        dx(2,j) = y+h*((1.0 - sqrt(x12*x12 + y12*y12))*y12 + w0*x12);

        for i = 1:5
            delQ = rem(atan2(y12,x12)-Qi(i),2*pi);
            %z0 = A*sin(2*pi*f2*time(i));
            cur = cur - a(i)*delQ*exp(-(delQ^2/(2*b(i)^2)));
        end

        dx(3,j) = z + h*(cur-z12);

        dx(4,j) =  ti + h; % time
     X = dx(:,j);
end
end