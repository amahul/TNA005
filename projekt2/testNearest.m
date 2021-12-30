function [F] = testNearest(trainDigits,testDigits, trainAns)

% F �r en matris inneh�llande alla fel. Varje rad �r ett fel d�r
% f�rsta v�rdet h�r till tr�ningsm�ngden och andra till testm�ngden

% variabel f�r att h�lla koll p� hur m�nga fel som hittas
% error = 0;


F = zeros(2007,2);
% loopa igenom varje siffra i testm�ngden
for i = 1:2007
 
    % tempor�r matris f�r att spara och j�mf�ra avst�nd mellan vektorer
    smallest = zeros(10,1);

    % loopa igenom varje siffra i tr�ningsm�ngden
    for j = 1:7291
        % varje siffra i tr�ningsm�ngden som vektor
        v = trainDigits(:,:,j);
        % varje siffra i testm�ngden som vektor
        u = testDigits(:,:,i);
        % d �r euklidiska avst�ndet mellan vektorerna u & v
        d = norm(u-v,2);
        % om d �r mindre �n tidigare avst�nd ers�tts smallest med detta
        smallest(j,:) = d;
        % spara avst�nd som smallest om det �r mindre �n tidigare
        
    end
    [~, index] = min(smallest);
    % spara klassificering till F
    
    F(i,1) = trainAns(index);
    F(i,2) = index;
  
end

end

