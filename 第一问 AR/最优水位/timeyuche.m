close all
clc
clear
% 读取数据
% data = xlsread('Lake Superior - Mean Water Level.xlsx', 'Sheet1', 'B2:M24');

data0 = [];
for sheet = 1:5
    data1 = xlsread('Water Level.xlsx', sheet, 'B2:M24');
    data0 = [data0; data1(:)];
    % plot(time, data((sheet-1)*12 + 1 : sheet*12), 'LineWidth', 1.5, 'Color', colors(sheet));
end

data=data0;

data1=data(1:276,:);
data2=data(277:552,:);
data3=data(553:828,:);
data4=data(829:1104,:);
data5=data(1105:1380,:);



years = xlsread('Water Level.xlsx', 'Sheet1', 'A2:A25');
months = [1:12];

% 创建时间序列
time = [];
for i = 1:length(years)
    time = [time; datetime(years(i), months, 1)];
end

time=linspace(datenum(2000,1,1),datenum(2022,12,31),276);%把时间以数值形式分成365份

% 转换数据矩阵为一维向量
data = reshape(data', [], 1);
% data = normalizedMatrix(data);
% data = normalizeMatrix(matrix)
   %  % 计算每列的均值
   %  columnMeans = mean(data, 1);
   % 
   %  % 计算每列的标准差
   %  columnStdDevs = std(data, 0, 1);
   % 
   %  % 标准化矩阵：每个元素减去其所在列的均值，然后除以该列的标准差
   % data = (data - columnMeans) ./ columnStdDevs;

% data=data';
% 
% % 绘制原始数据可视化
% figure;
% plot(time, data, 'b.-');
% dateaxis('x',17);%转化横坐标为相应的日期格式
% title('Lake Superior - Mean Water Level');
% xlabel('Time');
% ylabel('Water Level (m)');
% 
% 
% data=data';
% save('Superiordata.mat', 'data');
%%
% 全部日期的水位
% clc
% clear
% close all;
% data = []; % 初始化数据变量
% for sheet = 1:4
%    data_sheet = xlsread('Lake Superior - Mean Water Level.xlsx', sheet, 'B2:M25');
%    data = [data; data_sheet(:)]; % 将每个sheet的数据拼接在一起
% end
% 
% years = xlsread('Lake Superior - Mean Water Level.xlsx', 'Sheet1', 'A2:A25');
% months = [1:12];
% 
% % 创建时间序列
% time=linspace(datenum(2000,1,1),datenum(2022,12,31),276);%把时间以数值形式分成365份
% % 转换数据矩阵为一维向量
% data = reshape(data', [], 1);
% data = data';
% 
% % 绘制原始数据可视化
% figure;
% hold on;
% colors = ['b', 'g', 'r', 'm', 'c']; % 定义颜色数组
% for sheet = 1:4
%     plot(time, data((sheet-1)*276 + 1 : sheet*276), 'LineWidth', 1.5, 'Color', colors(sheet));
% end
% dateaxis('x',17);%转化横坐标为相应的日期格式
% title('Lake Superior - Mean Water Level');
% xlabel('Time');
% ylabel('Water Level (m)');
% 
% % 添加标注
% legend('Sheet 1', 'Sheet 2', 'Sheet 3', 'Sheet 4');
%%
% 部分日期的水位
% clc
% clear
% close all;
% data = []; % 初始化数据变量
% for sheet = 1:5
%    data_sheet = xlsread('Lake Superior - Mean Water Level.xlsx', sheet, 'B2:M2');
%    data = [data; data_sheet(:)]; % 将每个sheet的数据拼接在一起
% end

% years = xlsread('Lake Superior - Mean Water Level.xlsx', 'Sheet1', 'A2:A25');
% months = [1:12];
% 
% % 创建时间序列
% time=linspace(datenum(2022,1,1),datenum(2022,12,31),12);%把时间以数值形式分成365份
% % 转换数据矩阵为一维向量
% data = reshape(data', [], 1);
% data = data';
% 
% data0 = [];
% for sheet = 1:5
%     data1 = mapminmax(data((sheet-1)*12 + 1 : sheet*12), 0, 1);
%     data0 = [data0; data1(:)];
%     % plot(time, data((sheet-1)*12 + 1 : sheet*12), 'LineWidth', 1.5, 'Color', colors(sheet));
% end
% 
% data=data0;

% data=smooth(data);
% 绘制原始数据可视化
% figure;
% hold on;
% colors = ['b', 'g', 'r', 'm', 'c']; % 定义颜色数组
% for sheet = 1:5
%     plot(1:12, data((sheet-1)*12 + 1 : sheet*12), 'LineWidth', 1.5, 'Color', colors(sheet));
% end
% % dateaxis('x',17);% 转化横坐标为相应的日期格式
% title('Mean Water Level Of The Great Lakes', 'FontSize', 18 , 'FontWeight', 'bold');
% xlabel('Month', 'FontSize', 16);
% ylabel('Water Level (m)', 'FontSize', 16);
% 
% % 添加标注
% legend('Lake Superior', 'Lake Michigan and Lake Huron', 'Lake Erie', 'Lake Ontario', 'Lake St. Clair', 'Location', 'northwest');
% months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
% xticks(1:12); % 设置横坐标刻度点
% xticklabels(months); % 设置横坐标标注为月份的缩写形式
% 
% % 设置坐标轴标签使用sci标准显示
% % set(gca, 'YSciLabel', 'true');
% 
% % 设置标题和坐标轴标签的字体大小
% set(gca, 'FontSize', 16 , 'FontName', 'Times New Roman');

%%

% import SHeatmap.m

% Data=rand(15,15);
% SHM=SHeatmap(Data,'Format','sq');
% SHM=SHM.draw();
% 
% data = xlsread('热力图.xlsx', 'A1:L5');
% 
% data0 = [];
% for sheet = 1:5
%     data1 = mapminmax(data( sheet,:), 0, 1);
%     data0 = [data0; data1(:)];
%     % plot(time, data((sheet-1)*12 + 1 : sheet*12), 'LineWidth', 1.5, 'Color', colors(sheet));
% end
% 
% data=data0;
% Data = xlsread('热力图.xlsx', 'A1:L5');
% 
% 
% SHM=SHeatmap(data,'Format','sq');
% SHM=SHM.draw();



%% 
% % 读取数据
% clc;clear;close all;
% data = xlsread('Lake Superior - Mean Water Level.xlsx', 'Sheet1', 'A2:M25');
% % save('Superiordata.mat', 'data');
% % % data=data';
% % % 读取数据
% % 
% % 
% % 
% % % 读取数据
% % load('Superiordata.mat'); % 假设Superiordata.mat中的数据保存在名为data的变量中
% % 
% % % 数据划分
% % rng('default'); % 设置随机数种子，确保每次运行结果一致
% % cv = cvpartition(size(data, 1), 'Holdout', 0.2); % 将数据按照8:2的比例划分为训练和测试集
% % trainIdx = training(cv); % 获取训练集的索引
% % testIdx = test(cv); % 获取测试集的索引
% % 
% % % 按照划分的索引提取训练集和测试集
% % trainData = data(trainIdx,:);
% % testData = data(testIdx,:);
% 
% input=data(1:18,1);
% output=data(1:18,2);
% input_test=data(19:23,1);
% output_test=data(19:23,2);
% 
% % 保存训练数据和测试数据到Superiordata.mat文件
% save('traffic_flux.mat', 'input', 'output','input_test','output_test');
% 
% 
