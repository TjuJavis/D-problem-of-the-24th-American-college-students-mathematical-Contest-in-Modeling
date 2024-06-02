% 生成非正态分布数据（示例数据）
close all
data = [randn(100,4); 10+randn(25,4)];

% 绘制箱线图
figure;
h = boxplot(data);
title('Box Plot of Data');
ylabel('Data');

% 计算离群点阈值
q1 = quantile(data, 0.25); % 下四分位数
q3 = quantile(data, 0.75); % 上四分位数
iqr = q3 - q1; % 四分位距
lower_bound = q1 - 1.5*iqr; % 下界
upper_bound = q3 + 1.5*iqr; % 上界

% 标记离群点
outliers = data(data < lower_bound | data > upper_bound);
hold on;
plot(ones(size(outliers)), outliers, 'ro', 'MarkerSize', 8);
hold off;

disp('离群点占比：');
disp(numel(outliers)/numel(data)*100);

% 
% % 需要分组的数据，size 11*4
% group1 = [2.5971    3.3004    2.5300    1.4816;...
%     4.5358    4.3818    2.3258    1.6239; ...
%     3.9728    3.9066    2.5668    2.3065; ...
%     4.8788    3.7533    2.3690    1.6233; ...
%     4.0810    4.0487    2.3443    1.4953; ...
%     4.3254    3.1829    3.5859    2.6255; ...
%     3.2180    3.9221    2.9497    1.9923; ...
%     4.6776    3.8937    3.2284    2.2298; ...
%     3.3915    3.8000    3.7869    1.9339; ...
%     4.2484    4.1819    1.8148    1.8452; ...
%     4.8277    4.1940    2.9338    1.7708]
% group2 = [4.5730    4.3172    3.1523    1.6662; ...
%     5.7332    4.9923    3.2012    2.1913; ...
%     4.5736    4.8696    3.3527    3.0092; ...
%     5.5416    4.6020    2.7714    2.0871; ...
%     5.3273    4.0853    3.2455    2.2208; ...
%     5.2967    5.4538    4.0582    3.1677; ...
%     4.0403    4.4890    3.4762    2.7582; ...
%     3.6837    5.6476    4.2450    2.8042; ...
%     5.0343    5.1616    5.1146    2.1429; ...
%     5.2017    4.6968    2.6056    2.2122; ...
%     5.9474    5.7000    3.9155    2.2271]
% 
% datatab = table();
% datatab1 = table();
% datatab2 = table();
% % datatab.data = [group1(:,1);group2(:,1);group1(:,2);group2(:,2);group1(:,3);group2(:,3);group1(:,4);group2(:,4)];
% data = zeros(size(group1,1), 2*size(group1, 2))
% data(:, 1:2:end) = group1
% data(:, 2:2:end) = group2
% datatab.data = reshape(data,[],1)
% datatab1.data1 = reshape(group1,[],1)
% datatab2.data2 = reshape(group2,[],1)
% factors = 4;
% factor = [ones(2*size(group1, 1),1); 2*ones(2*size(group1, 1),1); 3*ones(2*size(group1, 1),1); 4*ones(2*size(group1, 1),1)]
% factor1 = [ones(size(group1, 1),1); 2*ones(size(group1, 1),1); 3*ones(size(group1, 1),1); 4*ones(size(group1, 1),1)]
% factor2 = [ones(size(group2, 1),1); 2*ones(size(group2, 1),1); 3*ones(size(group2, 1),1); 4*ones(size(group2, 1),1)]
% groupmark1 = repmat(["A_ratio"], size(group1, 1), 1)
% groupmark2 = repmat(["B_ratio"], size(group2, 1), 1)
% groupmark = repmat([groupmark1; groupmark2], factors, 1)
% datatab.group = groupmark
% % 调整分组之间的间距，就用一个常数比如1.5乘以factor
% datatab.factor = 1.5*factor
% datatab1.factor1 = 1.5*factor1
% datatab2.factor2 = 1.5*factor2
% % 接下来还想计算分组箱线图各自的均值，需要确定各均值点的横坐标
% % 每个分组依次的横坐标位置
% factor_vec = 1.5*unique(factor)
% % 每个分组左右两个箱线图，相当于在每个分组的中心左右平移了，这里是0.5
% factor_vec1 = factor_vec - 0.5
% factor_vec2 = factor_vec + 0.5
% color1 = [46, 114, 188]/255;
% color2 = [206, 85, 30]/255;
% color = {color1; color2};
% %color = {[0.5,0.5,0.5];[0,0,0]};
% axesbox = boxchart(datatab.factor,datatab.data,'GroupByColor',datatab.group)
% hold on
% meanRatio_1 = groupsummary(datatab1.data1, datatab1.factor1, 'mean')
% x_1 = (factor_vec+factor_vec1)/2
% plot(x_1, meanRatio_1, '-*', "Color",color1)
% meanRatio_2 = groupsummary(datatab2.data2, datatab2.factor2, 'mean')
% %plot([1.75:1.5:6.25], meanCNR_S, '-*', "Color",color2)
% x_2 = (factor_vec+factor_vec2)/2
% plot(x_2, meanRatio_2, '-*', "Color",color2)
% hold off
% set(axesbox, {'BoxFaceColor'}, color,{'MarkerColor'},color, 'LineWidth',1.5)
% set(gca, 'XTick', factor_vec, 'XTickLabel', ["Group1", "Group2","Group3","Group4"])
% set(gca,'XGrid','off','YGrid','on', 'LineWidth', 2, 'Fontsize', 11)
% l= legend(axesbox)
% %防止下划线_被误解析，或者可用strrep
% set(l,'Interpreter','none')
% ylabel('Ratio')
% % savefig(gcf,'boxchart_ratio.fig');
% % print(gcf, '-dpdf', 'boxchart_ratio.pdf')



%% 







