close all% 输入数据（散点图数据）
x = [1, 2, 3, 4, 5]; % x轴坐标
y = [2.1, 3.9, 6.2, 8.1, 10.5]; % y轴坐标

% 使用interp1函数进行插值
x_interp = linspace(1, 5, 100); % 创建一个更密集的x轴坐标
y_interp = interp1(x, y, x_interp); % 对x_interp进行插值

% 绘制散点图和插值曲线
plot(x, y, 'o', 'MarkerSize', 8); % 绘制散点图
hold on; % 保持当前图形
plot(x_interp, y_interp, '-', 'LineWidth', 2); % 绘制插值曲线

% 设置图例和坐标轴标签
legend('散点图数据', '插值曲线');
xlabel('x轴标签');
ylabel('y轴标签');

% 显示网格
grid on;
