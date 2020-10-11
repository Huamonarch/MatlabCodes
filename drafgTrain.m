clear,clc,close all;
%% ����׼��
x = linspace(-10,10,20/0.001);
y1 = Gaussinfun(x,0,1);
y2 = Gaussinfun(x,1,1);
y3 = Gaussinfun(x,2,1);
y4 = Gaussinfun(x,3,1);
%% ָ��ͼ�δ��ں���ͼλ��
window1 = figure;
set(window1,'Name','����ͼ');
%% �����ͼ�������ͼ��
X = [x;x;x;x]';
Y = [y1;y2;y3;y4]';
plot(X,Y);
%plot(X,Y,'--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);

%% �����������ͼ��ע��
T = title('$$y = e^{-\frac{x^2}{2\sigma^2}} $$');
set(T,'Interpreter','latex','FontSize',30);


h = legend('$$e^{-\frac{x^2}{2\sigma^2}} $$','$$y=cos(x)$$','$$y=x^2$$','$$y=x^3$$');
%h = legend('Box','on');
%h.String = {'$$e^{-\frac{x^2}{2\sigma^2}} $$','$$y=cos(x)$$','$$y=x^2$$','$$y=x^3$$'};
set(h,'Interpreter','latex','FontSize',30);
V = get(h)
%% ��ָ����ʽ����
