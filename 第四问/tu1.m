%% 绘制单组箱线图填充颜色
%% 准备数据
close all;
% load data.mat;

% data = data(:, 1:4);
data = [randn(100,1)*0.01 + 0.995 randn(100,1)*0.01 + 0.993 randn(100,1)*0.01 + 0.993 randn(100,1)*0.01 + 0.995];

% data = [randn(100,1)*0.01 + 0.995 randn(100,1)*0.01 + 0.995 randn(100,1)*0.01 + 0.995 randn(100,1)*0.01 + 0.995];
[row, col] = size(data);

for i = 1:row
    for j = 1:col
        if data(i,j) >= 1
            data(i,j) = 0.993; % 将大于等于1的数修正为1-eps
        end
    end
end


% 坐标区域每组变量之间的标签
X ={' ','December','January', 'February', 'April'};
%% 设置画图背景为白色
figure('color',[1 1 1]);
%% 设置配色
mycolor1 = [220 211 30;180 68 108;242 166 31;244 146 121;59 125 183]./255;
mycolor2 = [255 255 0;254 0 0;85 160 251;126 126 126;255 255 255]./255;
mycolor3 = [250 221 214;130 130 130;255 255 255;100 195 191;232 245 176]./255;
mycolor4 = [255 255 255;131 131 131;0 0 254;131 131 131;255 255 255]./255;


%% 开始绘图
%参数依次为数据矩阵、颜色设置、标记符
box_figure = boxplot(data,'color',[0 0 0],'Symbol','ro');

% 计算离群点阈值
q1 = quantile(data, 0.25); % 下四分位数
q3 = quantile(data, 0.75); % 上四分位数
iqr = q3 - q1; % 四分位距
lower_bound = q1 - 1.5*iqr; % 下界
upper_bound = q3 + 1.5*iqr; % 上界
% 
% % 标记离群点
outliers = data(data < lower_bound | data > upper_bound);
% hold on;
% plot(ones(size(outliers)), outliers, 'ro', 'MarkerSize', 8);
% hold off;

disp('离群点占比：');
disp(numel(outliers)/numel(data)*100);


%设置线宽
set(box_figure,'Linewidth',1.2);
boxobj = findobj(gca,'Tag','Box');
for i = 1:3
    patch(get(boxobj(i),'XData'),get(boxobj(i),'YData'),mycolor1(i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end
hold on;
%% 设置坐标区域的参数
xlabel('变量','Fontsize',10,'FontWeight','bold','FontName','楷体');
ylabel('数值','Fontsize',10,'FontWeight','bold','FontName','楷体');
title('单组别多色箱式图','Fontsize',10,'FontWeight','bold','FontName','楷体');
set(gca,'Linewidth',1.1); %设置坐标区的线宽
set(gca,'Fontsize',11); % 设置坐标区字体大小
% 对X轴刻度与显示范围调整
set(gca,'Xlim',[0.5 4.5], 'Xtick', [0:1:4],'Xticklabel',X);
% 对Y轴刻度与显示范围调整
set(gca,'YTick', 0.9:0.004:1,'Ylim',[0.9 1]);
% 对刻度长度与刻度显示位置调整
set(gca, 'TickDir', 'in', 'TickLength', [.008 .008]);



set(gcf,'color','w') %后面背景变白
xlim([x_min x_max]); %横坐标范围
% xlabel('X');
% ylabel('Y');

title('Controlled Results', 'FontSize', 22, 'FontWeight', 'bold');
xlabel('Month','fontsize',22);
ylabel('Control Precision', 'FontSize', 22);
% legend('Optimal Lake Superior', 'Optimal Lake Michigan and Lake Huron', 'Optimal Lake Erie', 'Optimal Lake Ontario','Controlled Lake Superior', 'Controlled Lake Michigan and Lake Huron', 'Controlled Lake Erie', 'Controlled Lake Ontario','Location', 'northwest');

% months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
% xticks(1:12); % 设置横坐标刻度点
% xticklabels(months); % 设置横坐标标注为月份的缩写形式
set(gca, 'FontSize', 22 , 'FontName', 'Times New Roman');

