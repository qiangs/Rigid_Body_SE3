function [g_e,Theta_r,eta] = ge_SE3(g1,g2)
    g_e = zeros(4,4);
    Theta_r =zeros(1,1);
    Rd = g1(1:3,1:3);
    R = g2(1:3,1:3);
    p = g2(1:3,4);
    pd = g1(1:3,4);
    Re = Rd'*R;
    pe = Rd'*(p-pd);
    g_e(1:3,1:3) = Re;
    g_e(1:3,4) = pe;
    g_e(4,4) = 1;
    a=(0.5*(trace(Re)-1));
    if a >1
        a=sign(a);
    end
    Theta_r = acos(a);
    if Theta_r == 0
        Phi_hat = zeros(3,3);
        S_Phi = eye(3);
    else
        Phi_hat = Theta_r/(2*sin(Theta_r))*(Re-Re');
        S_Phi = eye(3)+(1-cos(Theta_r))/Theta_r^2*Phi_hat+(Theta_r-sin(Theta_r))/Theta_r^3*Phi_hat^2;
    end
    
    Psi = S_Phi\pe;
    
    Phi = x_hat2x(Phi_hat);
    
    eta = [Phi;Psi];
end

