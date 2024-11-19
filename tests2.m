
init = [0.01 0.001 0 0 0.1];
%init = rand(1,5);
options = odeset('RelTol',1e-5); 
param = 4;
[t1,y1] = ode113( @(t,x)ChaosECG(t,x,param),[0:0.0001:20],init,options); %solve ODE
L = length(y1);
y1 = y1(L*0.3:end,:);
figure(2)
plot(y1(:,5))
Fs = 10000;

[pks,locs] = findpeaks(y1(:,5),Fs,'MinPeakProminence',0.3);

locs_n = locs;
locs_n(1) = []; 
locs_dif = zeros(1,length(locs_n));

for i=1:length(locs_n)
    locs_dif(i) = locs_n(i) - locs(i) ;
end
locs_dif2 = locs_dif;
locs_difdif2 =  circshift(locs_dif2,1);


figure(10)
title('model')
scatter(locs_dif2,locs_difdif2)
hold on

 
