% Example of the CEEMDAN performance, used in the work where CEEMDAN was first presented:
% Cite: 
% M.E.TORRES, M.A. COLOMINAS, G. SCHLOTTHAUER, P. FLANDRIN,
%  "A complete Ensemble Empirical Mode decomposition with adaptive noise," 
%  IEEE Int. Conf. on Acoust., Speech and Signal Proc. ICASSP-11, pp. 4144-4147, Prague (CZ)
%
% The code loads the signal ecg.mat
% It is an ECG from the MIT-BIH Normal Sinus Rhythm Database
% available at http://www.physionet.org/cgi-bin/atm/ATM.
% The first 10 seconds of the first channel of the record 16265 has been
% used in the aboved mentioned paper

%--------------------------------------------------------------------------
clc;
% clear all;
load ('mydata.mat');
% A=xlsread('E:\01实验\000时间序列\MATLAB中基于CEEDMAN与FastICA算法的单通道信号规律噪声的滤除方法\1111');
A75=A(75,:);
Nstd = 0.2;
NR = 75;
MaxIter = 5000;
% list = zeros(1886,85);
% parfor i=1:1886
%     [modes its]=ceemdan(A(1,:),0.2,75,5000);
%     [a b]=size(modes);
%                                        
%     resultFinal = modes(end,:)+modes(end-1,:);%modes(4,:)
%     list(i,:) = resultFinal;
% end
% myresult = reshape(list,46,41,85)
% for i=1:85
% %     geotiffwrite(myresult(:,:,i),['result',num2str(i),'.tif'])
%     geotiffwrite(['myresult',num2str(i),'.tif'],myresult(:,:,i),R,'CoordRefSysCode', 32649);
% %     imwrite(myresult(:,:,i),['result',num2str(i),'.tif'])
% end
% imwrite(myresult,'result.tiff'); 
% xlswrite('resultresultFinal.xlsx',resultFinal)
% BB=writetable(resultFinal,'resultFinal.csv');
% load mydata
% cftool
% values=spcrv(A(1352,:),3);
% plot(values)
% plot(A(85,:))
[modes,its]=ceemdan(A75(1,:),0.2,75,5000);
[a,b]=size(modes);
resultFinal = modes(end,:)+modes(end-1,:);%modes(4,:)
Inter_annual=modes(1,:)+modes(2,:)+modes(3,:);
Annual=modes(4,:);
% Interannual_and_residual=modes(5,:)+modes(6,:)+modes(7,:);
% figure(7);plot(Inter_annual)
% set(gca,'xticklabel',[])
% % hold on
% figure(8);plot(Annual)
% set(gca,'xticklabel',[])
% % hold on
% figure(9);plot(Interannual_and_residual)
% set(gca,'xticklabel',[])
plot(A75)
hold on
% subplot(7,1,1),plot(modes(1,:))
% hold on
% subplot(7,1,2),plot(modes(2,:))
% subplot(7,1,3),plot(modes(3,:))
% subplot(7,1,4),plot(modes(4,:))
% subplot(7,1,5),plot(modes(5,:))
% subplot(7,1,6),plot(modes(6,:))
% subplot(7,1,7),plot(modes(7,:))
% subplot(8,1,8),plot(modes(8,:))

% plot(modes(1,:))
% set(gca,'xticklabel',[])
% hold on
% figure(2);plot(modes(2,:))
% set(gca,'xticklabel',[])
% hold on
% figure(3);plot(modes(3,:))
% set(gca,'xticklabel',[])
% hold on
% figure(4);plot(modes(4,:))
% set(gca,'xticklabel',[])
% hold on
% figure(5);plot(modes(5,:))
% set(gca,'xticklabel',[])
% hold on
% figure(6);plot(modes(6,:))
% set(gca,'xticklabel',[])
% hold on
% figure(10);plot(modes(7,:))
% set(gca,'xticklabel',[])
% hold on
% figure(8);plot(modes(8,:))
% hold on
% plot(resultFinal)
