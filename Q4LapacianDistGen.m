function [ distribution ] = Q4LapacianDistGen( alpha, t )
%Q4LAPACIANDISTGEN Summary of this function goes here
%   Detailed explanation goes here

    y = rand(t,1);
    signs = 2 * ((rand(t, 1) < 0.5) - 0.5);
    distribution = -log(1-y)/alpha;
    distribution = distribution .* signs;
end

