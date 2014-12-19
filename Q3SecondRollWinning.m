function [ won ] = Q3SecondRollWinning( DiceRollDistribution,  firstRollResult)
%Finishes a game of craps given the game continues past the first roll
    
    %generate a 'cdf' of the given dice sum distribution
    DiceRollCdf = cumsum(DiceRollDistribution);
    
    %keep rolling until game ends
    while true
        %take the inverse cdf of a uniform random number
        roll = min(find((DiceRollCdf < rand(1)) == 0));
        
        %a roll of 7 results in a loss
        if roll == 7
            won = 0;
            return
        end
        
        %a roll of the first sum results in a win
        if roll == firstRollResult
            won = 1;
            return
        end
    end
end

