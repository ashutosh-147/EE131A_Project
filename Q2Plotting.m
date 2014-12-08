function [ avg, variance, pg1, pg2, pg3 ] = Q2Plotting( N, N_str, num )
%Q2PLOTING Summary of this function goes here
%   Detailed explanation goes here
    
    x = randn(N,1);
    t = min(x):0.1:max(x);
    figure(1 + 3 * num);
    h1 = hist(x,t);
    pmf = h1 / N;
    
    plot(t,pmf);
    title(strcat('Gaussian pdf - ', N_str, ' samples'));
    ylabel('Pdf values');
    xlabel('Value of Random variable X');
    
    figure(2 + 3 * num);
    cdf = cumsum(pmf);
    
    plot(t,cdf);
    title(strcat('Gaussian cdf - ', N_str, ' samples'));
    ylabel('Probablility of X < x');
    xlabel('Value of Random variable X');
    
    expected = makedist('Normal');

    figure(3 + 3 * num);
    plot(t, pmf, t, pdf(expected,t));
    
    avg = mean(x);
    variance = var(x);
    
    pg1 = sum(x > 1) / N;
    pg2 = sum(x > 2) / N;
    pg3 = sum(x > 3) / N;
end

