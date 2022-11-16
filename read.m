% A=xlsread('G:\research\timeseries\FAPAR_series\插值后\三年合成.xlsx');
% n=input('请输入需要画的第n个图像： ')
% plot(exsmooth(n,:))
% title('第五条数据')
% plot(A);
% A=A';
% save mydata A
% A=xlsread('E:\01实验\000时间序列\MATLAB中基于CEEDMAN与FastICA算法的单通道信号规律噪声的滤除方法\CEEMDAN_V003\test.xlsx');
[B, R]= geotiffread('E:\01实验\000时间序列\00插值CEEMDAN\4\180403.tif');
load ('mydata.mat');
% for i=1:1886
%     [modes its]=ceemdan(A(1,:),0.2,75,5000);
%     [a b]=size(modes);
%     resultFinal = modes(end,:)+modes(end-1,:);%modes(4,:)
%     list(i,:) = resultFinal;
% end
%     myresult = reshape(list,41,46,85);
%  for i=1:85
%     geotiffwrite(['result',num2str(i),'.tif'],myresult(:,:,i),R,'CoordRefSysCode', 32649);
%  end
