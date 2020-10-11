function [ affinityValue ] =affinityFun(antigenYj,cellBi )
%计算抗原yi与细胞Bi的亲和度
%   输入 抗原antigenYj，细胞cellBi=（xi，deltai）
%   输出 亲和度值 affinityValue
xVector = cellBi(1:end-1); % 细胞的位置
delta = cellBi(end);  % 细胞的半径参数

normVector =  antigenYj - xVector; %由抗原指向细胞的向量
r = norm(normVector,2);  % 抗原到细胞的距离
affinityValue = gaussFun(r,delta); %抗原与细胞的亲和度
end

function[outValue] = gaussFun(r,delta)
%  高斯函数  计算 f(r)= e^{-(r/delta)^2}
outValue = exp(-(r/delta)^2);
end
