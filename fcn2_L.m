function L  = fcn2_L(u1,R)
    % 密度函数 为 2/R
    L=zeros(3,1);
    if u1(1)>=R
        L(1)=-R;
    end
    if u1(1)>0 && u1(1)<R
        L(1)=-1/R*u1(1)^2;
    end
    if u1(1)<=-R
        L(1)=R;
    end
    if u1(1)<0 && u1(1)>-R
        L(1)=1/R*u1(1)^2;
    end
    %% 
    if u1(2)>=R
        L(2)=-R;
    end
    if u1(2)>0 && u1(2)<R
        L(2)=-1/R*u1(2)^2;
    end
    if u1(2)<=-R
        L(2)=R;
    end
    if u1(2)<0 && u1(2)>-R
        L(2)=1/R*u1(2)^2;
    end
    
    %% 
    if u1(3)>=R
        L(3)=-R;
    end
    if u1(3)>0 && u1(3)<R
        L(3)=-1/R*u1(3)^2;
    end
    if u1(3)<=-R
        L(3)=R;
    end
    if u1(3)<0 && u1(3)>-R
        L(3)=1/R*u1(3)^2;
    end
end