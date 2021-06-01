function [ x ] = gen( a,b )
%  lambda = 1/l;
%  x=-1/(lambda)*log(rand(1,val));
 
 x = ceil((b - a) * rand + a);
end


