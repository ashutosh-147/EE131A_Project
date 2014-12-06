N = 10000;
dice1 = ceil(6 * rand(N,1));
dice2 = ceil(6 * rand(N,1));
diceSum = dice1 + dice2;

P = zeros(12,1);
for i = 1:12
    P(i) = sum(diceSum == i) / N;
end

% problem 3 a
ProbWinningOnFirstRoll = P(7) + P(11)

% problem 3 b
% 2/5 chance of winning, 3/5 chance of losing
ProbWinningHavingRolled5 = P(5) / (P(5) + P(7))

% problem 3 c
ProbSecondRoll = P(4) + P(5) + P(6) + P(8) + P(9) + P(10);
ProbWinSecondRoll(1) = P(4)^2 / (P(4) + P(7));
ProbWinSecondRoll(2) = P(5)^2 / (P(5) + P(7));
ProbWinSecondRoll(3) = P(6)^2 / (P(6) + P(7));
ProbWinSecondRoll(4) = P(8)^2 / (P(8) + P(7));
ProbWinSecondRoll(5) = P(9)^2 / (P(9) + P(7));
ProbWinSecondRoll(6) = P(10)^2 / (P(10) + P(7));
ProbWinning = ProbWinningOnFirstRoll + ProbSecondRoll * (sum(ProbWinSecondRoll))