function [ad_x,adstar_x] = ad(X)
    ad_x = zeros(6,6);
    adstar_x = zeros(6,6);
    
    ad_x(1:3,1:3) = x2x_hat(X(1:3));
    ad_x(4:6,4:6) = x2x_hat(X(1:3));
    ad_x(4:6,1:3) = x2x_hat(X(4:6));
    
    adstar_x(1:3,1:3)=-x2x_hat(X(1:3));
    adstar_x(4:6,4:6)=-x2x_hat(X(1:3));
    adstar_x(1:3,4:6)=-x2x_hat(X(4:6));
end

