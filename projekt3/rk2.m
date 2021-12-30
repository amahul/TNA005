function [t,y] = rk2(fun,a,y0,n)
% UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
% "runka dunka"-Cindy

h = (a(2)-a(1))/n;
y(1,:)=y0
t(1)=a(1);

for k = 1:n
    
    k1 = h*fun(t(k),y(k,:))';
    k2 = h*fun(t(k)+h/2,y(k,:)+k1/2)';   
    y(k+1,:)= y(k,:) + (k1 + k2)/2;
       
    t(k+1)=a(1)+h*k; % globalt trunkeringsfel
    
    
end


end

