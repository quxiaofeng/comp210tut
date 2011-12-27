function [ offset ] = selftry( m1,m2 )
% calculate the m1 and m2 of the bezier curve
%   Author Qu Xiaofeng
%   Created 2011-11-23
%   Example:
%   result=[100000,100000,100000];
%   for i=-5:0.01:5;
%       for j=-5.0001:0.01:5;
%           tempResult = selftry(i,j);
%           if tempResult < result(3)
%           result=[i,j,selftry(i,j)];
%       end;
%   end;
%   result
  
  
if abs(m2-m1)<eps
    error('m2 and m1 should not be the same.');
end

p1=[0.5,2];
p2=[1,1];

x = (m2*p2(1)-m1*p1(1)-(p2(2)-p1(2)))/(m2-m1);
error1 = m2*x*x+(p2(2)-m2*p2(1))*x-1;
error2 = m1*x*x+(p1(2)-m1*p1(1))*x-1;
offset = min([abs(error1),abs(error2)]);
end

