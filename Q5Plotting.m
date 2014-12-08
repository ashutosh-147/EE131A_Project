function [  ] = Q5Plotting( n, N, plot )
%Q5PLOTTING Summary of this function goes here
%   Detailed explanation goes here
    
    figure(1+2*plot)
    histogram(sum(1+6*rand(n,N)), 'Normalization', 'pdf', 'BinWidth', 0.2);

    figure(2+2*plot)
    histogram(sum(1+6*rand(n,N)), 'Normalization', 'cdf', 'BinWidth', 0.2);
end

