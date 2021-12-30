function [dy] = analytisk(t,z)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
dy = (4*sin(3*t))/9-((z(1)*t^2)/2)-(t/3)+1;
end

