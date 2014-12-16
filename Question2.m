fprintf('Data for 10 values:\n\n');
[mean1, var1, p1g1, p1g2, p1g3] = Q2Plotting(10, '10', 0);

fprintf('\nData for 10^4 values:\n\n');
[mean4, var4, p4g1, p4g2, p4g3] = Q2Plotting(10^4, '10^4', 1);

fprintf('\nData for 10^7 values:\n\n');
[mean7, var7, p7g1, p7g2, p7g3] = Q2Plotting(10^7, '10^7', 2);