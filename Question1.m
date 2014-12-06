binomialDist = makedist('Binomial','N',100,'p',0.2);
x = random(binomialDist, 10000, 1);
t=0:1:100;
%axisLabels = axes;
%axisLables.Title.string = 'binomial RV pmf';
y = hist(x,t);
title('binomial RV pmf');
ylabel('number of samples');
xlabel('number of positive outcomes');

maxActualValue = find(y == max(y(:)))
z = pdf(binomialDist,t);
maxExpectedValue = find(z == max(z(:)))