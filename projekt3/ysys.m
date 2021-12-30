function [dy] = ysys(t,z)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
dy = [z(2)
    -z(1)-4*sin(3*t)];
end

