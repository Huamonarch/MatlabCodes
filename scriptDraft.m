clear,clc,close all;
%% iris 数据加载与归一化
load fisheriris.mat;
feature = meas;
feature = [mapminmax(feature(:,1), 0, 1),mapminmax(feature(:,2), 0, 1),mapminmax(feature(:,3), 0, 1),mapminmax(feature(:,4), 0, 1)];
%% PCA降维处理
[pc,score,latent,tsquare] = pca(feature);%我们这里需要他的pc和latent值做分析
feature_after_PCA = score(:,1:2);
%% 绘散点图
figure;
x1 = feature_after_PCA(1:50,1);
y1 = feature_after_PCA(1:50,2);
scatter(x1,y1,'r','+');
hold on;
x2 = feature_after_PCA(51:100,1);
y2 = feature_after_PCA(51:100,2);
scatter(x2,y2,'g','o');
hold on;
x3 = feature_after_PCA(100:end,1);
y3 = feature_after_PCA(100:end,2);
scatter(x3,y3,'b','*');
xlabel('\itx1/a.u.','Fontname', 'Times New Roman','FontSize',14,'FontWeight','bold');
ylabel('\itx2/a.u.','Fontname', 'Times New Roman','FontSize',14,'FontWeight','bold');
set(gca,'FontName',' Times New Roman ','FontSize',12)%设置坐标轴刻度字体名称，大小
legend('\itsetosa','\itversicolor','\itvirginica');

