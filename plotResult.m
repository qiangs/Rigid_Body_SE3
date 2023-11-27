
%% Tracking error, consensus error, angular velocity
load pe.mat

t=pe(1,:);
pe=pe(2:end,:);
figure()
plot(t,pe(1,:),'b-','linewidth',2)
% hold on
% plot(t,Re(2,:),'r--','linewidth',2)
% hold on
% plot(t,Re(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\( \|\Psi\| \)}, m'},'Interpreter','latex','FontSize',24);
% legend('\(\Psi_1\)','\(\Psi_2\)','\(\Psi_3\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,2100]); % 设置坐标轴范围

axes('Position',[0.5,0.35,0.35,0.15]); % 生成子图2
t1 = t(1,950/0.02:end);
peS1 = pe(:,950/0.02:end);
plot(t1,peS1(1,:),'b-','linewidth',2)
hold on
% plot(t1,ReS1(2,:),'r--','linewidth',2)
% hold on
% plot(t1,ReS1(3,:),'k-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.015,0.045]); % 设置坐标轴范围
%%

load ve.mat

t=ve(1,:);
ve=ve(2:end,:);
figure()
plot(t,ve(1,:),'b-','linewidth',2)
% hold on
% plot(t,ve(2,:),'r--','linewidth',2)
% hold on
% plot(t,ve(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\|v_e\|\)}, m/s'},'Interpreter','latex','FontSize',24);
% legend('\(v_{e,1}\)','\(v_{e,2}\)','\(v_{e,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,18]); % 设置坐标轴范围

% axes('Position',[0.3,0.66,0.35,0.15]); % 生成子图
% t1 = t(1,45/0.02:65/0.02+1);
% PsitS1 = ve(:,45/0.02:65/0.02+1);
% plot(t1,PsitS1(1,:),'b--','linewidth',2)
% hold on
% plot(t1,PsitS1(2,:),'r-.','linewidth',2)
% hold on
% plot(t1,PsitS1(3,:),'k:','linewidth',2)
% hold on
% set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
% set(get(gca,'YLabel'),'FontSize',16)
% xlim([min(t1),max(t1)]); % 设置坐标轴范围

% ylim([0,5*10^-3]); % 设置坐标轴范围


axes('Position',[0.5,0.35,0.35,0.15]); % 生成子图2
t1 = t(1,950/0.02:end);
veS1 = ve(:,950/0.02:end);
plot(t1,veS1(1,:),'b-','linewidth',2)
hold on
% plot(t1,veS1(2,:),'r--','linewidth',2)
% hold on
% plot(t1,veS1(3,:),'k-.','linewidth',2)
% hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([2*10^-4,6*10^-4]); % 设置坐标轴范围

%%
load sat_f.mat

t=sat_f(1,:);
sat_f=sat_f(2:end,:);
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,sat_f(1,:),'b-','linewidth',2)
hold on
plot(t,sat_f(2,:),'r--','linewidth',2)
hold on
plot(t,sat_f(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\bar{f}\)}\(_c \), N'},'Interpreter','latex','FontSize',24);
legend('\(\bar{f}_{c,1}\)','\(\bar{f}_{c,2}\)','\(\bar{f}_{c,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([-21,21]); % 设置坐标轴范围

axes('Position',[0.5,0.65,0.35,0.15]); % 生成子图
t1 = t(1,165/0.02:200/0.02+1);
sat_fS = sat_f(:,165/0.02:200/0.02+1);
plot(t1,sat_fS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_fS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_fS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([19,20.2]); % 设置坐标轴范围

axes('Position',[0.5,0.3,0.35,0.15]); % 生成子图
t1 = t(1,165/0.02:200/0.02+1);
sat_fS = sat_f(:,165/0.02:200/0.02+1);
plot(t1,sat_fS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_fS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_fS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-20.2,-19]); % 设置坐标轴范围
%% 姿态误差

load Re.mat

t=Re(1,:);
Re=Re(2:end,:);
figure()
plot(t,Re(1,:),'b-','linewidth',2)
hold on
% plot(t,Re(2,:),'r--','linewidth',2)
% hold on
% plot(t,Re(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\| \Phi\| \)}'},'Interpreter','latex','FontSize',24);
% legend('\(\Phi_1\)','\(\Phi_2\)','\(\Phi_3\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,2]); % 设置坐标轴范围

axes('Position',[0.5,0.35,0.35,0.15]); % 生成子图2
t1 = t(1,950/0.02:end);
ReS1 = Re(:,950/0.02:end);
plot(t1,ReS1(1,:),'b-','linewidth',2)
% hold on
% plot(t1,ReS1(2,:),'r--','linewidth',2)
% hold on
% plot(t1,ReS1(3,:),'k-.','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,0.6*10^(-3)]); % 设置坐标轴范围
%%

load omegae.mat

t=omegae(1,:);
omegae=omegae(2:end,:);
figure()
plot(t,omegae(1,:),'b-','linewidth',2)
hold on
% plot(t,omegae(2,:),'r--','linewidth',2)
% hold on
% plot(t,omegae(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\|\omega_e\|\)}, deg/s'},'Interpreter','latex','FontSize',24);
% legend('\(\omega_{e,1}\)','\(\omega_{e,2}\)','\(\omega_{e,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,10]); % 设置坐标轴范围

axes('Position',[0.3,0.66,0.35,0.15]); % 生成子图
t1 = t(1,180/0.02:200/0.02+1);
omegaeS1 = omegae(:,180/0.02:200/0.02+1);
plot(t1,omegaeS1(1,:),'b-','linewidth',2)
% hold on
% plot(t1,omegaeS1(2,:),'r--','linewidth',2)
% hold on
% plot(t1,omegaeS1(3,:),'k-.','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,2.5]); % 设置坐标轴范围


axes('Position',[0.5,0.35,0.35,0.15]); % 生成子图2
t1 = t(1,950/0.02:end);
omegaeS1 = omegae(:,950/0.02:end);
plot(t1,omegaeS1(1,:),'b-','linewidth',2)
% hold on
% plot(t1,omegaeS1(2,:),'r--','linewidth',2)
% hold on
% plot(t1,omegaeS1(3,:),'k-.','linewidth',2)
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,0.3*10^-3]); % 设置坐标轴范围

%%
load sat_u.mat

t=sat_u(1,:);
sat_u=sat_u(2:end,:);
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,sat_u(1,:),'b-','linewidth',2)
hold on
plot(t,sat_u(2,:),'r--','linewidth',2)
hold on
plot(t,sat_u(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\bar{u}\)}\(_c \), N\(\cdot\)m'},'Interpreter','latex','FontSize',24);
legend('\(\bar{u}_{c,1}\)','\(\bar{u}_{c,2}\)','\(\bar{u}_{c,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([-1.1,1.1]); % 设置坐标轴范围

axes('Position',[0.41,0.65,0.35,0.15]); % 生成子图
t1 = t(1,185/0.02:195/0.02+1);
sat_uS = sat_u(:,185/0.02:195/0.02+1);
plot(t1,sat_uS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_uS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_uS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,0.5]); % 设置坐标轴范围

axes('Position',[0.41,0.35,0.35,0.15]); % 生成子图
t1 = t(1,185/0.02:195/0.02+1);
sat_uS = sat_u(:,185/0.02:195/0.02+1);
plot(t1,sat_uS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_uS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_uS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-0.5,0]); % 设置坐标轴范围

%% 约束区域

load dsq.mat

t=dsq(1,:);
d=dsq(2:end,:);
dq=30*ones(1,size(t,2));
dw=560*ones(1,size(t,2));
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,d(1,:),'m--','linewidth',2)
hold on
plot(t,d(2,:),'b-','linewidth',2)
hold on
plot(t,d(3,:),'k-.','linewidth',2)
hold on
plot(t,dq,'r:','linewidth',2)
hold on
plot(t,dw,'g:','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\|p-p_q\|\)}, m'},'Interpreter','latex','FontSize',24);
legend('\boldmath{\(\|p-p_1\|\)}','\boldmath{\(\|p-p_2\|\)}','\boldmath{\(\|p-p_3\|\)}','\(d_q=30\) m','\(d^q_w=560\) m','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,2000]); % 设置坐标轴范围

axes('Position',[0.45,0.6,0.15,0.15]); % 生成子图
t1 = t(1,40/0.02:60/0.02+1);
dS = d(:,40/0.02:60/0.02+1);
dqS = dq(1,40/0.02:60/0.02+1);
plot(t1,dS(1,:),'m--','linewidth',2);
hold on
plot(t1,dS(2,:),'b-','linewidth',2);
hold on
plot(t1,dS(3,:),'k-.','linewidth',2);
hold on
plot(t1,dqS,'r:','linewidth',2)
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([90,120]); % 设置坐标轴范围

axes('Position',[0.7,0.6,0.15,0.15]); % 生成子图
t1 = t(1,170/0.02:180/0.02+1);
dS = d(:,170/0.02:180/0.02+1);
dqS = dq(1,170/0.02:180/0.02+1);
plot(t1,dS(1,:),'m--','linewidth',2);
hold on
plot(t1,dS(2,:),'b-','linewidth',2);
hold on
plot(t1,dS(3,:),'k-.','linewidth',2);
hold on
plot(t1,dqS,'r:','linewidth',2)
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([70,90]); % 设置坐标轴范围
%%
load theta.mat

t=theta(1,:);
Stheta=theta(2:4,:);
Stheta_f=18*ones(1,size(t,2));
Stheta_w=31*ones(1,size(t,2));
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,Stheta(1,:),'m--','linewidth',2)
hold on
plot(t,Stheta(2,:),'b-','linewidth',2)
hold on
plot(t,Stheta(3,:),'k-.','linewidth',2)
hold on
plot(t,Stheta_f,'r:','linewidth',2)
hold on
plot(t,Stheta_w,'g:','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(<a, R l_n>\)}, deg'},'Interpreter','latex','FontSize',24);
legend('\boldmath{\(<a, R l_1>\)}','\boldmath{\(<a, R l_2>\)}','\boldmath{\(<a, R l_3>\)}','\(\theta^n=18\) deg','\(\sigma^{n}=33\) deg','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,160]); % 设置坐标轴范围

axes('Position',[0.45,0.42,0.3,0.15]); % 生成子图
t1 = t(1,8/0.02:25/0.02+1);
SthetaS = Stheta(:,8/0.02:25/0.02+1);
Stheta_fS = Stheta_f(1,8/0.02:25/0.02+1);
plot(t1,SthetaS(1,:),'m--','linewidth',2);
hold on
plot(t1,SthetaS(2,:),'b-','linewidth',2);
hold on
plot(t1,SthetaS(3,:),'k-.','linewidth',2);
hold on
plot(t1,Stheta_fS,'r:','linewidth',2)
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([17,30]); % 设置坐标轴范围


t=theta(1,:);
Dtheta=theta(5:7,:);
Dtheta_f=15*ones(1,size(t,2));
Dtheta_w=30*ones(1,size(t,2));
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,Dtheta(1,:),'m--','linewidth',2)
hold on
plot(t,Dtheta(2,:),'b-','linewidth',2)
hold on
plot(t,Dtheta(3,:),'k-.','linewidth',2)
hold on
plot(t,Dtheta_f,'r:','linewidth',2)
hold on
plot(t,Dtheta_w,'g:','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(<a, R l_n>\)}, deg'},'Interpreter','latex','FontSize',24);
legend('\boldmath{\(<a, R l_4>\)}','\boldmath{\(<a, R l_5>\)}','\boldmath{\(<a, R l_6>\)}','\(\theta^n=15\) deg','\(\sigma^{n}=30\) deg','Interpreter','Latex','FontSize',14,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,150]); % 设置坐标轴范围

