% A=xlsread('G:\research\timeseries\FAPAR_series\��ֵ��\����ϳ�.xlsx');
% n=input('��������Ҫ���ĵ�n��ͼ�� ')
% plot(exsmooth(n,:))
% title('����������')
% plot(A);
% A=A';
% save mydata A
% A=xlsread('E:\01ʵ��\000ʱ������\MATLAB�л���CEEDMAN��FastICA�㷨�ĵ�ͨ���źŹ����������˳�����\CEEMDAN_V003\test.xlsx');
[B, R]= geotiffread('E:\01ʵ��\000ʱ������\00��ֵCEEMDAN\4\180403.tif');
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
