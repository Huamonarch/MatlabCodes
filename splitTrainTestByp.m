function [ X_train,y_train,X_test,y_test ] = splitTrainTestByp( X,Y,p )
%按照 p 的比例 划分数据集 p*样本数为训练集的个数 样本总数-训练样本数 为测试集的个数
%   输入  数据集样本X  对应的标签 Y  划分比例 p
%   输出  训练集 X_train, 训练集标签 y_train,
%         测试集 X_test,  测试集标签 y_test

%% 随机数种子设定
ctime = datestr(now, 30);
tseed = str2double(ctime(1:8)) + str2double(ctime(10:end));
rng(tseed);
%% 随机划分
numAll = length(Y);%样本总数
indexShuffled = randperm(numAll);%样本下标重洗
numTrain = numAll*p;%训练集的数量
indexTrain = indexShuffled(1:numTrain);%训练集的下标
indexTest = indexShuffled(numTrain:end);%测试集的下标
%% 训练集
X_train = X(indexTrain);
y_train = Y(indexTrain);
%% 测试集
X_test = X(indexTest);
y_test = Y(indexTest);
end

