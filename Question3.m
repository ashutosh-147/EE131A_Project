N = 10000;

%generate distributions for 2 dice, them add up the results
dice1 = ceil(6 * rand(N,1));
dice2 = ceil(6 * rand(N,1));
diceSum = dice1 + dice2;

%calculate array P such that P(x) equals probability roll resulted in x
P = zeros(12,1);
for i = 1:12
    P(i) = sum(diceSum == i) / N;
end

% problem 3 a
ProbWinningOnFirstRoll = P(7) + P(11);
fprintf('Probability of winning on first roll: %f\n',ProbWinningOnFirstRoll);

% problem 3 b
ProbWinningHavingRolled5 = P(5) / (P(5) + P(7));
fprintf('Probability of winning having first rolled a 5: %f\n',ProbWinningHavingRolled5);

% problem 3 c
ProbWinSecondRoll(1) = P(4)^2 / (P(4) + P(7));
ProbWinSecondRoll(2) = P(5)^2 / (P(5) + P(7));
ProbWinSecondRoll(3) = P(6)^2 / (P(6) + P(7));
ProbWinSecondRoll(4) = P(8)^2 / (P(8) + P(7));
ProbWinSecondRoll(5) = P(9)^2 / (P(9) + P(7));
ProbWinSecondRoll(6) = P(10)^2 / (P(10) + P(7));
ProbWinning = ProbWinningOnFirstRoll + sum(ProbWinSecondRoll);
fprintf('Probability of winning game: %f\n',ProbWinning);