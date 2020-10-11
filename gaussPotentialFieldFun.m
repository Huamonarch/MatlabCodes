function [ valuePotentialField ] = gaussPotentialFieldFun( xPoint,yAntigenMatrix ,sigma)
%   高斯势场函数
%   输入  位置坐标xPoint  抗原种群yAntigenMatrix ，抗原种群参数衰减因子 sigma
%   输出  位置xPoint的势值  valuePotentialField
m = length(yAntigenMatrix(:,1));%抗原的数量
normVetorMatrix = yAntigenMatrix - repmat(xPoint,m,1); % 所有抗原到 点xPoint的向量矩阵
rList = sum(normVetorMatrix.^2, 2); % 所有抗原到 点xPoint的距离平方的列表，m个距离
valuePotentialList = gaussinFun(rList,repmat(sigma,m,1)); %每个抗原在的点xPoint的势值 
valuePotentialField = sum(valuePotentialList);  % 所有抗原在的点xPoint的势值求和

end

function[valueOut] = gaussinFun(r_r,sigma)
% 
valueOut = exp(-(r_r./(2.*sigma.^2)));
end