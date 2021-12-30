function [Y] = trainCentroid(B, C)
% Tr�ningsfas av centroidmetod
% Funktionen returnerar en matris best�ende av 10 medelsiffror

% B = trainDigits
% C = trainAns

% skapa en tempor�r matris d�r varje av samma siffra sparas f�r att kunna
% dra ett medelv�rde
X = zeros(256,1);
% count h�ller reda p� hur m�nga av samma siffra som finns i
% tr�ningsm�ngden, allts� de som l�ggs till i X
count = 0;
Y = zeros(256,10);

for j = 1:10
    % loopa igenom varje siffra i tr�ningsm�ngden
    for i = 1:7291
        % kolla vilken siffra de st�mmer �verens med i facit
        % skapa en medelsiffra f�r varje siffra, allts� 0-9
        % j-1 eftersom 0 sparas p� plats 1 i matrisen
        if C(i) == j-1            
            % increase third dimension index for saving data
            count = count + 1;
            % add number as a 16x16 matrix to X
            X(:,count) = B(:,i);                       
        end    
    end
    % Ber�kna medelv�rdet av B i tredje dimensionen
    M = mean(X,2);
    % run function train of X, save return value to Y
    % Y is the matrix consisting of every avarage number, hence the size of 10 
    Y(:,j) = M;
    % clear matrix X for next number
    X = zeros(256,1);
    count = 0;    
end