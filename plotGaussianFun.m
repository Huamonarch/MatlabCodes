function[] = plotGaussianFun(mu,sigma)
% ������˹��������
% ���� 1.Ĭ�ϻ���x~��0��1���ı�׼��˹������2.��ֵ�� ����׼�� ��
switch nargin
    case 0
        mu =0;
        sigma = 1;
    case 1
        sigma = 1;
end
x = linspace(-3.*sigma+mu,3.*sigma+mu,6.*sigma/0.001);
z = (x-mu)./sigma;
y = normGaussianFun1d(z);
plot(x,y,'r');
end

function[out] = normGaussianFun1d (x)
index = x.^2;
index = -index./2;
out = exp(index);

end