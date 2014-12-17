N = 10000;

%generate a Laplacian Distribution with alpha = 0.5
dist0_5 = Q4LapacianDistGen(0.5, N);

%plot the pdf
fig1 = figure(1);
histogram(dist0_5, 'Normalization', 'pdf', 'BinWidth', 0.2)
title('Laplacian distribution pdf - alpha = 0.5');
ylabel('Pdf values');
xlabel('Value of Random variable X');
saveas(fig1, 'Q4_figures/pdf_alpha_0_5', 'jpeg');

%plot the cdf
fig2 = figure(2);
histogram(dist0_5, 'Normalization', 'cdf', 'BinWidth', 0.2)
title('Laplacian distribution cdf - alpha = 0.5');
ylabel('Cdf values');
xlabel('Value of Random variable X');
saveas(fig2, 'Q4_figures/cdf_alpha_0_5', 'jpeg');

%generate a Laplacian Distribution with alpha = 2
dist2 = Q4LapacianDistGen(2, N);

%plot the pdf
fig3 = figure(3);
histogram(dist2, 'Normalization', 'pdf', 'BinWidth', 0.2)
title('Laplacian distribution pdf - alpha = 2');
ylabel('Pdf values');
xlabel('Value of Random variable X');
saveas(fig3, 'Q4_figures/pdf_alpha_2', 'jpeg');

%plot the cdf
fig4 = figure(4);
histogram(dist2, 'Normalization', 'cdf', 'BinWidth', 0.2)
title('Laplacian distribution cdf - alpha = 2');
ylabel('Cdf values');
xlabel('Value of Random variable X');
saveas(fig4, 'Q4_figures/cdf_alpha_2', 'jpeg');

%snr 0 dB -> sigma = 1 -> alpha = sqrt(2)

%0's and 1's are equiprobable, so we need to randomly distribute them in
%the generated sample
binomialDist = makedist('Binomial','N',N,'p',0.5);
numberOfOnes = random(binomialDist);

%generate the full N samples from part samples of 0's and 1's
ones = Q4LapacianDistGen(sqrt(2), numberOfOnes) + 2;
zeros = Q4LapacianDistGen(sqrt(2), N-numberOfOnes) - 2;
bits = cat(1, ones, zeros);

%calculate probability of the errors
e1 = sum(ones < 0) / numberOfOnes;
e0 = sum(zeros > 0) / (N-numberOfOnes);

fprintf('Probability of false zero: %f\n', e1);
fprintf('Probability of false one: %f\n', e0);