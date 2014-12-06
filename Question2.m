[mean1, var1, p1g1, p1g2, p1g3] = Q2Plotting(10, '10', 0);
[mean4, var4, p4g1, p4g2, p4g3] = Q2Plotting(10^4, '10^4', 1);
[mean7, var7, p7g1, p7g2, p7g3] = Q2Plotting(10^7, '10^7', 2);

% x1 = randn(10,1);
% t1 = min(x1):0.1:max(x1);
% figure(1);
% h1 = hist(x1,t1);
% pmf1 = h1 / 10;
% plot(t1,pmf1);
% title('Gaussian pdf - 10 samples');
% ylabel('Pdf values');
% xlabel('Value of Random variable X');
% figure(2);
% cdf1 = cumsum(pmf1);
% plot(t1,cdf1);
% title('Gaussian cdf - 10 samples');
% ylabel('Probablility of X < x');
% xlabel('Value of Random variable X');
% mean1 = mean(x1)
% var1 = var(x1)
% 
% x4 = randn(10^4,1);
% t4 = min(x4):0.1:max(x4);
% figure(3);
% h4 = hist(x4,t4);
% pmf4 = h4 / 10^4;
% plot(t4,pmf4);
% title('Gaussian pdf - 10^4 samples');
% ylabel('Pdf values');
% xlabel('Value of Random variable X');
% figure(4);
% cdf4 = cumsum(pmf4);
% plot(t4,cdf4);
% title('Gaussian cdf - 10^4 samples');
% ylabel('Probablility of X < x');
% xlabel('Value of Random variable X');
% mean4 = mean(x4)
% var4 = var(x4)
% 
% x7 = randn(10^7,1);
% t7 = min(x7):0.1:max(x7);
% figure(5);
% h7 = hist(x7,t7);
% pmf7 = h7 / 10^7;
% plot(t7,pmf7);
% title('Gaussian pdf - 10^7 samples');
% ylabel('Pdf values');
% xlabel('Value of Random variable X');
% figure(6);
% cdf7 = cumsum(pmf7);
% plot(t7,cdf7);
% title('Gaussian cdf - 10^7 samples');
% ylabel('Probablility of X < x');
% xlabel('Value of Random variable X');
% mean7 = mean(x7)
% var7 = var(x7)