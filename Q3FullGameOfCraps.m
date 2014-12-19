function [ won ] = Q3FullGameOfCraps( DiceRollDistribution )
%Simulate a full game of craps

    %generate a 'cdf' of the given dice sum distribution
    DiceRollCdf = cumsum(DiceRollDistribution);
    
    %generate the first roll
    firstRoll = min(find((DiceRollCdf < rand(1)) == 0));
    
    switch firstRoll
        %roll of 7 or 11 results in a win
        case {7,11}
            won = 1;
        %roll of 2, 3, or 12 results in a loss
        case {2,3,12}
            won = 0;
        otherwise
            %all other values keep rolling until the same number or 7 gets
            %rolled
            won = Q3SecondRollWinning(DiceRollDistribution,firstRoll);
    end

end

