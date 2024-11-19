function dx = Chaos4D(time,X,a)
    x = X(1);
    y = X(2);
    z = X(3);
    w = X(4);

    dx = zeros(4,1);
    %a = 3.95;
    b = 10;
    d = 1;
    n = - 1;
    m0 = - 0.33;
    m1 = 0.25;
    T = 5.5;
    dx(1) = T*(-a*(z + x*(m0 + m1*w^2)));
    dx(2) = T*(-b*z);
    dx(3) =T*(-d*(x - y));
    dx(4) = T*(n*x);
end


