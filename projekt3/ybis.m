function [dz] = ybis(t,z)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

% ddy = y''
c = 0.05; % kg/m : konstant för luftmotstånd
g = 9.81; % m/s^2 : tyngdaccelerationen
k = 1200; % m/s : masspartiklarnas konstanta fart från motorn

[m1, m2] = massa(t); % m1 = m(t); m2 = m'(t);
% Ux & Uy är kopplade till raketens styrning
Ux = k*cos(vinkel(t));
Uy = k*sin(vinkel(t));
% z1 = x, z2 = x', z3 = y, z4 = y'

% ddx = (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(2)+(m2/m1)*Ux; % x''
% ddy = (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(4)+(m2/m1)*Uy-g; % y''

% Tillämpning av Newtons lagar för att styra raketen
dz = [z(2)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(2)+(m2/m1)*Ux
    z(4)
    (-c/m1)*sqrt(z(2)^2+z(4)^2)*z(4)+(m2/m1)*Uy-g];

% ger tillbaka en 4x1 matris

end

