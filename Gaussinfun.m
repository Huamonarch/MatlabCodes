function [ value ] = Gaussinfun( x,mu,sigma)
%��˹����
%   ����  x,��ֵ�̣���׼�� ��
%   ���  ����ֵ
value = exp(-((x-mu).^2)./(2.*(sigma.^2)));

end

