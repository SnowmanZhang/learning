% snowman notebook 

%��������
a = 1;
mata = zeros(2,2);

%��������
syms x;
y = sin(x);
z = diff(y); %��
g = cos(2*pi);


% ����һά���м���������
x = 0:0.1:2*pi;
y = cos(x);
size(x);
%plot(x,y)  %plot(y) ������
%plot(x,y)  %plot���ں�����������
%title('example');
%xlabel('x');
%ylabel('y');


%��������
A = [1 2;3 4];
x = 0:0.01:1;
O = ones(2,3);
B = zeros(2,3);


%�ṹ����
company.name = 'A';
company.return = 0.05;
company;

%����ƴ��
A = ones(3);
B = ones(3,3);
%C = [A B] %����һ������ʹ�ö��Ż��߿ո� ƴ��
D = [A ;B]; %����һ�¿���ʹ�÷ֺ�ƴ��

%��������
A + B;
A - B;
A = rand(7,3); %���������
B = rand(3,4);
A * B ; %A����Ӧ�ú�B����һ��

% help rand  ->  help�ĵ�


% A\B = inv(A) *B  �������
A = [1 2 ;3 4];
B = [4 5;6 7];
C = A\B;
D = A/B;
E = A.*B; %������㣬��Ӧλ����Ӽ�

%�߼�����
A < B;
A = B;
A&B;
A|B;


%��ע 
currentpath = path;  %��ȡ��ǰĿ¼�µ��ļ��б���
%  !��ɵ���DOS����

%��ͼexercise
%x = 0:0.1:2*pi;
%y = sin(x);
%z = cos(x);
%plot(x,y,'--b',x,z,'.r') %������ɫ�����߸�ʽ�������ڵ�����ѡ����ַ�����ָ��
%legend('sin','cos')
%xlabel('x')
%title('Fig:sin & cos')

%3άfigure
%x = -5:0.5:5;
%y = x;
%[u,v] = meshgrid(x,y);
%z = u.^2 + (v+0.5).^2;
%subplot(2,1,1);
%surf(u,v,z); %��ͼ
%title('surf');
%subplot(2,1,2);
%mesh(u,v,z); %��ͼ
%title('mesh');

%yahoo���ڵ�������

%connect = yahoo;
%security = '600036.ss';
%5StartDate = today-200;
%EndDate = today;

%���ݵ���excel
xlsdata = xlsread('cmbchina.xls','cmbchina','B1:C20')
high = xlsdata(:,1);
low = xlsdata(:,2);

%wind���ݿ�

%���̿������


%for ѭ��
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


%whileѭ��
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

%if���
x = 3;y = 1;
if x == 4
    y = 0;
elseif x == 3
    y = 6;
else 
    y = 5;
end

%�������ܱ�53��������
tic %��ʱ����
for ii=200:500
    if rem(ii,53)~=0
        continue
    end
    break
end
ii
toc
