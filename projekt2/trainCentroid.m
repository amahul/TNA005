function [Y] = trainCentroid(B, C)
% Träningsfas av centroidmetod
% Funktionen returnerar en matris bestående av 10 medelsiffror

% B = trainDigits
% C = trainAns

% skapa en temporär matris där varje av samma siffra sparas för att kunna
% dra ett medelvärde
X = zeros(256,1);
% count håller reda på hur många av samma siffra som finns i
% träningsmängden, alltså de som läggs till i X
count = 0;
Y = zeros(256,10);

for j = 1:10
    % loopa igenom varje siffra i träningsmängden
    for i = 1:7291
        % kolla vilken siffra de stämmer överens med i facit
        % skapa en medelsiffra för varje siffra, alltså 0-9
        % j-1 eftersom 0 sparas på plats 1 i matrisen
        if C(i) == j-1            
            % increase third dimension index for saving data
            count = count + 1;
            % add number as a 16x16 matrix to X
            X(:,count) = B(:,i);                       
        end    
    end
    % Beräkna medelvärdet av B i tredje dimensionen
    M = mean(X,2);
    % run function train of X, save return value to Y
    % Y is the matrix consisting of every avarage number, hence the size of 10 
    Y(:,j) = M;
    % clear matrix X for next number
    X = zeros(256,1);
    count = 0;    
end