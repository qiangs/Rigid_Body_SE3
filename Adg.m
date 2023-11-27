function Ad_g = Adg(g)
    Ad_g = zeros(6,6);
    
    R = g(1:3,1:3);
    p = g(1:3,4);
    
    Ad_g = [R,zeros(3,3);x2x_hat(p)*R,R];
end