axes('Position',[0.4,0.72,0.3,0.15]); % 生成子图
t1 = t(1,170/0.02:250/0.02+1);
DthetaS = Dtheta(:,170/0.02:250/0.02+1);
Dtheta_fS = Dtheta_f(1,170/0.02:250/0.02+1);
plot(t1,DthetaS(1,:),'m--','linewidth',2);
hold on
plot(t1,DthetaS(2,:),'b-','linewidth',2);
hold on
plot(t1,DthetaS(3,:),'k-.','linewidth',2);
hold on
plot(t1,Dtheta_fS,'r:','linewidth',2)
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([14,25]); % 设置坐标轴范围

%%

load D.mat
load hat_Dmax.mat
t=D(1,:);
D=D(2:end,:);
hat_Dmax = hat_Dmax(2:end,:);
figure()
plot(t,D(1,:),'b--','linewidth',2)
hold on
plot(t,hat_Dmax(1,:),'r-','linewidth',2)
% hold on
% plot(t,Re(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'{\( \hat{D}_{\max} \)}'},'Interpreter','latex','FontSize',24);
legend('\(\|D\|\)','\(\hat{D}_{\max}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,12]); % 设置坐标轴范围

load ksi.mat
% load hat_Dmax.mat
t=ksi(1,:);
ksi=ksi(2:end,:);
figure()
plot(t,ksi(1,:),'b-','linewidth',2)
% hold on
% plot(t,Re(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'{\( \kappa\)}'},'Interpreter','latex','FontSize',24);
% legend('\(\Psi_1\)','\(\Psi_2\)','\(\Psi_3\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([0,12]); % 设置坐标轴范围

load SS.mat
% load hat_Dmax.mat
t=SS(1,:);
ss=SS(2:end,:);
figure()
plot(t,ss(1,:),'b-','linewidth',2)
% hold on
% plot(t,Re(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'Condition'},'Interpreter','latex','FontSize',24);
% legend('\(\Psi_1\)','\(\Psi_2\)','\(\Psi_3\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
% ylim([0,12]); % 设置坐标轴范围

axes('Position',[0.25,0.72,0.1,0.15]); % 生成子图
t1 = t(1,140/0.02:145/0.02+1);
ssS = ss(:,140/0.02:145/0.02+1);
% Dtheta_fS = Dtheta_f(1,170/0.02:250/0.02+1);
plot(t1,ssS(1,:),'b-','linewidth',2);
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,0.5]); % 设置坐标轴范围


axes('Position',[0.47,0.72,0.1,0.15]); % 生成子图
t1 = t(1,255/0.02:255.5/0.02+1);
ssS = ss(:,255/0.02:255.5/0.02+1);
% Dtheta_fS = Dtheta_f(1,170/0.02:250/0.02+1);
plot(t1,ssS(1,:),'b-','linewidth',2);
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-0.01,0.2]); % 设置坐标轴范围

axes('Position',[0.69,0.72,0.17,0.15]); % 生成子图
t1 = t(1,305/0.02:330/0.02+1);
ssS = ss(:,305/0.02:330/0.02+1);
% Dtheta_fS = Dtheta_f(1,170/0.02:250/0.02+1);
plot(t1,ssS(1,:),'b-','linewidth',2);
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,0.1]); % 设置坐标轴范围

axes('Position',[0.5,0.35,0.3,0.15]); % 生成子图
t1 = t(1,950/0.02:end);
ssS = ss(:,950/0.02:end);
% Dtheta_fS = Dtheta_f(1,170/0.02:250/0.02+1);
plot(t1,ssS(1,:),'b-','linewidth',2);
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0,1*10^(-4)]); % 设置坐标轴范围