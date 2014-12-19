N = 10000;

%generate distributions for 2 dice, them add up the results
dice1 = ceil(6 * rand(N,1));
dice2 = ceil(6 * rand(N,1));
diceSum = dice1 + dice2;

%plot values in a histogram
histogram(diceSum, 'Normalization', 'probability');
title('Sum of 2 die');
ylabel('probability');
xlabel('value of sum');

%calculate array P such that P(x) equals probability roll resulted in x
P = zeros(12,1);
for i = 1:12
    P(i) = sum(diceSum == i) / N;
end

% problem 3 a
ProbWinningOnFirstRoll = P(7) + P(11);
fprintf('Probability of winning on first roll: %f\n',ProbWinningOnFirstRoll);

% problem 3 b
wins = 0;
for i = 1:N
    wins = wins + Q3SecondRollWinning(P,5);
end
fprintf('Probability of winning having first rolled a 5: %f\n',wins/N);

% problem 3 c
wins = 0;
for i = 1:N
    wins = wins + Q3FullGameOfCraps(P);
end
fprintf('Probability of winning game: %f\n',wins/N);