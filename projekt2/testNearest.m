function [F] = testNearest(trainDigits,testDigits, trainAns)

% F är en matris innehållande alla fel. Varje rad är ett fel där
% första värdet hör till träningsmängden och andra till testmängden

% variabel för att hålla koll på hur många fel som hittas
% error = 0;


F = zeros(2007,2);
% loopa igenom varje siffra i testmängden
for i = 1:2007
 
    % temporär matris för att spara och jämföra avstånd mellan vektorer
    smallest = zeros(10,1);

    % loopa igenom varje siffra i träningsmängden
    for j = 1:7291
        % varje siffra i träningsmängden som vektor
        v = trainDigits(:,:,j);
        % varje siffra i testmängden som vektor
        u = testDigits(:,:,i);
        % d är euklidiska avståndet mellan vektorerna u & v
        d = norm(u-v,2);
        % om d är mindre än tidigare avstånd ersätts smallest med detta
        smallest(j,:) = d;
        % spara avstånd som smallest om det är mindre än tidigare
        
    end
    [~, index] = min(smallest);
    % spara klassificering till F
    
    F(i,1) = trainAns(index);
    F(i,2) = index;
  
end

end

