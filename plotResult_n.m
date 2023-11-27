
%% Tracking error, consensus error, angular velocity
load pe_n.mat

t=pe_n(1,:);
pe=pe_n(2:end,:);
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
ylim([0,0.02]); % 设置坐标轴范围
%%

load ve_n.mat

t=ve_n(1,:);
ve=ve_n(2:end,:);
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
ylim([0,3*10^-4]); % 设置坐标轴范围

%%
load sat_f_n.mat

t=sat_f_n(1,:);
sat_f_n=sat_f_n(2:end,:);
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,sat_f_n(1,:),'b-','linewidth',2)
hold on
plot(t,sat_f_n(2,:),'r--','linewidth',2)
hold on
plot(t,sat_f_n(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\bar{f}\)}\(_c \), N'},'Interpreter','latex','FontSize',24);
legend('\(\bar{f}_{c,1}\)','\(\bar{f}_{c,2}\)','\(\bar{f}_{c,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([-21,21]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:100/0.02+1);
sat_f_nS = sat_f_n(:,0.02/0.02:100/0.02+1);
plot(t1,sat_f_nS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_f_nS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_f_nS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([19,20.2]); % 设置坐标轴范围

axes('Position',[0.45,0.3,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:100/0.02+1);
sat_f_nS = sat_f_n(:,0.02/0.02:100/0.02+1);
plot(t1,sat_f_nS(1,:),'b-','linewidth',2);
hold on
plot(t1,sat_f_nS(2,:),'r--','linewidth',2);
hold on
plot(t1,sat_f_nS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-20.2,-19]); % 设置坐标轴范围
%% 姿态误差

load Re_n.mat

t=Re_n(1,:);
Re=Re_n(2:end,:);
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
ylim([0,2*10^(-3)]); % 设置坐标轴范围
%%

load omegae_n.mat

t=omegae_n(1,:);
omegae=omegae_n(2:end,:);
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
ylim([0,0.5*10^-3]); % 设置坐标轴范围

%%
load sat_u_n.mat

t=sat_u_n(1,:);
Dtheta=sat_u_n(2:end,:);
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,Dtheta(1,:),'b-','linewidth',2)
hold on
plot(t,Dtheta(2,:),'r--','linewidth',2)
hold on
plot(t,Dtheta(3,:),'k-.','linewidth',2)
set(gca,'FontSize',18); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',18);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',18)
xlabel('\(t\), s','FontSize',24,'Interpreter','latex');
ylabel({'\boldmath{\(\bar{u}\)}\(_c \), N\(\cdot\)m'},'Interpreter','latex','FontSize',24);
legend('\(\bar{u}_{c,1}\)','\(\bar{u}_{c,2}\)','\(\bar{u}_{c,3}\)','Interpreter','Latex','FontSize',18,'Location','Best');
xlim([min(t),max(t)]); % 设置坐标轴范围
% xticks(0:30:180)
ylim([-1.1,1.1]); % 设置坐标轴范围

axes('Position',[0.35,0.7,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:5/0.02+1);
DthetaS = Dtheta(:,0.02/0.02:5/0.02+1);
plot(t1,DthetaS(1,:),'b-','linewidth',2);
hold on
plot(t1,DthetaS(2,:),'r--','linewidth',2);
hold on
plot(t1,DthetaS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([0.9,1.02]); % 设置坐标轴范围

axes('Position',[0.35,0.33,0.35,0.15]); % 生成子图
t1 = t(1,0.02/0.02:2/0.02+1);
DthetaS = Dtheta(:,0.02/0.02:2/0.02+1);
plot(t1,DthetaS(1,:),'b-','linewidth',2);
hold on
plot(t1,DthetaS(2,:),'r--','linewidth',2);
hold on
plot(t1,DthetaS(3,:),'k-.','linewidth',2);
hold on
set(gca,'FontSize',16); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
set(get(gca,'XLabel'),'FontSize',16);%图上文字为8 point或小5号
set(get(gca,'YLabel'),'FontSize',16)
xlim([min(t1),max(t1)]); % 设置坐标轴范围
ylim([-1.02,-0.9]); % 设置坐标轴范围
set(gca, 'LooseInset', [0,0,0,0]);
%% 约束区域

load d_n.mat

t=d_n(1,:);
Dtheta=d_n(2:end,:);
dq=30*ones(1,size(t,2));
dw=560*ones(1,size(t,2));
figure()
% plot(t,normOmega(1,:),'r-','linewidth',2)
% hold on
plot(t,Dtheta(1,:),'m--','linewidth',2)
hold on
plot(t,Dtheta(2,:),'b-','linewidth',2)
hold on
plot(t,Dtheta(3,:),'k-.','linewidth',2)
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
t1 = t(1,45/0.02:50/0.02+1);
DthetaS = Dtheta(:,45/0.02:50/0.02+1);
Dtheta_fS = dq(1,45/0.02:50/0.02+1);
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
ylim([15,35]); % 设置坐标轴范围

axes('Position',[0.7,0.6,0.15,0.15]); % 生成子图
t1 = t(1,120/0.02:125/0.02+1);
DthetaS = Dtheta(:,120/0.02:125/0.02+1);
Dtheta_fS = dq(1,120/0.02:125/0.02+1);
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
ylim([15,35]); % 设置坐标轴范围
%%
load theta_n.mat

t=theta_n(1,:);
Stheta=theta_n(2:4,:);
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
ylim([0,150]); % 设置坐标轴范围

axes('Position',[0.45,0.45,0.2,0.15]); % 生成子图
t1 = t(1,10/0.02:20/0.02+1);
SthetaS = Stheta(:,10/0.02:20/0.02+1);
Stheta_fS = Stheta_f(1,10/0.02:20/0.02+1);
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
ylim([15,25]); % 设置坐标轴范围


t=theta_n(1,:);
Dtheta=theta_n(5:7,:);
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

axes('Position',[0.4,0.47,0.18,0.13]); % 生成子图
t1 = t(1,130/0.02:190/0.02+1);
DthetaS = Dtheta(:,130/0.02:190/0.02+1);
Dtheta_fS = Dtheta_f(1,130/0.02:190/0.02+1);
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
ylim([0,16]); % 设置坐标轴范围
