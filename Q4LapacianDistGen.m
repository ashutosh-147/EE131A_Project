function [ distribution ] = Q4LapacianDistGen( alpha, t )
%Q4LAPACIANDISTGEN generates a Laplacian distribution of size t based on the
%specified alpha
    
    %generate uniform random values
    y = rand(t,1);
    
    %since this cdf only gives positive values, randomly assign values to
    %negative
    signs = 2 * ((rand(t, 1) < 0.5) - 0.5);
    
    %apply inverse cdf to uniform random values
    distribution = -log(1-y)/alpha;
    
    %apply correct signs to the distribution
    distribution = distribution .* signs;
end

