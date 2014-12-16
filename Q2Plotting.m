function [ avg, variance, pg1, pg2, pg3 ] = Q2Plotting( N, N_str, num )
%   Plots the pdf and cdf of a generated Gaussian distribution using 'N'
%   samples
    
    %generate the sample distribution
    x = randn(N,1);
    t = min(x):0.1:max(x);
    
    %plot the pdf of the generated gaussian distribution
    fig1 = figure(1 + 3 * num);
    histogram(x, 'Normalization', 'pdf', 'BinWidth', 0.2)
    title(strcat('Gaussian pdf - ', N_str, ' samples'));
    ylabel('Pdf values');
    xlabel('Value of Random variable X');
    saveas(fig1, strcat('Q2_figures/',N_str,'_fig1'), 'jpeg');
    
    %plot the cdf of the generated gaussian distribution
    fig2 = figure(2 + 3 * num);
    histogram(x, 'Normalization', 'cdf', 'BinWidth', 0.2)
    title(strcat('Gaussian cdf - ', N_str, ' samples'));
    ylabel('Probablility of X < x');
    xlabel('Value of Random variable X');
    saveas(fig2, strcat('Q2_figures/',N_str,'_fig2'), 'jpeg');

    %plot the expected gaussian curve over the generated pdf
    fig3 = figure(3 + 3 * num);
    histogram(x, 'Normalization', 'pdf', 'BinWidth', 0.2)
    hold on
    expected = makedist('Normal');
    plot(t, pdf(expected,t));
    title(strcat('Gaussian pdf overlayed with expected results - ', N_str, ' samples'));
    ylabel('Pdf values');
    xlabel('Value of Random variable X');
    hold off
    saveas(fig3, strcat('Q2_figures/',N_str,'_fig3'), 'jpeg');
    
    avg = mean(x);
    variance = var(x);
    
    fprintf('Average of distribution: %f\n', avg);
    fprintf('Variance of distribution: %f\n', variance);
    
    pg1 = sum(x > 1) / N;
    pg2 = sum(x > 2) / N;
    pg3 = sum(x > 3) / N;
    
    fprintf('Q(1) = %f\n', pg1);
    fprintf('Q(2) = %f\n', pg2);
    fprintf('Q(3) = %f\n', pg3);
end

