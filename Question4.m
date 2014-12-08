N = 10000;

dist0_5 = Q4LapacianDistGen(0.5, N);

fig1 = figure(1);
histogram(dist0_5, 'Normalization', 'pdf', 'BinWidth', 0.2)
title('Laplacian distribution pdf - alpha = 0.5');
ylabel('Pdf values');
xlabel('Value of Random variable X');
%saveas(fig1, 'Q4_figures/pdf_alpha_0_5', 'jpeg');

fig2 = figure(2);
histogram(dist0_5, 'Normalization', 'cdf', 'BinWidth', 0.2)
title('Laplacian distribution cdf - alpha = 0.5');
ylabel('Cdf values');
xlabel('Value of Random variable X');
%saveas(fig2, 'Q4_figures/cdf_alpha_0_5', 'jpeg');

dist2 = Q4LapacianDistGen(2, N);

fig3 = figure(3);
histogram(dist2, 'Normalization', 'pdf', 'BinWidth', 0.2)
title('Laplacian distribution pdf - alpha = 2');
ylabel('Pdf values');
xlabel('Value of Random variable X');
%saveas(fig3, 'Q4_figures/pdf_alpha_2', 'jpeg');

fig4 = figure(4);
histogram(dist2, 'Normalization', 'cdf', 'BinWidth', 0.2)
title('Laplacian distribution cdf - alpha = 2');
ylabel('Cdf values');
xlabel('Value of Random variable X');
%saveas(fig4, 'Q4_figures/cdf_alpha_2', 'jpeg');

%snr 0 dB -> sigma = 1 -> alpha = sqrt(2)
ones = Q4LapacianDistGen(sqrt(2), N/2) + 2;
zeros = Q4LapacianDistGen(sqrt(2), N/2) - 2;
bits = cat(1, ones, zeros);

e1 = sum(ones < 0) / (N/2)
e0 = sum(zeros > 0) / (N/2)