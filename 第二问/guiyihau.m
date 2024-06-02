clc
clear
% a_max=185;
% a_min=70;
% data = xlsread('Lake Superior - Mean Water Level.xlsx', 'Sheet1', 'B27:M27');
% arr=[183.36913,;
data=[183.7083522,176.0572072,174.6176155,74.77511595]
MappedData = mapminmax(data, 0, 1)

data=MappedData;