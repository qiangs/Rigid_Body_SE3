function g_inv = ge_SE3inv(g)
    g_inv = zeros(4,4);
   
    R = g(1:3,1:3);
    p = g(1:3,4);
    g_inv = [R',-R'*p;zeros(1,3),1];
end

