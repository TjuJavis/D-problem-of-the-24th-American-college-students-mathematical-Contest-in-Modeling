%% 绘制单组箱线图填充颜色
%% 准备数据—五组箱式图
load data.mat;
% 坐标区域每组变量之间的标签
X ={' ','M1','M2','M3','M4','M5'};
%% 设置画图背景为白色
figure('color',[1 1 1]);
%% 设置配色
mycolor1 = [220 211 30;180 68 108;242 166 31;244 146 121;59 125 183]./255;
mycolor2 = [255 255 0;254 0 0;85 160 251;126 126 126;255 255 255]./255;
mycolor3 = [250 221 214;130 130 130;255 255 255;100 195 191;232 245 176]./255;
mycolor4 = [255 255 255;131 131 131;0 0 254;131 131 131;255 255 255]./255


%% 开始绘图
box_figure = boxplot(data,'color',[0 0 0],'Symbol','o');
set(box_figure,'Linewidth',1.2);
boxobj = findobj(gca,'Tag','Box');
for i = 1:5
    patch(get(boxobj(i),'XData'),get(boxobj(i),'YData'),mycolor4(i,:),'FaceAlpha',0.5,...
        'LineWidth',1.1);
end
hold on;
xlabel('变量','Fontsize',10,'FontWeight','bold','FontName','楷体');
ylabel('数值','Fontsize',10,'FontWeight','bold','FontName','楷体');
title('单组别多色箱式图-显著性','Fontsize',10,'FontWeight','bold','FontName','楷体');
%% 设置坐标区域的参数
set(gca,'Linewidth',1.1); %设置坐标区的线宽
set(gca,'Fontsize',11); % 设置坐标区字体大小
% 对X轴刻度与显示范围调整
set(gca,'Xlim',[0.5 5.5], 'Xtick', [0:1:5.5],'Xticklabel',X);
% 对Y轴刻度与显示范围调整
set(gca,'YTick', 2:0.5:7.5,'Ylim',[2 7.5]);
% 对刻度长度与刻度显示位置调整
set(gca, 'TickDir', 'in', 'TickLength', [.008 .008]);

%% 开始绘制显著性因素
hold on;
x1 = 1;
x2 = 2.9;
y1 = 6.1;
y2 = 6.2;
plot([x1,x1],[y1,y2],'k','Linewidth',1);
hold on;
plot([x2,x2],[y1,y2],'k','Linewidth',1);
hold on;
plot([x1,x2],[y2,y2],'k','Linewidth',1);
text((x1+x2)/2-0.1,y2+0.1,'**','Fontsize',22);
hold on;

x1 = 3.1;
x2 = 5;
y1 = 6.1;
y2 = 6.2;
plot([x1,x1],[y1,y2],'k','Linewidth',1);
hold on;
plot([x2,x2],[y1,y2],'k','Linewidth',1);
hold on;
plot([x1,x2],[y2,y2],'k','Linewidth',1);
text((x1+x2)/2-0.1,y2+0.1,'***','Fontsize',22);

hold on;
x1 = 1; 
x2 = 2.9;
y1 = 6.5;
y2 = 6.6;
plot([x1,x1],[y1,y2],'k','Linewidth',1);
hold on;
plot([x2,x2],[y1,y2],'k','Linewidth',1);
hold on;
plot([x1,x2],[y2,y2],'k','Linewidth',1);

hold on;
x1 = 3.1;
x2 = 5;
y1 = 6.5;
y2 = 6.6;
plot([x1,x1],[y1,y2],'k','Linewidth',1);
hold on;
plot([x2,x2],[y1,y2],'k','Linewidth',1);
hold on;
plot([x1,x2],[y2,y2],'k','Linewidth',1);

% 绘制最后一条大线

hold on;
x1 = 2;
x2 = 4;
y1 = 6.6;
y2 = 7;
plot([x1,x1],[y1,y2],'k','Linewidth',1);
hold on;
plot([x2,x2],[y1,y2],'k','Linewidth',1);
hold on;
plot([x1,x2],[y2,y2],'k','Linewidth',1);
text((x1+x2)/2-0.1,y2+0.1,'**','Fontsize',22);

%% 代码保存高帧率图片
savefig(gcf,'boxplot_1.fig');
print(gcf,'result8','-dpng','-r600');