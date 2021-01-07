function F = Fibo_DP(n)
%%
% Author: Mansour Torabi, 
% Contact: smtoraabi@ymail.com

%%
% Fibonacci using Dynamic Programming (DP) 
% DP: recursion + memoziation 

% Time Complexity   : O(n)
% Space             : O(n)

Memo = zeros(1,n)*nan;

F = Fibonacci(n);

    function f = Fibonacci(n)
        if ~isnan(Memo(n))
            f = Memo(n); return;
        end
        if n <= 2
            f = 1; Memo(n) = f; 
        else
            f = Fibonacci(n-1) + Fibonacci(n-2);
            Memo(n) = f; 
        end
    end
end