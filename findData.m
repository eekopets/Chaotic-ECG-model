load('without_noise.mat')

Fs = 500;
[pks,locs] = findpeaks(CC,Fs,'MinPeakDistance',0.5);
Per =locs*Fs;
PerSh =Per-Per(1);
PerSh = cat(1,PerSh,length(CC));

time = 0.002:0.002:length(CC)*0.002;
figure(1)
plot(time,CC);
sinus_1 = [];
cosinus_1 = [];
T = zeros(1,length(pks));
PRT = zeros(3,length(pks));
QS = zeros(2,length(pks));
angle = zeros(7,length(pks));
PQRST = zeros(7,length(pks));
figure()
for i =1:length(pks)
    plot(time(1:length(CC(PerSh(i)+1:PerSh(i+1)))),CC(PerSh(i)+1:PerSh(i+1)))
    T(1,i) = (length(CC(PerSh(i)+1:PerSh(i+1))))/Fs;
    
    [pks,locs] = findpeaks(CC(PerSh(i)+1:PerSh(i+1)),Fs,'MinPeakProminence',0.05);
    [pks1,locs1] = findpeaks(-(CC(PerSh(i)+1:PerSh(i+1))),Fs,'MinPeakProminence',0.05);
    PRT(:,i) = locs;
    QS(:,i) = locs1;

    PQRST(1,i) = 0;
    PQRST(2,i) = PRT(1,i);
    PQRST(3,i) = QS(1,i);
    PQRST(4,i) = PRT(2,i);
    PQRST(5,i) = QS(2,i);
    PQRST(6,i) = PRT(3,i);
    PQRST(7,i) = T(1,i);
 
    
    angle(:,i) = 2*pi/1*PQRST(:,i);
    angle(7,i) =  2*pi;
    angle(:,i) =  angle(:,i)+pi*5.15/4; % коррекция положения

    h = 0.002;

    cur1 = T(1,i)*sin(interp1(PQRST(:,i), angle(:,i),0:h:T(1,i)));
    sinus_1 = [sinus_1, cur1(1:end-1)];
  
    cur2 = T(1,i)*cos(interp1(PQRST(:,i), angle(:,i),0:h:T(1,i)));
    cosinus_1 = [cosinus_1, cur2(1:end-1)];
  hold on
    
end

%plot(sin(sinus_1))
% figure(4)
% plot3(sinus_1,cosinus_1,CC(:,1))
Data_ECG(:,3) = CC(:,1);
Data_ECG(:,2) = sinus_1;
Data_ECG(:,1) = cosinus_1;


Fs = 500;

% [pks,locs] = findpeaks(Data_ECG(:,3),Fs,'MinPeakProminence',0.15);
% RK2 = ECGRK2([0 1 0.25],9.97);
% %plot(Data_ECG(:,3))


locs = locs*Fs;
CC_n = Data_ECG(:,3);
CC_n(locs(end):end)=[];

CC_n(1:locs(2))=[];
%Data_ECG(locs(end):end,:)=[];
Data_ECG(1:locs(2),:)=[];

x = Data_ECG(:,1)';
%x = [x,x,x,x];

y = Data_ECG(:,2)';
%y = [y,y,y,y];

z = Data_ECG(:,3)';
%z = [z,z,z,z];
x = sgolayfilt(x,3,51);
y = sgolayfilt(y,3,51);
z = sgolayfilt(z,3,15);
Data(:,1) = x;
Data(:,2) = y;
Data(:,3) = z;
figure(4)
 plot3(Data(:,1),Data(:,2),Data(:,3))

L = length(Data);
cur = 0;
cur2 = 1;
d = zeros(3,2*L);
for l = 2:1:(L) 


    d(1,cur2+1) = (Data(l,1)+Data(l-1,1))/2;
    d(2,cur2+1) = (Data(l,2)+Data(l-1,2))/2;
    d(3,cur2+1) = (Data(l,3)+Data(l-1,3))/2;
    cur2 = cur2+2;

end
for l = 1:1:(L) 
   d(1,cur+1) = Data(l,1);
   d(2,cur+1) = Data(l,2);
   d(3,cur+1) = Data(l,3);
    cur = cur+2;

end


