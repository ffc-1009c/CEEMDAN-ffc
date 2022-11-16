% A = xlsread('CIre_clip_dat.xlsx');
B = A(145,3:41);
imf = ceemdan(B,0.2,75,5000);
B2 = A2(108,3:41);
imf2 = ceemdan(B2,0.2,75,5000);
% intra = imf(1,:)+imf(2,:);
% anual = imf(3,:);
% resultFinal = imf(end,:)+imf(end-1,:)+imf(end-2,:);
% subplot(8,1,1),plot(B)
x = 1:1:39;
figure;
subplot(6,1,1),plotyy(x,imf(1,:),x,imf2(1,:))
subplot(6,1,2),plotyy(x,imf(2,:),x,imf2(2,:))
subplot(6,1,3),plotyy(x,imf(3,:),x,imf2(3,:))
subplot(6,1,4),plotyy(x,imf(4,:),x,imf2(4,:))
subplot(6,1,5),plotyy(x,imf(5,:),x,imf2(5,:))
subplot(6,1,6),plotyy(x,imf(6,:),x,imf2(6,:))
legend('CIre','FAPAR')

% inter = imf2(1,:)+imf2(2,:);
% anual = imf2(3,:);
% resultFinal = imf2(end,:)+imf2(end-1,:)+imf2(end-2,:);
% subplot(8,1,1),plot(B)
% subplot(6,1,1),plot(imf2(1,:))
% subplot(6,1,2),plot(imf2(2,:))
% subplot(6,1,3),plot(imf2(3,:))
% subplot(6,1,4),plot(imf2(4,:))
% subplot(6,1,5),plot(imf2(5,:))
% subplot(6,1,6),plot(imf2(6,:))
% subplot(8,1,8),plot(resultFinal) 

%% ºÏ³É
% % xlswrite('CIre_intra.xlsx',intra)
% % xlswrite('CIre_anual.xlsx',anual)
% % xlswrite('CIre_resultFinal.xlsx',resultFinal)
% 
% x = 1:1:39;
% CIre_intra = xlsread('CIre_intra.xlsx');
% CIre_anual = xlsread('CIre_anual.xlsx');
% CIre_resultFinal = xlsread('CIre_resultFinal.xlsx');
% 
% Fapar_intra = xlsread('Fapar_intra.xlsx');
% Fapar_anual = xlsread('Fapar_anual.xlsx');
% Fapar_resultFinal = xlsread('Fapar_resultFinal.xlsx');
% 
% figure;
% subplot(3,1,1),plotyy(x,CIre_intra,x,Fapar_intra)
% subplot(3,1,2),plotyy(x,CIre_anual,x,Fapar_anual)
% subplot(3,1,3),plotyy(x,CIre_resultFinal,x,Fapar_resultFinal)
% legend('CIre','FAPAR')

%%




