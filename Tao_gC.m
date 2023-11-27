function [Mg,fg] = Tao_gC(m,J,g)
    Mg = zeros(3,1);
    fg = zeros(3,1);
    mu=3.986*10^14;       %地球引力常数
    Re=6378140;           %地球半径
    J2=1.08263*10^-3;      %J2 扰动
    
%    del_J = diag([2*sin(0.05*t),2*cos(0.08*t),3*sin(0.02*t)]);
%    dot_del_m = 0.0001*norm(Tao_c(4:end));
   
%    J = J1+del_J;
%    m = m1-del_m;

    
    
    R = g(1:3,1:3);
    p = g(1:3,4);
    b = R'*p; 
    
    Mg = 3*(mu/(norm(p))^5)*(x2x_hat(b)*J*b);
    
    J_star = 0.5*trace(J)*eye(3)+J;
    G = -(m*mu/(norm(p))^3)*b-3*(mu/(norm(p))^5)*J_star*b+15/2*(mu*(b'*J*b)/((norm(p))^7))*b;
    f_J2 = m*R'*[-(3*J2*mu*Re^2*p(1))/(2*(norm(p))^5)*(1-5*p(3)/(norm(p))^2);
                 -(3*J2*mu*Re^2*p(2))/(2*(norm(p))^5)*(1-5*p(3)/(norm(p))^2);
                 -(3*J2*mu*Re^2*p(3))/(2*(norm(p))^5)*(3-5*p(3)/(norm(p))^2);];
    fg= G+f_J2;
end

