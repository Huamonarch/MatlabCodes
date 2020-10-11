function [ valuePotentialField ] = gaussPotentialFieldFun( xPoint,yAntigenMatrix ,sigma)
%   ��˹�Ƴ�����
%   ����  λ������xPoint  ��ԭ��ȺyAntigenMatrix ����ԭ��Ⱥ����˥������ sigma
%   ���  λ��xPoint����ֵ  valuePotentialField
m = length(yAntigenMatrix(:,1));%��ԭ������
normVetorMatrix = yAntigenMatrix - repmat(xPoint,m,1); % ���п�ԭ�� ��xPoint����������
rList = sum(normVetorMatrix.^2, 2); % ���п�ԭ�� ��xPoint�ľ���ƽ�����б�m������
valuePotentialList = gaussinFun(rList,repmat(sigma,m,1)); %ÿ����ԭ�ڵĵ�xPoint����ֵ 
valuePotentialField = sum(valuePotentialList);  % ���п�ԭ�ڵĵ�xPoint����ֵ���

end

function[valueOut] = gaussinFun(r_r,sigma)
% 
valueOut = exp(-(r_r./(2.*sigma.^2)));
end