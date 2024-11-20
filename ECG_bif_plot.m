%% 1D bif plot
close all;

% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_a_HR.csv");
% figure 
% set(gcf, 'Position', [100 100 1000 500])
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', 5.0); hold on;
% xlim([min(a(:,1)) max(a(:,1))])
% ylabel("$RR$",'Interpreter','latex','FontSize',17);
% xlabel("$y$",'Interpreter','latex','FontSize',17);
% set(gca,'TickLabelInterpreter','latex','FontSize',15);
% grid on;

% ax1 = subplot(7,2,[1 2 3 4]); 
% ax1pos = get(ax1,'position');
% ax1pos(4)= ax1pos(4)*0.7;
% ax1pos(2)= ax1pos(2)+0.02;
% set(ax1,'Position',ax1pos);

%%
% figure
% FONTsize = 15;
% wider_x = 1.03; wider_y = 1.1;
% set(gcf, 'Position', [100 100 1500 700])
% 
% marker_size = 1.0;
% 
% ax1 = subplot(2,3,1);
% ax1pos = get(ax1,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% set(ax1,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_a_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([3.2 4]); ylim([0.39 0.48]);
% xticks(3.2:0.2:4);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(a) } a \in (3.2, 4)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$a$",'Interpreter','latex','FontSize',FONTsize);
% grid on;
% 
% ax2 = subplot(2,3,2);
% ax1pos = get(ax2,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% set(ax2,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_b_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([9 12]); ylim([0.39 0.5]);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(b) } b \in (9, 12)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$b$",'Interpreter','latex','FontSize',FONTsize);
% grid on;
% 
% ax3 = subplot(2,3,3);
% ax1pos = get(ax3,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% set(ax3,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_d_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([0.6 2]); %ylim([0.39 0.48]);
% xticks(0.6:(2-0.6)/4:2);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(c) } d \in (0.6, 2)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$d$",'Interpreter','latex','FontSize',FONTsize);
% grid on;
% 
% ax4 = subplot(2,3,4);
% ax1pos = get(ax4,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% ax1pos(2)= ax1pos(2)-0.025;
% set(ax4,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_n_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([-1.3 0.3]); %ylim([0.39 0.48]);
% % xticks(3.2:0.2:4);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(d) } n \in (-1.3, 0.3)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$n$",'Interpreter','latex','FontSize',FONTsize);
% grid on;
% 
% ax5 = subplot(2,3,5);
% ax1pos = get(ax5,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% ax1pos(2)= ax1pos(2)-0.025;
% set(ax5,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_m0_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([-0.45 -0.2]); ylim([0.39 0.47]);
% xticks(-0.45:(-0.2--0.45)/5:-0.2);
% yticks(0.39:(0.47-0.39)/4:0.47);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(e) } m_0 \in (-0.45, -0.2)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$m_0$",'Interpreter','latex','FontSize',FONTsize);
% grid on;
% 
% ax6 = subplot(2,3,6);
% ax1pos = get(ax6,'position');
% ax1pos(4)= ax1pos(4)*wider_y;
% ax1pos(3)= ax1pos(3)*wider_x;
% ax1pos(2)= ax1pos(2)-0.025;
% set(ax6,'Position',ax1pos);
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_m1_HR.csv");
% plot(a(:,1),a(:,3), 'k.', 'MarkerSize', marker_size); hold on;
% xlim([0 4]); %ylim([0.39 0.48]);
% % xticks(3.2:0.2:4);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
% title("$\textbf{(f) } m_1 \in (0, 4)$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$RR$ distance",'Interpreter','latex','FontSize',FONTsize);
% xlabel("$m_1$",'Interpreter','latex','FontSize',FONTsize);
% grid on;


%% 1D bif coloredr
% figure
% set(gcf, 'Position', [100 100 1000 500])
% FONTsize = 14;
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_a_HR.csv");
% Slow=0.39;
% Sup=0.48;
% resolution_Y=300;
% resolution_X = 1200;
% VarIndex = 3; %2 - peaks, 3 - intervals
% [xx1, yy1, zz1, kmin, kmax] = Colored1Dbif(a, VarIndex, Slow,Sup,resolution_Y,resolution_X);
% % surf(xx1,yy1,zz1,'EdgeColor','flat', 'FaceColor','flat');
% imagesc(zz1);
% xlabel("$\alpha$",'Interpreter','latex','FontSize',FONTsize);
% ylabel("$x_{max}$",'Interpreter','latex','FontSize',FONTsize);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize);
% mymap=[0,0,0;turbo(B-1)];
% colormap(mymap);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
% set(gca, 'colorscale', 'log');
% caxis([0.0001 0.8]);
% ylim([Slow Sup]);
% xlim([kmin kmax]);
% view(0,90)

%% 2d-bif 2x2

% a = csvread("D:\\CUDAresults\\bif2D_ECG_model_ab.csv");
% a = csvread("D:\\CUDAresults\\bif2D_ECG_model_ad.csv");
% a = csvread("D:\\CUDAresults\\bif2D_ECG_model_dn.csv");
% a = csvread("D:\\CUDAresults\\bif2D_ECG_model_m0m1.csv");
% 
% x = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
% y = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
% a(:,end) = [];
% FONTsize = 15;
% figure
% set(gcf, 'Position', [10 100 700 500])
% imagesc(x,y,a);
% set(gcf,'renderer','painters');
% set(gca,'YDir','normal');
% ylabel('$Freq$','interpreter','latex','FontSize',15);
% xlabel('$Ampl$','interpreter','latex','FontSize',15);
% set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
% colormap(turbo);

figure
FONTsize = 15;
wider_x = 1.03; wider_y = 1.1;
set(gcf, 'Position', [100 100 1100 700]);
MN = [3 3];
cmax = 100;
cmin = 1;
marker_size = 1.0;
color_scale = 'log';

ax1 = subplot(2,2,1);
ax1pos = get(ax1,'position');
ax1pos(4)= ax1pos(4)*wider_y;
ax1pos(3)= ax1pos(3)*wider_x;
ax1pos(1)= ax1pos(1)-0.05;
set(ax1,'Position',ax1pos);
a = csvread("D:\\CUDAresults\\bif2D_ECG_model_ab.csv");
x = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
y = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
a(:,end) = [];
a = medfilt2(a, MN);
imagesc(x,y,a);
xticks(min(x): (max(x)-min(x))/4 :max(x));
yticks(min(y): (max(y)-min(y))/4 :max(y));
set(gca,'YDir','normal');
set(gca,'Colorscale',color_scale);
set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
xlabel('$a$','interpreter','latex','FontSize',FONTsize);
ylabel('$b$','interpreter','latex','FontSize',FONTsize);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
colormap(turbo); 
clim([cmin cmax]);

ax2 = subplot(2,2,2);
ax1pos = get(ax2,'position');
ax1pos(4)= ax1pos(4)*wider_y;
ax1pos(3)= ax1pos(3)*wider_x;
ax1pos(1)= ax1pos(1)-0.075;
set(ax2,'Position',ax1pos);
a = csvread("D:\\CUDAresults\\bif2D_ECG_model_ad.csv");
x = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
y = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
a(:,end) = [];
a = medfilt2(a, MN);
imagesc(x,y,a); 
xticks(min(x): (max(x)-min(x))/4 :max(x));
yticks(min(y): (max(y)-min(y))/4 :max(y));
set(gca,'YDir','normal');
set(gca,'Colorscale',color_scale);
set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
xlabel('$a$','interpreter','latex','FontSize',FONTsize);
ylabel('$d$','interpreter','latex','FontSize',FONTsize);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
colormap(turbo); 
clim([cmin cmax]);

ax3 = subplot(2,2,3);
ax1pos = get(ax3,'position');
ax1pos(4)= ax1pos(4)*wider_y;
ax1pos(3)= ax1pos(3)*wider_x;
ax1pos(1)= ax1pos(1)-0.05;
set(ax3,'Position',ax1pos);
a = csvread("D:\\CUDAresults\\bif2D_ECG_model_dn.csv");
x = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
y = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
a(:,end) = [];
a = medfilt2(a, MN);
imagesc(x,y,a);
xticks(min(x): (max(x)-min(x))/4 :max(x));
yticks(min(y): (max(y)-min(y))/4 :max(y));
set(gca,'YDir','normal');
set(gca,'Colorscale',color_scale);
set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
xlabel('$d$','interpreter','latex','FontSize',FONTsize);
ylabel('$n$','interpreter','latex','FontSize',FONTsize);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
colormap(turbo); 
clim([cmin cmax]);

ax4 = subplot(2,2,4);
ax1pos = get(ax4,'position');
ax1pos(4)= ax1pos(4)*wider_y;
ax1pos(3)= ax1pos(3)*wider_x;
ax1pos(1)= ax1pos(1)-0.075;
set(ax4,'Position',ax1pos);
a = csvread("D:\\CUDAresults\\bif2D_ECG_model_m0m1.csv");
x = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
y = linspace(a(1,1),a(1,2),length(a(1,:))-1);a(1,:) = [];
a(:,end) = [];
a = medfilt2(a, MN);
imagesc(x,y,a);
xticks(min(x): (max(x)-min(x))/4 :max(x));
yticks(min(y): (max(y)-min(y))/4 :max(y));
set(gca,'YDir','normal');
set(gca,'Colorscale',color_scale);
set(gca,'TickLabelInterpreter','latex','FontSize',FONTsize-2);
xlabel('$m_0$','interpreter','latex','FontSize',FONTsize);
ylabel('$m_1$','interpreter','latex','FontSize',FONTsize);
% c = colorbar;
% set(c,'TickLabelInterpreter','latex','FontSize',FONTsize);
colormap(turbo); 
clim([cmin cmax]);

cb1 = colorbar(ax1,'Position',[.88 .11 .0275 .85]);
cb1.FontSize = FONTsize-2;
cb1.Label.String = 'Periodicity';
cb1.Label.Interpreter = "latex";
cb1.Label.FontSize = 13;
cb1.TickLabelInterpreter = "latex";
cb1.Ticks = [1 2 3 5 10 20 30 50 100];



%% 1D bif colored
% clear all;
function [xx1, yy1, zz1, kmin, kmax] = Colored1Dbif(a, VarIndex, Slow,Sup,B,resolution)
% a = readmatrix("D:\\CUDAresults\\bif1D_ECG_model_m0_HR.csv");

LEN = length(a(:,1));

% Slow=0.36;
% Sup=0.48;
% B=800;
% resolution = 200;
% VarIndex = 3; %2 - peaks, 3 - intervals

delta = (Sup-Slow)/(B);
spaces=linspace(Slow,Sup,B);

zz1 = zeros(B,resolution);
t1 = a(1,1);
Num_points = 1;
last_i = 1;
for i = 1:LEN
    if t1 ~= a(i,1)
        t1 = a(i,1);

        X_max = max(a(last_i:i,VarIndex));
        if X_max >= Sup
            X_max = 0.95*Sup;
        end
        X_min = min(a(last_i:i,VarIndex));
        if X_min <= Slow
            X_min = (1 + 0.05*sign(Slow))*Slow;
        end

        d1 = ceil((X_min-Slow)/(delta));
        d3 = ceil((Sup-X_max)/(delta));
        d2 = B-d1-d3;

        int1 = linspace(Slow,X_min,d1); int1(end) = [];
        int3 = linspace(X_max,Sup,d3); int3(1) = [];
        int2 = linspace(X_min,X_max,d2+2);

        zz1(:,Num_points) =  hist(a(last_i:i,VarIndex),[int1 int2 int3]);
%         zz1(:,Num_points) =  hist(a(last_i:i,VarIndex),spaces);

        zz1(:,Num_points) = zz1(:,Num_points)/max(zz1(:,Num_points));
        last_i = i;
        Num_points = Num_points+1;
    end
end


X_max = max(a(last_i:end,VarIndex));
X_min = min(a(last_i:end,VarIndex));

d1 = ceil((X_min-Slow)/(delta));
d3 = ceil((Sup-X_max)/(delta));
d2 = B-d1-d3;

int1 = linspace(Slow,X_min,d1); int1(end) = [];
int3 = linspace(X_max,Sup,d3); int3(1) = [];
int2 = linspace(X_min,X_max,d2+2);

zz1(:,Num_points) =  hist(a(last_i:end,VarIndex),[int1 int2 int3]);
zz1(:,Num_points) = zz1(:,Num_points)/max(zz1(:,Num_points));

kmin =    min(a(:,1));
kmax =    max(a(:,1));
kinterval=kmin:(kmax-kmin)/(resolution-1):kmax;

[xx1,yy1] = meshgrid(kinterval,linspace(Slow,Sup,B)) ;


%plot the diagram

end