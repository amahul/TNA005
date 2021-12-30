function [z] = vinkel(t)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

% z = ?(t)

% z = -pi/2;

if t >= 0 && t <= 1.25
    z = -pi/2;
elseif t > 1.25 && t <= 1.55
    z = 7*pi/6; 
elseif t > 1.55 && t <= 2.55
    z = 2*pi/3; 
elseif t > 2.55 && t <= 3.4
    z = pi/7; 
elseif t > 3.4 && t <= 3.9
    z = 11*pi/6;
elseif t > 3.9 && t <= 10
    z = 5*pi/3;
end

end

