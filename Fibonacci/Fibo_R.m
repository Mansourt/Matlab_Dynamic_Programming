function f = Fibo_R(n)
%%
% Author: Mansour Torabi, 
% Contact: smtoraabi@ymail.com

%%

% Fibonacci using Recursive Solution

% Time Complexity: O(2^n)
% Space          : O(2^n) , stack calls.

if n <= 2
    f = 1;
else
    f = Fibo_R(n-1) + Fibo_R(n-2);
end