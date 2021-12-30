function [z1,z2] = massa(t)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

% z1 = m(t)
% z2 = m'(t)
m = 15; % begynnelsemassa

if t >= 0 && t <= 10
    z1 = m - t;
    z2 = -1;
    
else
    z1 = 5;
    z2 = 0;
end


end

