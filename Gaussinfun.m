function [ value ] = Gaussinfun( x,mu,sigma)
%高斯函数
%   输入  x,均值μ，标准差 σ
%   输出  函数值
value = exp(-((x-mu).^2)./(2.*(sigma.^2)));

end

