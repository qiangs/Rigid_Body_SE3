function AxisP(pos,r,x_b,y_b,z_b)
   %% 画星体三轴指向
   R=r;
        x = pos+2*R*x_b;
        y = pos+2*R*y_b;
        z = pos+2*R*z_b;
        
        
        hold on
        % quiver3(0,0,0,x_b(1),x_b(2),x_b(3),'r','MaxHeadSize',0.4,'LineWidth',2)
        arrow3(pos,x,2,12,5,'b')
        hold on
        arrow3(pos,y,2,12,5,'g')
        hold on
        arrow3(pos,z,2,16,5,'r')
end

