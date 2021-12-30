function [F] = testCentroid(numbers,testDigits)
% F är en matris innehållande 2007 siffror, ett facit för centroidmetoden
% denna jämförs sedan med testAns, dessa borde vara liknande

% centroidmetoden testfas

F = zeros(2007,1);
% loopa igenom varje siffra i testmängden
for k = 1:2007
    % temporär variabel för att spara och jämföra avstånd mellan vektorer
    smallest = zeros(10,1);
    % jämför med varje medelsiffra: 0-9
    for j = 1:10
        % v är varje medelvektor ur träningsmängden
        v = numbers(:,j);  
        % u är varje vektor i testmängden
        u = testDigits(:,k);
        % längden av differensvektorn
        d = norm(u-v,2);
        smallest(j) = d;
        
    end
    % spara index för siffra med minsta avståndet
    [~, index] = min(smallest);
    % spara varje klassificering till matris F    
    F(k) = index-1;
end

end
