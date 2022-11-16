% % a = xlsread('test_sg.xlsx',1,'C2:AO2');
% a = xlsread('sg.xlsx');
% Nstd = 0.2;
% NR = 75;
% MaxIter = 5000;
% imf = ceemdan(a,0.2,75,5000);
% resultFinal = imf(end,:)+imf(end-1,:)+imf(end-2,:);
% % figure;plot(resultFinal)
% % hold on
% subplot(7,1,1),plot(a)
% subplot(7,1,2),plot(imf(1,:))
% subplot(7,1,3),plot(imf(2,:))
% subplot(7,1,4),plot(imf(3,:))
% subplot(7,1,5),plot(imf(4,:))
% subplot(7,1,6),plot(imf(5,:))
% subplot(7,1,7),plot(imf(6,:))

% tic
% % % A = xlsread('clip_dat.xlsx');
% % % Nstd = 0.2;
% % % NR = 75;
% % % MaxIter = 5000;
% B = A(350001:502067,3:41);
% [a,b] = size(B);
% list1 = zeros(a,39);
% toc
% 
% tic
% parfor i = 1:a
%     imf = ceemdan(B(i,:),0.2,75,5000);
% %     resultFinal = imf(end,:)+imf(end-1,:)+imf(end-2,:);
%     resultFinal = imf(end,:)+imf(end-1,:);
%     list1(i,:) = resultFinal;
% end;
% toc



% tic
% A2 = xlsread('Fapar_clip_dat.xlsx');
B2 = A2(108,3:41);
imf2 = ceemdan(B2,0.2,75,5000);
inter = imf2(1,:)+imf2(2,:);
anual = imf2(3,:);
resultFinal = imf2(end,:)+imf2(end-1,:)+imf2(end-2,:);
% subplot(8,1,1),plot(B)
subplot(6,1,1),plot(imf2(1,:))
subplot(6,1,2),plot(imf2(2,:))
subplot(6,1,3),plot(imf2(3,:))
subplot(6,1,4),plot(imf2(4,:))
subplot(6,1,5),plot(imf2(5,:))
subplot(6,1,6),plot(imf2(6,:))
% subplot(8,1,8),plot(resultFinal) 


% intra = xlsread('intra.xlsx');
% anual = xlsread('anual.xlsx');
% resultFinal = xlsread('resultFinal.xlsx');
% 
% subplot(3,1,1),plot(intra)
% subplot(3,1,2),plot(anual)
% subplot(3,1,3),plot(resultFinal)

% xlswrite('intra.xlsx',inter)
% xlswrite('anual.xlsx',anual)
% xlswrite('resultFinal.xlsx',resultFinal)

% figure;plot(resultFinal)

