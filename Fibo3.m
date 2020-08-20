function F = Fibo3(n)

% Fibonacci Numbers using Matrix Exponentiation
% Time Complexity:  O(log(n))
f0 = 0;
f1 = 1;

FM = [0, 1;1 1]^n*[f0; f1];

F = FM(1);