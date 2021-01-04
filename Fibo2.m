function F = Fibo2(n)
%%
% Author: Mansour Torabi, 
% Contact: smtoraabi@ymail.com

%%
% Fibonacci using Dynamic Programming (DP) 
% DP: recursion + memoziation 

% Time Complexity   : O(n)
% Space             : O(n)

Memo = [];
MemoIdx = [];
F = Fibonacci(n);

    function f = Fibonacci(n)
        if any(n == MemoIdx)
            f = Memo(n); return;
        end
        if n <= 2
            f = 1;
            Memo(n) = f;
            MemoIdx = [MemoIdx, n];
        else
            f = Fibonacci(n-1) + Fibonacci(n-2);
            Memo(n) = f;
            MemoIdx = [MemoIdx, n];
        end
    end
end