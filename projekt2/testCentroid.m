function [F] = testCentroid(numbers,testDigits)
% F �r en matris inneh�llande 2007 siffror, ett facit f�r centroidmetoden
% denna j�mf�rs sedan med testAns, dessa borde vara liknande

% centroidmetoden testfas

F = zeros(2007,1);
% loopa igenom varje siffra i testm�ngden
for k = 1:2007
    % tempor�r variabel f�r att spara och j�mf�ra avst�nd mellan vektorer
    smallest = zeros(10,1);
    % j�mf�r med varje medelsiffra: 0-9
    for j = 1:10
        % v �r varje medelvektor ur tr�ningsm�ngden
        v = numbers(:,j);  
        % u �r varje vektor i testm�ngden
        u = testDigits(:,k);
        % l�ngden av differensvektorn
        d = norm(u-v,2);
        smallest(j) = d;
        
    end
    % spara index f�r siffra med minsta avst�ndet
    [~, index] = min(smallest);
    % spara varje klassificering till matris F    
    F(k) = index-1;
end

end
