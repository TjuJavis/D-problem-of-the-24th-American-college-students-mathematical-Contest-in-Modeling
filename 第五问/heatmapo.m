% 定义数据矩阵，这里我们随机生成一些数据作为示例
close all;
% data = rand(6, 5); % 生成一个6行5列的矩阵，元素值在0到1之间
data = xlsread('Problem_D_Great_Lakes.xlsx', 'Lake Ontario', 'A32:E37');

% 定义横坐标和纵坐标的标签
yLabels = {'Shipping Companies', 'Nearby Residents', 'Environmentalists', 'Property Owners', 'Leisure Boaters', 'Generation Companies'};

xLabels = {'Water Level', 'Flow Situation', 'Control Frequency', 'Stability Control', 'Seasonal Variation'};

% 使用heatmap函数绘制热力图
h = heatmap(xLabels, yLabels, data);

% 设置热力图的标题和坐标轴标签
h.Title = 'Heatmap of Satisfaction among Various Stakeholders';
% h.Title.FontWeight = 'bold';
h.XLabel = 'Adjustment Factor';
h.YLabel = 'Stakeholders';

% 调整颜色映射以更好地显示数据（可选）
h.Colormap = cool; % 或者使用其他的colormap，如 hot, cool, parula 等

% 调整字号和字体格式
h.FontSize = 20; % 设置字体大小为20
h.FontName = 'Times New Roman'; % 设置字体为Times New Roman

titleHandle = h.Title; % 获取标题对象的句柄
% set(titleHandle, 'FontSize', 22); % 直接设置标题字体大小为22