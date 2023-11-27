function x_hat_se3 = x2_hat_se3(X)
    x_hat_se3=zeros(4,4);
    x_hat_se3(1:3,1:3)=x2x_hat(X(1:3));
    x_hat_se3(1:3,4)=X(4:6);
end

