%Create a binimial distribution with specified parameters
binomialDist = makedist('Binomial','N',100,'p',0.2);

%Generate values based on binomial distribution
x = random(binomialDist, 10000, 1);

%plot values in a histogram
histogram(x, 'Normalization', 'probability');
title('Binomial RV pmf - N = 100 p = 0.2');
ylabel('probability');
xlabel('value of k');

%compute the most occuring k value from the generated distribution
[N,edges,bin] = histcounts(x,'Normalization', 'probability');
z = find(N == max(N(:)));
fprintf('Maximum K value: %d\n', ceil(edges(z)));