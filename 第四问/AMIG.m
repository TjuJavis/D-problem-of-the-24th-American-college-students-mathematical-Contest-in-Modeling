close all;
data = xlsread('ANNUALMAXI.xlsx', 'Sheet1', 'A1:AY1');
figure
a=1973:2023;
plot(1973:2023,data,'-k.','MarkerSize',20);

avg = mean(data);

% 然后建立你的图表。假设你用的是 plot 函数
% plot(data);
hold on;  % 保持当前图像打开状态，以便在其上绘制更多元素

% 再在相同的坐标轴上添加一条红色虚线以标示平均值
h = yline(avg, '--r');

% 添加文字
label = sprintf('long term average (%.2f%%)', avg);
text(1998, 55, label, 'Color', 'r','FontName', 'Times New Roman', 'FontSize', 20)

hold off;


set(gca,'Linewidth',1.1); %设置坐标区的线宽
set(gca,'Fontsize',11); % 设置坐标区字体大小
% 对X轴刻度与显示范围调整
set(gca,'Xlim',[1973.5 2023.5], 'Xtick', [1973:4:2023]);
% 对Y轴刻度与显示范围调整
set(gca,'YTick', 0:10:100,'Ylim',[0 100]);
% 对刻度长度与刻度显示位置调整
set(gca, 'TickDir', 'in', 'TickLength', [.008 .008]);
% 
% hold on
% set(gca,'YAxisLocation','right');
% hold off
% % 
% set(gcf,'color','w') %后面背景变白
% xlim([x_min x_max]); %横坐标范围
% xlabel('X');
ylabel('Percent Ice Cover');

title('Annual Maximum Ice Cover-Great Lakes', 'FontSize', 22, 'FontWeight', 'bold');
% xlabel('Month','fontsize',22);
% ylabel('Control Precision', 'FontSize', 22);
% legend('Optimal Lake Superior', 'Optimal Lake Michigan and Lake Huron', 'Optimal Lake Erie', 'Optimal Lake Ontario','Controlled Lake Superior', 'Controlled Lake Michigan and Lake Huron', 'Controlled Lake Erie', 'Controlled Lake Ontario','Location', 'northwest');

% months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
% xticks(1:12); % 设置横坐标刻度点
% xticklabels(months); % 设置横坐标标注为月份的缩写形式
set(gca, 'FontSize', 22 , 'FontName', 'Times New Roman');









% %%
% % 
% % 要添加带有文本的标注，你可以使用 text 函数。下面是如何在之前的代码中实现这个功能：
% % 
% % ```Matlab
% % 假设你的数据是 data，我们先计算平均数
% avg = mean(data);
% 
% % 然后建立你的图表。假设你用的是 plot 函数
% % plot(data);
% hold on;  % 保持当前图像打开状态，以便在其上绘制更多元素
% 
% % 再在相同的坐标轴上添加一条红色虚线以标示平均值
% h = yline(avg, '--r');
% 
% % 添加文字
% label = sprintf('long term average (%.2f%%)', avg*100);
% text(1, avg, label, 'Color', 'r')
% 
% hold off;  % 现在你可以关闭图像，这样下次使用 plot 或其他绘图函数时，它将打开一个新的图像，而不是在当前图像上继续绘制
% % ```
% % 在这段代码中，我使用了`sprintf`函数来创建一个格式化的字符串，显示平均值（以百分数形式）。然后，我调用了`text`函数，在指定的坐标位置进行标注。在这种情况下，文本会被放置在 `(1, avg)` 的位置，并且其颜色被设置为红色。
% % 
% % 你需要根据你的图形的比例和配置，适当的调整`text`函数的坐标参数，以确保标签出现在适当的位置。
% 
