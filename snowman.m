% snowman notebook 

%数据类型
a = 1;
mata = zeros(2,2);

%函数定义
syms x;
y = sin(x);
z = diff(y); %求导
g = cos(2*pi);


% 定义一维序列及序列运算
x = 0:0.1:2*pi;
y = cos(x);
size(x);
%plot(x,y)  %plot(y) 都可以
%plot(x,y)  %plot先于后面的修饰语句
%title('example');
%xlabel('x');
%ylabel('y');


%矩阵输入
A = [1 2;3 4];
x = 0:0.01:1;
O = ones(2,3);
B = zeros(2,3);


%结构数组
company.name = 'A';
company.return = 0.05;
company;

%矩阵拼接
A = ones(3);
B = ones(3,3);
%C = [A B] %行数一样可以使用逗号或者空格 拼接
D = [A ;B]; %列数一致可以使用分号拼接

%矩阵运算
A + B;
A - B;
A = rand(7,3); %随机数生成
B = rand(3,4);
A * B ; %A的列应该和B的行一样

% help rand  ->  help文档


% A\B = inv(A) *B  矩阵除法
A = [1 2 ;3 4];
B = [4 5;6 7];
C = A\B;
D = A/B;
E = A.*B; %点乘运算，对应位置相加减

%逻辑运算
A < B;
A = B;
A&B;
A|B;


%备注 
currentpath = path;  %获取当前目录下的文件列表名
%  !后可调用DOS命令

%画图exercise
%x = 0:0.1:2*pi;
%y = sin(x);
%z = cos(x);
%plot(x,y,'--b',x,z,'.r') %关于颜色和曲线格式，可以在第三个选项的字符串中指定
%legend('sin','cos')
%xlabel('x')
%title('Fig:sin & cos')

%3维figure
%x = -5:0.5:5;
%y = x;
%[u,v] = meshgrid(x,y);
%z = u.^2 + (v+0.5).^2;
%subplot(2,1,1);
%surf(u,v,z); %面图
%title('surf');
%subplot(2,1,2);
%mesh(u,v,z); %网图
%title('mesh');

%yahoo金融导入数据

%connect = yahoo;
%security = '600036.ss';
%5StartDate = today-200;
%EndDate = today;

%数据导入excel
xlsdata = xlsread('cmbchina.xls','cmbchina','B1:C20')
high = xlsdata(:,1);
low = xlsdata(:,2);

%wind数据库

%流程控制语句


%for 循环
clc;
clear all;
close all;
N = 1000;
x = zeros(1,N);
y = zeros(1,N);
for ii = N:-1:1
    x(ii) = ii;
    y(ii) = 2*x(ii)+1;
end

plot(x,y,'-')
legend('2x+1')
xlabel('x')
ylabel('y')


%while循环
clc;
clear all;
close all;
N = 1000;
x = zeros(1,N);
y = zeros(1,N);
ii = N;
while ii>1
    x(ii) = ii;
    y(ii) = 2*x(ii)+1;
    ii = ii - 1;
end

plot(x,y,'-')
legend('2x+1')
xlabel('x')
ylabel('y')

%if语句
x = 3;y = 1;
if x == 4
    y = 0;
elseif x == 3
    y = 6;
else 
    y = 5;
end

%遍历找能被53整除的数
tic %计时功能
for ii=200:500
    if rem(ii,53)~=0
        continue
    end
    break
end
ii
toc
