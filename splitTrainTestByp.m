function [ X_train,y_train,X_test,y_test ] = splitTrainTestByp( X,Y,p )
%���� p �ı��� �������ݼ� p*������Ϊѵ�����ĸ��� ��������-ѵ�������� Ϊ���Լ��ĸ���
%   ����  ���ݼ�����X  ��Ӧ�ı�ǩ Y  ���ֱ��� p
%   ���  ѵ���� X_train, ѵ������ǩ y_train,
%         ���Լ� X_test,  ���Լ���ǩ y_test

%% ����������趨
ctime = datestr(now, 30);
tseed = str2double(ctime(1:8)) + str2double(ctime(10:end));
rng(tseed);
%% �������
numAll = length(Y);%��������
indexShuffled = randperm(numAll);%�����±���ϴ
numTrain = numAll*p;%ѵ����������
indexTrain = indexShuffled(1:numTrain);%ѵ�������±�
indexTest = indexShuffled(numTrain:end);%���Լ����±�
%% ѵ����
X_train = X(indexTrain);
y_train = Y(indexTrain);
%% ���Լ�
X_test = X(indexTest);
y_test = Y(indexTest);
end

