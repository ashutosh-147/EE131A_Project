function [  ] = Q5Plotting( n, N, figNum )
%Q5PLOTTING Summary of this function goes here
%   Detailed explanation goes here
    
    data = sum(1+5*rand(n,N));
    x = data.';
    t = min(x):0.1:max(x);
    
    fig1 = figure(1+3*figNum);
    histogram(x, 'Normalization', 'pdf', 'BinWidth', 0.2);
    title(strcat('S_n pdf - n = ',num2str(n)));
    ylabel('Pdf values');
    xlabel('Value of Random variable S_n');
    saveas(fig1, strcat('Q5_figures/fig1_n_', num2str(n)), 'jpeg');

    fig2 = figure(2+3*figNum);
    histogram(x, 'Normalization', 'cdf', 'BinWidth', 0.2);
    title(strcat('S_n cdf - n = ',num2str(n)));
    ylabel('Cdf values');
    xlabel('Value of Random variable S_n');
    saveas(fig2, strcat('Q5_figures/fig2_n_', num2str(n)), 'jpeg');
    
    fig3 = figure(3+3*figNum);
    histogram(x, 'Normalization', 'pdf', 'BinWidth', 0.2)
    hold on
    expected = makedist('Normal', 'mu', 3.5*n,'sigma',sqrt(n*25/12));
    plot(t, pdf(expected,t),'r');
    title(strcat('Gaussian pdf overlayed with expected results - n = ', num2str(n)));
    ylabel('Pdf values');
    xlabel('Value of Random variable S_n');
    hold off
    saveas(fig3, strcat('Q5_figures/fig3_n_', num2str(n)), 'jpeg');
    
end

