% 常用形式：DateNumber = datenum(DateString) 将表示日期和时间的文本转换为日期序列值
%           DateNumber = datenum(DateString,formatIn) 使用 formatIn 解析 DateString 所表示的日期和时间
%%%%% 举例:
datenumber1=datenum('2020,9,7')

datestring='24-Oct-2003 12:45:07';
formatin='dd-mmm-yyyy HH:MM:SS';
datenumber2=datenum(datestring,formatin)
% 输出：
% datenumber1 =
%       738041
% datenumber2 =
%    7.3188e+05


x=linspace(datenum(2018,1,1),datenum(2019,1,1),365);%把时间以数值形式分成365份
y=rand(1,365);
plot(x,y);
dateaxis('x',17);%转化横坐标为相应的日期格式
xlabel('时间');
ylabel('数据');
