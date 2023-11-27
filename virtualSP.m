%%用空间三维球来代替卫星包络，并附带卫星当前三轴指向。
%（在虚拟领导者卫星星体坐标系下）
%input：
%pos/m: 3*1 Ball center position
%r/m：Spacecraft radius
% color：rab, Spacecraft color
% x_b,y_b,z_b：3*1 Three axis unit pointing of spacecraft（under the star coordinate system of virtual leading spacecraft）
% flag: Whether three-axis pointing is required. (0:No, 1:Yes)
function virtualSP(pos,r,color)
    R=r;
    t=linspace(0,2*pi,100*pi);
    p=linspace(0,2*pi,100*pi);
    [theta,phi]=meshgrid(t,p);                  %网格化数据
%     R=7.5;                                        %设置球面半径
    x=pos(1)+R*sin(theta).*cos(phi);                   %代入参数方程
    y=pos(2)+R*sin(theta).*sin(phi);
    z=pos(3)+R*cos(theta);
    colormap(color);
    surf(x,y,z,'FaceAlpha','0.8');                                %绘制表面图
    % daspect([1,1,1]);                           %设置xyz轴比例为1:1:1
    %camlight;                                   %设置默认光照
    
    l = light;
    %l.Style = 'local';
    l.Color = [1 1 1];                              %打白光
    l.Position = [1 1 1];                           % 光源在无穷远处 过 1,0,1点
    shading interp;
    lighting phong
    material dull
    % axis off;                                   %隐藏坐标轴
end

